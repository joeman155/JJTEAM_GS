#!/usr/bin/perl

use Device::SerialPort qw( :PARAM :STAT 0.07 );
use Device::SerialPort::Xmodem;
use Device::Modem;
use Device::Modem::Protocol::Xmodem;
use POSIX;

my($day, $month, $year) = (localtime)[3,4,5];
$month = sprintf '%02d', $month+1;
$day   = sprintf '%02d', $day;
my $rrmmdd =  $year+1900 . $month . $day;

# gps_file
$gps_file = "gps_data.txt";

# measurements_file
$measurements_file = "measurements.txt";


# Open these files for writing data in


$DEBUG = 0;
my $i = 1;
my $filename = "";

my $port=Device::SerialPort->new("/dev/ttyUSB0");

 my $STALL_DEFAULT=10; # how many seconds to wait for new input
 
 my $timeout=$STALL_DEFAULT;


  # similar
  $port->baudrate(9600);
  $port->parity("none");
  $port->databits(8);
  $port->stopbits(1); 
#  $port->handshake("xoff"); 


  $port->read_char_time(0);     # don't wait for each character
  $port->read_const_time(1000); # 1 second per unfulfilled "read" call

 my $taking_picture = 0;

while (1 == 1)
{
  $answer = "";
  @lines = NULL;

  $answer = $port->read(80);
  @lines = split /\r\n/, $answer;
  $line_count = @lines;

  print "Number of lines: " . $line_count. "\n" if $DEBUG;
  
  # Parse each line
  foreach $line (@lines)
  {

    print "DECODING Line: " . $line . "\n" if $DEBUG;

    $result = decode_line($line);
    
    if (length($result) > 0)
    {
      print $result . "\n";
    
      if ($result =~ /Menu/)
      {

       $count_out = $port->write("2\r\n");
       print "Sent request to download image\n";

       my $gotit = "";
       until ("" ne $gotit) {
         $gotit = $port->lookfor;       # poll until data ready
         die "Aborted without match\n" unless (defined $gotit);
         sleep 1;                          # polling sample time
       }

  # printf "gotit = %s\n", $gotit;                # input BEFORE the match
      $v_file = $rrmmdd . "_" . $filename . '_image' . $i . '.jpg';
      if ($gotit =~ /X/) 
      {
        print "Starting download in 5 seconds to $v_file....\n";
      }

     sleep 5;
     print "Download started.\n";

       my $receive = Device::SerialPort::Xmodem::Receive->new(
                port     => $port,
                filename => '/home/joeman/Desktop/images/' . $v_file
        );

        $receive->start();
$i++;
print "Finished Transmission\n";

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
  } elsif ($p_line =~ /^H$/)
  {
    $v_result = "Heartbeat";
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
    open(my $gps_fh, '>>' . $gps_file) or die "issue opening gps file";
    print $gps_fh $v_result;
    close($gps_fh);
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
