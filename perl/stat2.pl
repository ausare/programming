#! /usr/bin/perl
use warnings;
use strict;
use File::Copy;
use Data::Dumper;

opendir (DIR, ".");
	my @directories = readdir(DIR);
closedir(DIR);

my ($day, $mon, $dow, $time, $year, $dir);
foreach (@directories){
	if (-d $_){
		opendir(DIR, $_);
			my $dirStat = localtime((stat DIR)[9]);
			print $dirStat . "\n";
			($day, $mon, $dow, $time, $year) = split(" ", $dirStat);
			$dir = $_;	
		closedir(DIR);
		print "This is the year for: " . $dir . " -> " .  $year . "\n";
	}
}

