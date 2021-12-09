#!/usr/bin/perl

my @array = qw ("Copy Edit/cross.o17", "Final Read/cross.017", "Final Read/scope.o03", "Copy Edit/cross.o17", "Final Read/cross.017", "Something to equal);

my $line = @array[1];


my $string  = "cross.o17|Copy Edit|Final Read";

my @array = split(/\|/, $string);

my $test = (split(/\./, @array))[1];
print " here is the test: " . $test;
