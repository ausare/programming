#!/usr/bin/perl
use warnings;
use strict;

my $string = "This |is";

my ($one, $two) = split("|", $string);
print "Here is $one and $two";
