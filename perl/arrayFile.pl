#!/usr/bin/perl
use strict;
use warnings;




sub hashAFile {
#returns hash for a file with | (pipe) delims
	my ($thisFile) = $_[0];
	my %FileHash;
	my $line;
	my @records = arrayFile($thisFile);
	foreach $line (@records) {
		chomp($line);
		my @twoParts = split('\|',$line);
		my $thisKey = $twoParts[0];
		my $thisValue = $twoParts[1];
		$FileHash{$twoParts[0]} = $twoParts[1];
	}
	return(%FileHash);
}

