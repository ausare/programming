#! /usr/bin/perl
use strict;
use warnings;
use DBI;

# This is to clean up the xmlData year folders with the incorrect date in them.

my $dhb = DBI->connect("DBI:mysql:Features;host=featuremanagerdev.tmsgf.trb","scripting", "alaska",{RaiseError => 1});
opendir(DIR, $ARGV[0]) or die "This directory does not exist!";
my @arry = readdir(DIR);
closedir(DIR);
my @badArray;
foreach(@arry){
	if($_ =~ m/features\d{8}.xml/){
		my $dateString = $_;
		# print "dateString: $dateString";
		$dateString =~ s/features(\d{2})(\d{2})(\d{4}).xml/$3-$1-$2/;
		my $sth = $dhb->prepare("SELECT date FROM baseweeks WHERE date = ?");
		$sth->execute($dateString);
		# while (my @row = $sth->fetchrow_array()){
		my @row = $sth->fetchrow_array();
		if ($dateString ~~ @row){
			next;
		} else {
			print "Not in DB: $_\n";
		}

	} else {
		print "This should be in the directory\n" . $_;
	}
}

