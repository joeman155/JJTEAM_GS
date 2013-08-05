#!/usr/bin/perl
#


use lib '/home/root/hope/modules/lib/perl/site_perl/5.14.2';

use DBI;

$message = $ARGV[0];

if ($message =~ /^$/)
{
	print "No message provided.\n";
	exit;
}


my $dbh = DBI->connect("dbi:SQLite:dbname=hope.db","","",{ RaiseError => 1},) or die $DBI::errstr;

# $query = "SELECT id, message from messages_t order by id";

$query = "INSERT INTO messages_t (message, creation_date) values ('" . $message . "', date('now'))";

$sth = $dbh->prepare($query);

$rv = $sth->execute();

exit;

while (@row = $sth->fetchrow_array()) 
{
print "row\n";
}

