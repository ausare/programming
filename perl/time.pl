#!/usr/bin/perl5.18
use strict;
use warnings;
use Data::Dumper;
use vars;

my $weeksForward;
my $weeksBackward; 
my @allSundays; 					 # All Sundays requested
my $mySun;      					 # Temp Sun date while in loop
my @returnArray = checkForArguments(); 

print Dumper(@returnArray);

sub checkForArguments {
	my @arry;

	if ($ARGV[1]) {
		$weeksBackward = $ARGV[1];
	} else {
		$weeksBackward = 0;
	}

	for (my $i = $weeksBackward; $i > 0; $i--) {
		push (@arry, "-" . $i);
	}
	if ($ARGV[0]) {
		$weeksForward = $ARGV[0];
	} else {
		$weeksForward = 7;
	} 

	for (my $i = 0; $i < $weeksForward; $i++) {
		push (@arry, "+" . $i);
	}
	return (@arry);

}

print "Weeksfoward AFTER if statement - $weeksForward - ";
#chomp($arg); # Removing return on argument

foreach (@returnArray){
	$mySun = "date -vsun -v${_}w +%m%d";
#	print Dumper($mySun);
	$mySun = `$mySun`;
	$mySun =~ s/^10/o/;
	$mySun =~ s/^11/n/;
	$mySun =~ s/^12/d/;	
	$mySun =~ s/^0//;
	@allSundays = (@allSundays, $mySun);
}

if ($allSundays[0] =~ /^\w/m ) {
	shift(@allSundays);
}

print Dumper(@allSundays)

