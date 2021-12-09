#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;

my $server = "ftp.tms.tvdata.com"; 
my $user   = "new698nj";
my $pw     = "STL071cr";

`ftp ftp://$user:$pw\@$server`;
my @ls = `ls`;
print Dumper(@ls);
`exit`
