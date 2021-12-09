#! /bin/perl
use strict;
use warnings;

my @array = ("\#comment", "Somethingelse", "\#rulling");

foreach (@array) {
	if ($_ =~ /^\#/s){
	print $_ . "\n";
	}
}

