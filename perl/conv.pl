#! /usr/bin/perl
use warnings;
use strict;
use DBI;

my $dbh = DBI->connect("DBI:mysql:Features;host=featuremanagerdev.tmsgf.trb","scripting", "alaska",{RaiseError => 1});
my $sth = $dbh->prepare("SELECT week, year(date) FROM baseweeks WHERE `week` = ?");

$sth->execute("d01");
print $?;



my $var1 = "2015-221";
my $var2 = "2015-1-1";

if ($var1 eq $var2){
print "YES";
} else {
print "NO";
}

# This will stop the program at or die
#mkdir "NewFeatFolder" or die "This folder already exists!";
while(my @row = $sth->fetchrow_array()){
	print $row[1] . "\n";
	$row[1] == 2075 ? print " This does have the correct year!" :
	$row[1] == 2052 ? print " We found another, 2052!": next;

}

my 			$current_year = localtime((stat "thisYear")[9]);
            $current_year =~ s/.*\s+(\d{4})/$1/g;
print "New dir test: " . $current_year;

OUTERLOOP: for (my $i = 0; $i < 20; $i++){
	print "Outer Loop: $i\n";
		for (my $p = 0; $p < 10; $p++){
			if ($p == 5){
				last OUTERLOOP;
				}
			print "Inner Loop: $p\n";
		}
	}
	
