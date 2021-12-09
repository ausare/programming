#!/usr/bin/perl

opendir(DH, '.');
my @listing = readdir(DH);
closedir(DH);

foreach (@listing){
    my $file = "./" . $_;
	my $stat = localtime(stat $file);
print $_ . " " . $stat . "\n";
}

