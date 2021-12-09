#!/usr/bin/perl

use warnings;
use strict;
use Tie::File;
use Data::Dumper;

my @list = "this|that|and|the|other|thing|";
my @fieldlists;
my @returnlist;
my @splitList;
my $tmpfile = "tastytv.tmp";
open TH,"<",$tmpfile or die $!;
@fieldlists = <TH>;
close TH;
my $counter = 0;
my %template;


open FH, "<", "tastytv.tmp" or die $!;
my @data = <FH>;
close FH;


#print Dumper(@fieldlists);

# [0] = field name
# [1] = text field type
# [2] = merlmarkup
# [3] = default text
# [4] = optional field marker indicated by "Opt"
# [5] = number of columns for feature. Should be in the Body line Defaults to 1
foreach my $fileIn (@data) {
	my $counter = 1;
	my @line = split ('\|', $fileIn);
	my $colName = $line[0];
	if ($colName ne m/^ep.*/i){
		my $number_of_fields = @line;
		shift(@line);
			$template{$colName} = @line;
	}
}

foreach my $key (keys %template){
	print $key . "\n";
	print $template{$key} . "\n\n";

}
#for (my $i=0; $i <= @fieldlists; $i++) {
#   my $var =  $fieldlists[$i];
#		chomp($var);
#		print $var . " ";
#}

#	if ($line ne "") {
#		@splitList = split('\|',$line);
#		my $colToAdd = $splitList[4];
#		push (@returnlist,$colToAdd);
#		$counter++;
#	}
#print @splitList . " Length of array";

foreach(@returnlist){
	chomp($_);
#print "-" . $_ . "-";
}
print Dumper(\@returnlist);
