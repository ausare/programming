#!/usr/bin/perl;

my $date = `date`;

my @date = split(' ', $date);



my $year = @date[5];

mkdir ($year) or die ("There was an error creating this directory! " . $!);
mkdir ($year + 1);
