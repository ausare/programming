#! /bin/perl

opendir(my $dir, ".") or die "This just didn't work yo";

print "Before my while loop\n";

while (my $file = readdir $dir){
	if(-z $file) {
		print "filename: " . $file . "\n";
}
closedir $dir;
}
