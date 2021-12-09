#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $currentYear = `date +%Y`;
my %weeksByYear;
my @weeks;

for (my $i = 5; $i > -1; $i--){
    my $tmpYear = $currentYear - $i;
    @weeks       = `perl baseweeks.cgi $tmpYear`;
    $weeksByYear{$tmpYear} = \@weeks;
}

print Dumper(%weeksByYear);
while(my ($key, @value) = each %weeksByYear){
    my $weeks2 = $weeksByYear{$key};
    my @test = @$weeks2;
foreach(@test){
	print $_ . ", ";
    }
}
