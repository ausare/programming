#!/usr/bin/perl

my $outside;

if (!$outside) {
	if (1 > 0 ){
		$outside = "2 deep";
	}	
} 
print "$outside";

my @array = qw ( this is my new array );
my @array2 = qw ( Jason Gifford is Not);
my $item = "new";

if ( @array2 ~~ @array){
print "Yes";
}else { print "no";}
