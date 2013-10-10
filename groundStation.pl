#!/usr/bin/perl

use lib '/home/root/hope/modules/lib/perl/site_perl/5.14.2';

# use strict;
use warnings;
use IO::Socket;
use threads;
use Thread::Queue;
use Device::SerialPort qw( :PARAM :STAT 0.07 );
use Device::SerialPort::Xmodem;
use Device::Modem;
use Device::Modem::Protocol::Xmodem;
use DBI;
use POSIX;





#get the port to bind to or default to 8000 - which remote.pl connects to
my $tcpPort = 8000;

# Stats var
my $radio_stats_count = 0;
my $i = 1;



my($day, $month, $year) = (localtime)[3,4,5];
$month = sprintf '%02d', $month+1;
$day   = sprintf '%02d', $day;
my $rrmmdd =  $year+1900 . $month . $day;

# gps_file
$gps_file = "out/gps_data" . $rrmmdd . ".txt";

# measurements_file
$measurements_file = "out/measurements.txt";

# Cutdown file
$cutdown_req_file = "/home/root/hope/run/cutdown_requested.txt";
$cutdown_init_file = "/home/root/hope/run/cutdown_initiated.txt";
`rm -f $cutdown_req_file`;
`rm -f $cutdown_init_file`;
$cutdown_initiated = 0;

# Defaults 
$mode = 0;

# Sensor constants
$voltage_multipler = 5.7 * 3.3 /1024;

$bb_voltage_multipler = 11 * 1.8/1800;

# Parameters
$param1 = $ARGV[0];

if ($param1) 
{
  if ($param1 =~ /^T$/) 
    {
     $mode = 1;
    }
  elsif ($param1 =~ /^N$/)
    {
     $mode = 2;
    }
  elsif ($param1 =~ /^C$/)
    {
     $mode = 3;
    }
  else 
    {
     print "If providing parameter, it must only be T (fewer pics) or N (No pics) of C (Initiate cutdown)\n";
     exit;
    }
}

print "HOPE Client started\n";

$DEBUG = 1;
my $filename = "";
$pic_count = 0;
$pic_dl_freq = 5; # How often to download a pic.i.e. download every 'pic_dl_freq'th pic
my $serial_port = "/dev/ttyO1";
my $serial_speed = 57600;

my $port=Device::SerialPort->new($serial_port);
my $STALL_DEFAULT=10; # how many seconds to wait for new input
my $timeout=$STALL_DEFAULT;


# Try initialising Serial Port
eval {
  $port->baudrate($serial_speed);
  $port->parity("none");
  $port->databits(8);
  $port->stopbits(1); 
  };
if (my $e = $@)
  {
   print("Issues initialising Serial modem. Check It is connected.\n");
   print("Error: " . $e . "\n");
   exit;
  }


print "Connected to Serial Port...\n";
print "Listening for HOPE...\n";
if ($mode == 1) { print " -- TEST MODE --\n"; }
if ($mode == 2) { print " -- NORMAL MODE --\n"; }
if ($mode == 3) { print " -- WILL INITIATE CUTDOWN MODE AT NEXT POLL --\n"; }


$port->are_match("\r\n");

my $taking_picture = 0;


monitor_modem();



sub monitor_modem()
{

while (1 == 1)
{

          my $habline = "";
          until ("" ne $habline) {
            $habline = $port->lookfor;       # poll until data ready
            die "Aborted without match\n" unless (defined $habline);
	    sleep 1;                          # polling sample time

            # Get BBB voltage supply reading and put into table
	    
            get_bb_voltage();
          }


    $str = "DECODING Line: '" . $habline . "'\n" if $DEBUG;
    print $str if $DEBUG;

    $result = decode_line($habline);
    
    if (length($result) > 0)
    {
      $str = $result;
      print "LOGGING MESSAGE: $str \n" if $DEBUG;
      log_messages($str);

      # If image not taken properly...E5 error...then make sure we don't
      # try to download it.
      $image_error = 0;
      if  ($habline =~ /^E5$/) {
	      $image_error = 1;
      }
    
      if ($result =~ /Menu/)
      {
        # We don't want to d/l EACH time we are offered...just occasionly
	if ($mode == 3 || (-f $cutdown_req_file && $cutdown_initiated == 0))
	{
	  $cutdown_initiated = 1;
	  `touch $cutdown_init_file`;
          $count_out = $port->write("4\r\n");
          $str = "Sent request intiate cutdown\n";
          log_messages($str);
  
          my $gotit = "";
          until ("" ne $gotit) {
            $gotit = $port->lookfor;       # poll until data ready
            die "Aborted without match\n" unless (defined $gotit);
            sleep 1;                          # polling sample time
          }
          if ($gotit =~ /B/)
          {
            $str = "HOPE cutdown initiated!\n";
            log_messages($str);
          }
	}
        elsif ($mode == 0)
        {

          if ($pic_count % $pic_dl_freq == 0 && $image_error == 0)
          {
            $str = "Sending request to download image\n";
            log_messages($str);
	    print $str if $DEBUG;
            $port->lookclear;
            $count_out = $port->write("2\r\n");
            warn "write failed\n"   unless ($count_out);
            warn "write incomplete\n" if ($count_out != length("2\r\n") );

            my $gotit = "";
            until ("" ne $gotit) {
              $gotit = $port->lookfor;       # poll until data ready
              die "Aborted without match\n" unless (defined $gotit);
              sleep 1;                          # polling sample time
            }


            $v_file = $rrmmdd . "_" . $filename . '_image' . $i . '.jpg';
            if ($gotit =~ /X/) 
            {
              $str = "Starting download in 5 seconds to $v_file....\n";
              log_messages($str);
	      print $str if $DEBUG;

              sleep 5;
              $str = "Download started.\n";
              log_messages($str);
	      print $str if $DEBUG;

              my $receive = Device::SerialPort::Xmodem::Receive->new(
                    port     => $port,
                    filename => 'out/images/' . $v_file,
                    DEBUG    => 1
              );

              $receive->start();
              $i++;
              $str = "Finished Transmission\n";
              log_messages($str);
	      print $str if $DEBUG;
            } 
            elsif ($gotit =~ /W/)
            {
              $str = "Timeout waiting for response from ground station.\n";
              log_messages($str);
	      print $str if $DEBUG;
            }
            elsif ($gotit =~ /^Q:(.*)$/)
            {
              $str = "Did not recognise response from station. Response was: " . $1 . "\n";
              log_messages($str);
	      print $str if $DEBUG;
            }
            else
            {
              $str = "HAB never started sending....perhaps it didnt get request to send image?\n";
              log_messages($str);
	      print $str if $DEBUG;
            }
          }
          else
          {
            $str = "Skipping d/l of image this time.\n";
            log_messages($str);
	    print $str if $DEBUG;
          }

	  # If no error...then imcrement count.
	  if ($image_error == 0) {
          	$pic_count++;
	  }
        }
        elsif ($mode == 1)
        {
          $count_out = $port->write("1\r\n");
          $str = "Sent request put in test mode\n";
          log_messages($str);
 
          my $gotit = "";
          until ("" ne $gotit) {
            $gotit = $port->lookfor;       # poll until data ready
            die "Aborted without match\n" unless (defined $gotit);
            sleep 1;                          # polling sample time
          }

          if ($gotit =~ /T/) 
          {
            $str = "HOPE is now in Test mode\n";
            log_messages($str);
          }
        }
        elsif ($mode == 2)
        {
          $count_out = $port->write("3\r\n");
          $str = "Sent request put in normal mode\n";
          log_messages($str);
  
          my $gotit = "";
          until ("" ne $gotit) {
            $gotit = $port->lookfor;       # poll until data ready
            die "Aborted without match\n" unless (defined $gotit);
            sleep 1;                          # polling sample time
          }

          if ($gotit =~ /N/)
          {
            $str = "HOPE is now in Normal mode\n";
            log_messages($str);
          }
        }
      }
    }

}
}

exit;



sub decode_line()
{

  ($p_line) = @_;

  # See what data we have and respond to it
  if ($p_line =~ /U/)
  {
    $v_result = "Menu";
  } elsif ($p_line =~ /^H:([0-9]+)$/)
  {
    $v_result = "Heartbeat Count: " . $1;

    # We have 3 second delay after getting heartbeat.... so we quickly get
    # stats on state of lik
    # Every 6 iterations...get stats
    print "Iterations = $radio_stats_count \n";
    if ($radio_stats_count > 4) {
	    get_radio_stats();
        $radio_stats_count = 0;
    } else {
        ++$radio_stats_count;
    }

  } elsif ($p_line =~ /^L\/R(.*$)/)
  {
    $v_result = "Radio Signal: L/R: " . $1;
  } elsif ($p_line =~ /^S$/)
  {
    $v_result = "Powering up HOPE";
  } elsif ($p_line =~ /^G$/)
  {
    $v_result = "HOPE powered up";
  } elsif ($p_line =~ m/^M(.+),(.+),(.+),(.+)$/)
  {
    $voltage = $voltage_multipler * $4;
    $voltage = sprintf("%.2f", $voltage);
    $v_result = "Air Pressure: $1\nExternal Temp: $2, Internal Temp: $3, Voltage: " . $voltage . "\n";
    $now_string = localtime;
    open(my $meas_fh, '>>' . $measurements_file) or die "issue opening measurements file";
    print $meas_fh "T:" . $now_string . ",P:" . $1 . ",ET:" . $2 . ",IT:" . $3 . ",V:" . $voltage . "\n";
    close($meas_fh);

    insert_measurements($voltage, $1, $3, $2);

  } elsif ($p_line =~ m/^La:(.+),Lo:(.+),A:(.+),D:(.*),T:(.+)$/)
  {
    $v_lat = $1/100000;
    $v_long = $2/100000;
    $v_alt = $3;
    $v_gps_date = $4;
    $v_gps_time = $5;
    $v_result = "GPS\nLatitude: " . $v_lat . "\nLongitude: " . $v_long . "\nAltitude: " . $v_alt . "\nDate: " . $v_gps_date . "\nTime: " . $v_gps_time . "\n";
    $v_line = $4 . "," . $5 . "," . $v_lat . "," . $v_long . "," . $3 . "\n";
    open(my $gps_fh, '>>' . $gps_file) or die "issue opening gps file";
    print $gps_fh $v_line;
    close($gps_fh);

    insert_gps($v_lat, $v_long, $v_alt, $v_gps_date, $v_gps_time);

    # Generate the kml file each time we have more gps data
    create_kml($gps_file);

  } elsif ($p_line =~ /^C$/)
  {
    $v_result = "Taking picture";
  } elsif ($p_line =~ /^E0$/)
  {
    $v_result = "Error initialising SD";
  } elsif ($p_line =~ /^E1$/)
  {
    $v_result = "Error initialising SD";
  } elsif ($p_line =~ /^E2$/)
  {
    $v_result = "Error creating image file on SD";
  } elsif ($p_line =~ /^E3$/)
  {
    $v_result = "Error opening GPS file on SD";
  } elsif ($p_line =~ /^E4$/)
  {
    $v_result = "Error opening file for pressure/temp measurements on SD";
  } elsif ($p_line =~ /^Q:(.*)$/)
  {
    $v_result = "Did not recognise response from station. Response: " . $1;
  } elsif ($p_line =~ /^W$/)
  {
    $v_result = "Timeout while waiting for user menu option to be made.";
  } elsif ($p_line =~ /^E5$/)
  {
    $v_result = "Error/timeout taking picture.";
  } elsif ($p_line =~ /^D$/)
  {
    $v_result = "Finished taking picture";
  } elsif ($p_line =~ /^B$/)
  {
    $v_result = "Reached Max Altitude - Cutdown initiated";
  } elsif ($p_line =~ /^Y$/)
  {
    $v_result = "Finished sending picture";
  } elsif ($p_line =~ /^Z$/)
  {
    $v_result = "Failed to send picture.";
  } elsif ($p_line =~ m/^F:(.*)$/)
  {
    $filename = $1;
    $v_result = "File $filename being saved to SD";
  } elsif ($p_line =~ m/^T:(.*)$/)
  {
    $v_seconds = $1/1000;
    $v_minutes = $v_seconds/60;
    $v_hours   = $v_minutes/60;
    $v_hours_rounded = floor($v_hours);
    $v_minutes_rounded = floor(60 * ($v_hours - $v_hours_rounded));
    $v_seconds_rounded = floor($v_seconds - (3600 * $v_hours + 60 * $v_minutes_rounded));
    # $v_result = "Time in milliseconds since power turned on: $1";
    $v_result = "Time since power turned on is " . $v_hours_rounded . "hours and " . $v_minutes_rounded . "minutes and " . $v_seconds_rounded . "seconds.\n";
  } elsif ($p_line =~ /^\.$/)
  {
    if ($taking_picture == 1)
    {
      return "";
    }
    else
    {
      $taking_picture = 1;
      return "Saving pic.";
    }
  }
  else
  {
   $v_result = "Cannot Decode: " . $p_line . "\n";
  }

 return $v_result;
}



sub create_kml()
{
local ($gps_file) = @_;

open (my $kml_file, ">out/hab_gps.kml") or die "Cannot create hab_gps.kml";

$startline = << "STARTLINE";
<?xml version="1.0" encoding="utf-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
<Placemark>
<name>Cairns HAB launch - JJ Team</name>
<LookAt>
<longitude>145.65888</longitude>
<latitude>-16.75229</latitude>
<altitude>1000</altitude>
<range>500.882995</range>
<tilt>60.768762</tilt>
<heading>270.131493</heading>
</LookAt>
<styleUrl>#msn_icon12</styleUrl>
<LineString>
<tessellate>1</tessellate>
<altitudeMode>absolute</altitudeMode> 
<coordinates>
STARTLINE

print $kml_file $startline;

open FILE, "<", $gps_file or die "No GPS Data";
while ($line = <FILE>)
{
 
  $line =~ /^(.*),(.*),(.*),(.*),(.*)$/;

  print $kml_file $4 . "," . $3 . "," . $5 . "\n";
$points .= << "HERE"
   <Placemark>
     <name>$1, $2</name>
     <Point>
       <coordinates>$4,$3,$5</coordinates>
     </Point>
   </Placemark>
HERE

}

close(FILE);
# -72.516244,-13.162806,0
# -72.516244,-13.162706,1000
# -72.516244,-13.162606,2000
# -72.516244,-13.162606,2000
# -72.516244,-13.162206,2000
# -72.516244,-13.161606,2000
# -72.516244,-13.152606,2000

$finishline = << "FINISHLINE";
</coordinates>
</LineString>
</Placemark>
FINISHLINE

print $kml_file $finishline;

print $kml_file $points;
$finishpoints = << "FINISHPOINTS";
</Document>
</kml>
FINISHPOINTS

print $kml_file $finishpoints;

close($kml_file);

}



sub log_messages($)
{
  local($message) = @_;

  if ($message)
  {
    # Log to log file
    `echo "$message" >> /tmp/message.log`;

    # Initialise DB connection
    my $dbh = DBI->connect("dbi:SQLite:dbname=hope.db","","",{ RaiseError => 1},) or die $DBI::errstr;

    # Put in DB
    $query = "INSERT INTO messages_t (message, creation_date) values ('" . $message . "', datetime('now', 'localtime'))";

    $sth = $dbh->prepare($query);
    $sth->execute();

    $dbh->disconnect();

  }

}


sub insert_measurements()
{
 local($voltage, $pressure, $internal_temp, $external_temp) = @_;

 # Initialise DB connection
 my $dbh = DBI->connect("dbi:SQLite:dbname=hope.db","","",{ RaiseError => 1},) or die $DBI::errstr;

 # Put in DB
 $query = "INSERT INTO measurements_t (voltage, pressure, internal_temp, external_temp, creation_date)
                   values (" . $voltage . ", " . $pressure . ", " . $internal_temp . ", " . $external_temp . ", datetime('now', 'localtime'))";

 $sth = $dbh->prepare($query);
 $sth->execute();
 
 $dbh->disconnect();

}

sub insert_gps()
{
 local($latitude, $longitude, $height, $gps_date, $gps_time) = @_;

 # Initialise DB connection
 my $dbh = DBI->connect("dbi:SQLite:dbname=hope.db","","",{ RaiseError => 1},) or die $DBI::errstr;

 # Put in DB
 $query = "INSERT INTO gps_t (latitude, longitude, height, gps_date, gps_time, creation_date)
                   values (" . $latitude . ", " . $longitude . ", " . $height . ", '" . $gps_date . "', '" . $gps_time . "', datetime('now', 'localtime'))";

 $sth = $dbh->prepare($query);
 $sth->execute();
 
 $dbh->disconnect();

}



# Start thread to monitor modem
print "Listening";


sub get_bb_voltage()
{
 $v_ain1 = `cat /sys/devices/ocp.2/helper.14/AIN1`;
 $v_voltage = $bb_voltage_multipler * $v_ain1;

 # Initialise DB connection
 my $dbh = DBI->connect("dbi:SQLite:dbname=hope.db","","",{ RaiseError => 1},) or die $DBI::errstr;

 # Put in DB
 $query = "INSERT INTO bb_voltage_t (voltage, creation_date)
           values (" . $v_voltage . ", datetime('now', 'localtime'))";

 $sth = $dbh->prepare($query);
 $sth->execute();

 $dbh->disconnect(); 

}


sub get_radio_stats()
{
    # now that we have line...quickly get some stats on link
    select(undef,undef,undef,0.5);
    $port->write("+++");
    select(undef,undef,undef,0.5);

    my $ans = "";
    # First one is to skip past the 'echo'
    until ("" ne $ans) {
       $ans = $port->lookfor;       # poll until data ready
       die "Aborted without match\n" unless (defined $ans);
       select(undef,undef,undef,0.15);
     }


    # Get some stats on link quality
    $port->write("ATI7\r\n");

    $ans = "";
    # First one is to skip past the 'echo'
    until ("" ne $ans) {
       $ans = $port->lookfor;       # poll until data ready
       die "Aborted without match\n" unless (defined $ans);
       select(undef,undef,undef,0.15);
     }

    $ans = "";
    until ("" ne $ans) {
       $ans = $port->lookfor;       # poll until data ready
       die "Aborted without match\n" unless (defined $ans);
       select(undef,undef,undef,0.15);
     }
    log_messages($ans);



    $port->write("RTI7\r\n");
    # First one is to skip past the 'echo'
    $ans = "";
    until ("" ne $ans) {
       $ans = $port->lookfor;       # poll until data ready
       die "Aborted without match\n" unless (defined $ans);
       select(undef,undef,undef,0.15);
     }

    $ans = "";
    until ("" ne $ans) {
       $ans = $port->lookfor;       # poll until data ready
       die "Aborted without match\n" unless (defined $ans);
       select(undef,undef,undef,0.15);
     }
    log_messages($ans);


# Only supported for rfd900 firmware version 2.3
#    # Get SYNC status
#    $modem->atsend("ATI8\r\n");
#    $ati8 = $modem->answer();
#    log_messages($ati8);

    # Get out of this mode
    $port->write("ATO\r\n");
    # First one is to skip past the 'echo'
    $ans = "";
    until ("" ne $ans) {
       $ans = $port->lookfor;       # poll until data ready
       die "Aborted without match\n" unless (defined $ans);
       select(undef,undef,undef,0.15);
     }

}
