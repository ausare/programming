#!/usr/bin/perl
use warnings;
use strict;
use File::Find;
use Data::Dumper;

my $currDir = "/";

opendir(my $fh, $currDir);
	my @fileNames = readdir($fh);
closedir $fh;

foreach(@fileNames){
	if ($_ !~ (m/^\..*|^o|t$/) && $_ !~ m{\./*./*./}){
#		print $_ . "\n";
	}
}

opendir(my $f2, "/");
	while(readdir $f2){
#		print  $_ . ", ";
	}
closedir $f2;

#find(sub {print $File::Find::name . "\n" if -d}, "."); <-- works! pretty cool

find(\&something, '.');

my @newList;

sub something {
	if ((-d) && ($_ =~ m{.*\.app}i)) {
		my $found = $File::Find::name;
		push(@newList, $found);
	}
}

my @newestList = grep(/Kyle/, @newList);

print Dumper(@newestList);






