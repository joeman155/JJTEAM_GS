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
use POSIX;


#get the port to bind to or default to 8000 - which remote.pl connects to
my $tcpPort = 8000;

# a hash to record client machines and thread queue for internal comunication
my $i = 1;
my $queue_id = 1;
my %clients;
my @queues;
my $max_clients = 3;

# Initialise queues
while ($i < $max_clients)
{
  my $queue = Thread::Queue -> new;
  push(@queues, $queue);
  $i++;
}



my($day, $month, $year) = (localtime)[3,4,5];
$month = sprintf '%02d', $month+1;
$day   = sprintf '%02d', $day;
my $rrmmdd =  $year+1900 . $month . $day;

# gps_file
$gps_file = "out/gps_data" . $rrmmdd . ".txt";

# measurements_file
$measurements_file = "out/measurements.txt";


# Defaults 
$mode = 0;


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
  else 
    {
     print "If providing parameter, it must only be T (fewer pics) or N (No pics)\n";
     exit;
    }
}

print "HOPE Client started\n";

$DEBUG = 0;
my $filename = "";
$pic_count = 0;
$pic_dl_freq = 5; # How often to download a pic.i.e. download every 'pic_dl_freq'th pic

my $port=Device::SerialPort->new("/dev/ttyO1");
my $STALL_DEFAULT=10; # how many seconds to wait for new input
my $timeout=$STALL_DEFAULT;


# Try initialising Serial Port
eval {
  $port->baudrate(9600);
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


$port->read_char_time(0);     # don't wait for each character
$port->read_const_time(1000); # 1 second per unfulfilled "read" call

my $taking_picture = 0;


# Start thread to monitor modem
my $monitor = threads->create ("monitor_modem", \@queues);


# create the listen socket - where clients connect to get information from modem
my $listen_socket = IO::Socket::INET->new(LocalPort => $tcpPort,
                                          Listen => 10,
                                          Proto => 'tcp',
                                          Reuse => 1);
#make sure we are bound to the port
die "Cant't create a listening socket: $@" unless $listen_socket;

warn "Server ready. Waiting for connections on $tcpPort ... \n";

#wait for connections at the accept call
while (my $connection = $listen_socket->accept) {
    # spawn a thread to handle the connection
    my $child = threads->create ("send_data_to_remote", \@queues, $queue_id, $connection);
}

sub send_data_to_remote {
    # accept data from the socket and put it on the queue
    my ($queues, $queue_id, $socket) = @_;
    my $queue = @$queues[$queue_id];

    print $socket "Connected.\n";
print "Got a connection from client! Access queue $queue_id\n";
       while (defined(my $item = $queue->dequeue())) {
        print $socket "$item\n";
    }

}





sub monitor_modem()
{
	local($queues) = @_;



while (1 == 1)
{
  $answer = "";
  @lines = NULL;

  $answer = $port->read(80);
  @lines = split /\r\n/, $answer;
  $line_count = @lines;

  $str =  "Number of lines: " . $line_count. "\n" if $DEBUG;
  print_to_queue($queues, $str) if $DEBUG ;
  
  # Parse each line
  foreach $line (@lines)
  {

    $str = "DECODING Line: " . $line . "\n" if $DEBUG;
    print_to_queue($queues, $str) if $DEBUG;

    $result = decode_line($line);
    
    if (length($result) > 0)
    {
	    # $str = $result . "\n";
      $str = $result;
      print_to_queue($queues, $str);
    
      if ($result =~ /Menu/)
      {
        # We don't want to d/l EACH time we are offered...just occasionly
        if ($mode == 0)
        {

          if ($pic_count % $pic_dl_freq == 0)
          {
            $str = "Sending request to download image\n";
            print_to_queue($queues, $str);
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
              print_to_queue($queues, $str);

              sleep 5;
              $str = "Download started.\n";
              print_to_queue($queues, $str);

              my $receive = Device::SerialPort::Xmodem::Receive->new(
                    port     => $port,
                    filename => 'out/images/' . $v_file,
                    DEBUG    => 1
              );

              $receive->start();
              $i++;
              $str = "Finished Transmission\n";
              print_to_queue($queues, $str);
            } 
            elsif ($gotit =~ /W/)
            {
              $str = "Timeout waiting for response from ground station.\n";
              print_to_queue($queues, $str);
            }
            elsif ($gotit =~ /Q/)
            {
              $str = "Did not recognise response from station.\n";
              print_to_queue($queues, $str);
            }
            else
            {
              $str = "HAB never started sending....perhaps it didn't get request to send image?\n";
              print_to_queue($queues, $str);
            }
          }
          else
          {
            $str = "Skipping d/l of image this time.\n";
            print_to_queue($queues, $str);
          }
          $pic_count++;
        }
        elsif ($mode == 1)
        {
          $count_out = $port->write("1\r\n");
          $str = "Sent request put in test mode\n";
          print_to_queue($queues, $str);
 
          my $gotit = "";
          until ("" ne $gotit) {
            $gotit = $port->lookfor;       # poll until data ready
            die "Aborted without match\n" unless (defined $gotit);
            sleep 1;                          # polling sample time
          }

          if ($gotit =~ /T/) 
          {
            $str = "HOPE is now in Test mode\n";
            print_to_queue($queues, $str);
          }
        }
        elsif ($mode == 2)
        {
          $count_out = $port->write("3\r\n");
          $str = "Sent request put in normal mode\n";
          print_to_queue($queues, $str);
  
          my $gotit = "";
          until ("" ne $gotit) {
            $gotit = $port->lookfor;       # poll until data ready
            die "Aborted without match\n" unless (defined $gotit);
            sleep 1;                          # polling sample time
          }

          if ($gotit =~ /N/)
          {
            $str = "HOPE is now in Normal mode\n";
            print_to_queue($queues, $str);
          }
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
  } elsif ($p_line =~ /^S$/)
  {
    $v_result = "Powering up HOPE";
  } elsif ($p_line =~ /^G$/)
  {
    $v_result = "HOPE powered up";
  } elsif ($p_line =~ m/^M(.+),(.+),(.+)$/)
  {
    $v_result = "Air Pressure: $1\nExternal Temp: $2, Internal Temp: $3\n";
    $now_string = localtime;
    open(my $meas_fh, '>>' . $measurements_file) or die "issue opening measurements file";
    print $meas_fh "T:" . $now_string . ",P:" . $1 . ",ET:" . $2 . ",IT:" . $3 . "\n";
    close($meas_fh);
  } elsif ($p_line =~ m/^La:(.+),Lo:(.+),A:(.+),D:(.*),T:(.+)$/)
  {
    $v_lat = $1/100000;
    $v_long = $2/100000;
    $v_result = "GPS\nLatitude: " . $v_lat . "\nLongitude: " . $v_long . "\nAltitude: $3\nDate: $4\nTime: $5\n";
    $v_line = $4 . "," . $5 . "," . $v_lat . "," . $v_long . "," . $3 . "\n";
    open(my $gps_fh, '>>' . $gps_file) or die "issue opening gps file";
    print $gps_fh $v_line;
    close($gps_fh);

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
  } elsif ($p_line =~ /^D$/)
  {
    $v_result = "Finished taking picture";
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
    $v_seconds_rounded = floor($v_seconds - ($3600 * $v_hours + 60 * $v_minutes_rounded));
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
   $v_result = "Cannot find a match for '" . $p_line . "'\n" if $DEBUG;
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



sub print_to_queue()
{
  local($queues, $message) = @_;

  if ($message)
  {
    `echo "$message" >> /tmp/message.log`;
    # Put data on each queue that we get from the modem
    foreach my $queue (@$queues) {
      $queue -> enqueue($message);
    }
  }

}
