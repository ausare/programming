#!/usr/bin/perl
use warnings;
use strict;

foreach ((2019-5)..2019){
	print "Here we go\n";
	}
   
my @array = qw( 0 1 2 3 4 5 6 7 8 9 10 );
my $array = @array;

for (my $i = 0; $i <= $array; $i++){
print @array[$i] . "\n";
} 
my $array = @array;
for (my $i = 0; $i <= $array; $i++){                                                                     
    print $array[$i] . "\n";                                                                                 }
print "\n\n||";

splice(@array, 2, 1);
splice(@array, 7, 1);
my $array = @array;
for (my $i = 0; $i <= $array; $i++){                                                                     
print qq (
<div class="emailAlertList" >$array[$i]<br></div>;                                                                                 
}
