#! /usr/local/bin/perl
use Net::SCP;
use Net::OpenSSH;
use warnings;
use strict;

my $host = "sos-qby.tmsgf.trb";
my $user = "scripting";

my $scp = Net::SCP->new($host, $user);
my $ssh = Net::OpenSSH->new('scripting@sos-qby.tmsgf.trb');

my @list = $ssh->capture('ls');
if (@list ~~ /Frank.*/){
	print "something named 'test' is in this directly";	
}
#$ssh->system('rm tes.txt');
$ssh->scp_put('zerro.tst', 'JasonGifford.txt');
foreach(@list){
	print $_ . "\n";
}
$ssh->disconnect) or die $ssh->error;
#scp->mkdir("Nov15") or die ("This was a failure");
#scp->cwd("Nov15") or die ("Could not make directory");
#scp->put("fails.txt");

print "Use statement worked!";
