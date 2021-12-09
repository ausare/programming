#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my @files;
my %hash;
my @array;

opendir (my $dir, ".");
    @files = readdir($dir);
closedir ($dir);

foreach(@files){
    my $year = `stat -f "%Sm" '$_'`;
    $year =~ s/.*\s+(\d{4})$/$1/g;
    chomp($year);

    @array = (@array, "$_ $year");
    #print $year . " " .  $_ . "\n";
}
foreach(@array){
    my ($file, $year) = split(" ", $_);
    print "$file|$year\n";
};
my $length = @array;
print "The length of the array is: $length\n";

print \@array;


#print join("|", @array);
