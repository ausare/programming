#! /usr/bin/perl
use warnings;
use strict;
use Data::Dumper;
use File::Copy;
use DBI;
my $path = $ARGV[0];

#######################################################
# This will rename any zip file that has a baseweek   #
# in it by adding a year to that name. This is needed #
# since baseweeks will soon start to repeat.          #
#######################################################

if (!$path) {
	print "Please enter a path arfeatures_archiver2.plgument, including ending forward slash";
} else {
	print $path;
opendir(my $dir, $path) || die "Directory failure";
my @directory = readdir($dir);
closedir($dir);

print Dumper(@directory);

my $db = DBI->connect("DBI:mysql:Features;host=featuremanager.tmsgf.trb","scripting", "alaska",{RaiseError => 1});
my @featureListArray;
foreach my $file (@directory){
	my $path_file = $path . $file;
	if ((-f $path_file) && ($file =~ /.*[0-9ond]{3}.zip/) && ($file !~ (/^\.|.*~|.*\.pl/))) {
		# if (-f $path_file && ($file =~ /.*[0-9ond].zip/) && ($file !~ (/^\.|.*~|.*\.pl/))) {
		my %featureList;
		#######################################################	
		# There is an alterative to the next two lines.       #
		# If $fileStat instead of @fileStat the data will be  #
		# "Thu Jan  5 17:31:56 2017" which is easier to split #
		#######################################################
		my @fileStat = localtime((stat $path_file)[9]);
		my $year = $fileStat[5] + 1900;
		my $baseweek = $file;
		my $originalName = $file;
		$originalName =~ s/(.*)\.zip/$1/g;
		$baseweek =~ s/.*_([0-9ond]{3})\..*/$1/;
		my $yearPlus = $year + 1;
		my $yearMinus = $year - 6;
		# Above pulls the baseweek off the file name and below matches that baseweek with the last modified date (year) 
		my $sth = $db->prepare("SELECT year(date) FROM `baseweeks` WHERE `week` = ? AND year(date) BETWEEN ? AND ? ORDER BY year(date) DESC");
		$sth->execute($baseweek, $yearMinus, $yearPlus);
		while(my @row = $sth->fetchrow_array){
			if (($baseweek =~ m/^1|^2/) && ($row[0] eq $yearPlus)){
				# print "This is Nov|Dec changing from $featureList{statYear} to $yearPlus\nFeature name is $featureList{originalName}" . "\n\n";
				move($path_file, $path . $originalName . "_" . $row[0] . "\.zip");
				next;
			} else {
				move($path_file, $path . $originalName . "_" . $row[0] . "\.zip");
			}
		}
		$sth->finish();
	}
}
$db->disconnect;
}

