
#! /bin/perl
use strict;
use warnings;

my $file = "readMe.txt";

my @fileInfo = stat($file);
my $fileInfosize = @fileInfo;

for (my $i = 0; $i < $fileInfosize; $i++) {
    print $i . ": " . ($fileInfo[$i] / 24 / 60 / 60) . "\n";
}
    my $otherTime = localtime(time - ((24*60*60)*10));
    my $nowTime = localtime(time);

    my @timeSplit = split(/ /, $otherTime);
    if ($timeSplit[2] eq " ") {
        print "This is a single digit\n";
        @timeSplit = splice @timeSplit, 2, 1;
    }

    print "This is now variable: " . $nowTime . "\n";
    print "This is now variable: " . $otherTime . "\n";

        print "\n This is splitting scalar version of local time \n";
        foreach(@timeSplit) {
            if ($_ eq " "){ print "fuck this!"; } else {
            print "\'$_\' \n";
            }
        }

        # print "\n Time Conversion : " . $timeConvert;

        open my $newfile, ">json.txt";
            foreach (@timeSplit) {
                if ($_ ne "") {
                print $newfile $_ . "\n";
                }
            }
        close $newfile;
        my $desktop = "../..";
        opendir(my $local, $desktop);
        my @context  = grep {-f "$desktop/$_"} readdir($local);
        rewinddir($local);
        my @context2 = readdir($local);
        closedir $local;

        foreach(my $i = 0; $i < (my $l = @context); $i++){
            print $i . ": "; 
            print $context[$i];
            print "\n";
        }

        open my $snapShot, '</Users/admin/Desktop/snapshot9.txt'; 
            my @snapShotData;
            my $total = 0;
            while(<$snapShot>){
                if (! m/^\s{3}\d+.*(executing)$/) {
                    $_ =~ s/\s+/ /;
                    push(@snapShotData, $_);
                    $total++;
                }
            }
        close  $snapShot;

        print "\n\nSnapshot Data\n-------------------------------------";
        foreach (@snapShotData) {
            print $_;
        }

        print "\Total: " . $total . "\n";

        foreach my $newfer(@context2) {
            if($newfer !~ /^\..*/){
            print " -" . $newfer . "-\n";
            }
        }