#!/usr/bin/perl
use strict;
use warnings;


if (1 < 0){
    my $var = "1 is LT 0";
} else {
    my $var = "1 is GT 0";
}

print "This is before the Variable print\n"; 
print $var;
print "This is after";
