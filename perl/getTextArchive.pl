#!/usr/bin/perl

use Net::FTP;
use warnings;

my @args = @ARGV;
my $destinationFolder = "/Users/admin/";
my $archive = $args[0];

downloadFile("robin.tmsgf.trb", "package", "autopac", "PAGDIR:", "$destinationFolder$archive", "$archive");
#system("/Users/scripting/_Apps_/unar $destinationFolder$archive -o $destinationFolder");
#system("/bin/rm $destinationFolder$archive");


sub downloadFile
{
	my @parameters = @_;
	my $server = "$parameters[0]";
	my $user = "$parameters[1]";
	my $pass = "$parameters[2]";
	my $init = "$parameters[3]";	#supports only one level
	my $path = "$parameters[4]";
	my $downloadname = "$parameters[5]";

	my $ftp = Net::FTP->new("$server", Debug => 0, Passive => 0);
	$ftp->login("$user","$pass");
	$ftp->binary();
	$ftp->cwd("$init");
	$ftp->get("$downloadname","$path") or warn (print "**FAILED** - Cannot find $archive on ROBIN\n");
	$ftp->quit;
	return 1;
}
