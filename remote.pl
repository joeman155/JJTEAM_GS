#!/usr/bin/perl
use strict;
use warnings;
use IO::Socket;

chomp(my $hostname  = `hostname`);
$hostname =~ s/\..*//;
my $me         = $ARGV[0] || $hostname;
my $cycle_time = $ARGV[1] || 5;
my $port       = $ARGV[2] || 8000;
my $ecg        = 'localhost';

my $socket = IO::Socket::INET->new(PeerAddr => $ecg,
                            PeerPort => $port,
                            Proto    => "tcp",
                            Type     => SOCK_STREAM)
    or die "Couldn't connect to $ecg:$port : $@\n";

while (my $line = <$socket>) 
{
    print $line;
}
 
close($socket);
