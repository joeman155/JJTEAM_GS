#!/usr/bin/perl
#


use lib '/home/root/hope/modules/lib/perl/site_perl/5.14.2';

use DBI;

my $dbh = DBI->connect("dbi:SQLite:dbname=hope.db","","",{ RaiseError => 1},) or die $DBI::errstr;

$query = "DELETE FROM messages_t";

$sth = $dbh->prepare($query);

$rv = $sth->execute();

exit;

while (@row = $sth->fetchrow_array()) 
{
print "row\n";
}

