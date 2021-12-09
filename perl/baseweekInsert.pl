#! /usr/bin/perl
use strict;
use warnings;
use DBI;

# This is to insert data into a hundred years of baseweeks with dates into the database. 
# requirement is having the baseweek.pl file in the same directory.
my $dbh = DBI->connect("DBI:mysql:Features;host=featuremanager.tmsgf.trb","scripting", "alaska",{RaiseError => 1});
my $start_year = 1980;

for (my $i = 0; $i < 100; $i++) {
    
    my @baseweeks = `perl baseweeks.pl $start_year`;
    chomp(@baseweeks);
    foreach(@baseweeks){
        my $date = $_;
        $date =~ s/([ond0-9]{1})(\d{2})/$start_year-$1-$2/g;
        $date =~ s/o/10/g;
        $date =~ s/n/11/g;
        $date =~ s/d/12/g;
        my $sth = $dbh->prepare("INSERT INTO `baseweeks` VALUES (\"$_\", \"$date\")");
        $sth->execute;
        $sth->finish;
        # print $_ . $date . "\n";
    }
    $start_year++;
}

