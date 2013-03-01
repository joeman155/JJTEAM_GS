#!/usr/bin/perl

use Device::SerialPort qw( :PARAM :STAT 0.07 );
use Device::SerialPort::Xmodem;
use Device::Modem;
use Device::Modem::Protocol::Xmodem;




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
      $v_file = $filename . '_image' . $i . '.jpg';
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
  } elsif ($p_line =~ m/^M(.+),(.+),(.+)$/)
  {
    $v_result = "Air Pressure: $1\nExternal Temp: $2, Internal Temp: $3\n";
  } elsif ($p_line =~ m/^La:(.+),Lo:(.+),A:(.+),D:(.*),T:(.+)$/)
  {
    $v_lat = $1/100000;
    $v_long = $2/100000;
    $v_result = "GPS\nLatitude: " . $v_lat . "\nLongitude: " . $v_long . "\nAltitude: $3\nDate: $4\nTime: $5\n";
  } elsif ($p_line =~ /^C$/)
  {
    $v_result = "Taking picture";
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
    $v_result = "Time in milliseconds since power turned on: $1";
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
