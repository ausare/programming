#! /usr/bin/perl

my @array = qw / wilma barney fred smith hulk/;
foreach(@array){ print "$_ \n"};
print "\n";
#wilma
#barney
#fred
#smith
#hulk

my @removed = splice(@array, 2);
foreach(@array){ print "$_ \n"};
#splice is destructive to the original array
#wilma
#barney

print "\nThis is what was saved into a variable for that splice\n";
foreach(@removed){ print "$_ \n"};
#fred
#smith
#hulk
	
@array = qw / wilma barney fred smith hulk/;
@removed = splice(@array, 2, 1);
foreach(@array){print $_ . "\n"}
#wilma
#barney
#smith
#hulk

print "This is what was removed: ";
print @removed;
#fred
