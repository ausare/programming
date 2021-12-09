#!/usr/bin/perl

# How did Torvalds 
print "Beginning commpression\n";


my @args = qw ( tar cvfz new.targ.gz ,);

system(@args) ==0 or die (`echo "There was a failue archiving" \| mail -s "archiver" jason.gifford\@neilsen.com`);






	
