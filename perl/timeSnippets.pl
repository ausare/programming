#/usr/bin/perl
use strict;
use warnings;
use Time::Piece;


# Shit I've learned... 
# Year +1900 is the current year
# Month is off by one because it starts at 0

# In main script
my $day_change_amount;


# This will be in the subroutine
my $day_in_seconds = 24*(60*60);
my $week_in_seconds = 7*$day_in_seconds;

print "This is how many days are in a second : " . $day_in_seconds . "\n";
print "This week in seconds : " . $week_in_seconds . "\n";


# checking if there is a need to 
my %time;
if (defined($day_change_amount)) {
    print "There is a time value\n";
} else {
    print "There isn't a time value, setting to 0\n";
    $day_change_amount -= $week_in_seconds;
}

# this is called a "hash slice" and I've used qw(quoted words) to keep it clean.
@time{qw(second minute hour day month year weekDay dayOfYear IsDST)} = localtime(time + ($day_change_amount));

$time{month} += 1;
$time{year} += 1900;

print "Looping a hash\n";
foreach my $key (keys %time){
    print $key . ": " . $time{$key} . "\n";
};

print "Here is your dateChange: " . $day_change_amount . "\n";

