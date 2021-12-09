#!/bin/perl
use strict;
use warnings;
use JSON;

print "Lets see if JSON works?\n";
my @arry = qw (jason sampson frank jackie);

print "This is my array:\n";
foreach(@arry){
    print "$_ \n";
}

print "This is index 4 " . $arry[3] . "\n";

my %hasher = (
    jason => "Giffturd",
    pat => "Giffturd",
    others => \@arry

);

print "***Key jason: " . $hasher{'others'}[0] . "***\n"; 

my $hasher = \%hasher;

my $encoded_json = encode_json \%hasher;

print $encoded_json."\n";

open my $fh, '>', "json.txt";
$fh = $encoded_json;
close $fh;

