#!/usr/bin/perl

my @array = qw ("Copy Edit/cross.o17", "Final Read/cross.017", "Final Read/scope.o03", "Copy Edit/cross.o17", "Final Read/cross.017", "Something to equal);

my $line = @array[1];

my $string  = "cross.o17|Copy Edit|Final Read";

my @array = split(/\|/, $string);

my $test = (split(/\./, @array))[1];
print " here is the test: " . $test;

my @newArray = qw { this is going to be the best thing EVERY 10 };
print "This is my val => ${val}}";

foreach(@newArray){
	#print " ${_} \n";
}
my %hash = @newArray;

print "\n";
while(my ($keys, $values) = each %hash){
	print "${values} \n";
}

my @val = grep {/g/} @newArray;
print "\n";
foreach(@val){
	print $_;
}
