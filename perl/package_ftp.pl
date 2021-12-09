#! /usr/bin/perl
use strict;
use warnings;
use NET::FTP;
use Data::Dumper;


my $ftp = Net::FTP->new("becky.tmsgf.trb", Debug => 0, Passive => 0);
$ftp->login("package","autopac");
$ftp->binary();
$ftp->cwd("AWTDIR:[h7f]");
my $search = "*.PKG*";
my $dirList = $ftp->ls($search);
print Dumper($dirList);
$ftp->quit;

