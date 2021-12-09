#!/usr/bin/perl
use strict;
use warnings;

my @array = ( 1, 2, 3 );
my $array_ref = \@array; 
print "REF: ", $array_ref,"\n";
print "VALUES: ", join " ", @$array_ref;
print "\n";

my $scalar = "this is a scalar";
my @array = qw( this is my array );
my %hash = (
    'this' => 'my',
    'hash' => 'mine',);

print_all(\$scalar, \@array, \%hash);

sub print_all {
    my $scalar_ref = shift;
    my $arr_ref = shift;
    my $hash_ref = shift;

    print "Scalar: ", $$scalar_ref, "\n";
    print "Array: ", join ' ', @$arr_ref, "\n";
    print "Hash: ", each %$hash_ref, "\n";
}
