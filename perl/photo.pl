#! /usr/bin/perl
use strict;
use warnings;

if (!(-e "features/features0628218d5.xml")){
	print "The file does start";
} else {
 	print "This does not exist";
}

open(my $errorlog,'>', "/Users/admin/error_log");
my $photoName = "psol.tiff";
my $convertPhoto = $photoName;
$convertPhoto =~ s/tiff/jpg/g;
print "This is the converted Photo: $convertPhoto";
my $photo = "/Users/admin/Desktop/Images/Toilet_Trump.jpg";
my $newPhoto = "/Users/admin/Desktop/Images/Toilet_Trump.tif";

my $fuckingCommand = system("convert $newPhoto $photo") or die ("This shit just wont worki: " . $!);
print $errorlog . $fuckingCommand;

