#! /usr/bin/perl
use strict;
use warnings;

my ($c_second, $c_minute, $c_hour, $c_day, $c_month, $c_year, $c_weekDay, $c_dayOfYear, $IsDST) = localtime(time);

print $c_year + 1900;
