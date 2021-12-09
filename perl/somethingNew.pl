#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

print "This is now active\n";
my @arry = qw ( a b c d e );

print Dumper(@arry);


myFunc(\@arry);


sub myFunc{
    if (@_[0]){
	print "SUCCESS!!!";
    } else {
	print "failure!!!";
}
    my ($temp) = @_;
    my @newArray = @$temp;
    
open my $fh, '>', "myText.txt" or die ("This fucking sucks yo!");
    foreach (@newArray){
	print $fh $_;
    }
    close $fh;
if (1 < 0) {
	print "This is working\n";
    } else {
	print "This isn\'t working\n";
    }
}
