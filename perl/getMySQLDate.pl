#!/usr/bin/perl
use strict;
use warnings;
use DBI;
use Data::Dumper;

#my $dbh;
#my $sth;
#my $sql = DBI->connect("DBI:mysql:database=JDogg", "root", "655321") or die ("Cannot connect to DB");
my $baseweeks = `perl baseweeks.cgi 2014`;
chomp($baseweeks);
my $dbh = DBI->connect("DBI:mysql:JDogg;host=localhost","root","655321",{RaiseError => 1});
my $sth = $dbh->prepare("select now()") or die "Unable to prepare query" . $dbh->errstr;

$sth->execute() or die "Unable to execute" . $sth->errstr;
while(my @row = $sth -> fetchrow_array()){
    print $row[0];
}
$sth->finish;
$dbh->disconnect;
