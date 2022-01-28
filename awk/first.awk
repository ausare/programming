#!/usr/bin/awk -f
# commenting because you should always comment

BEGIN {print "hello world";
print "This is another print statement $1"

tryMe("good catch")
}

function tryMe(e){
	print e "A string" " " "another"
	print "This is the 0 value", $1
}

{
	sub(/\//gm, "{")
	print $0
}
{
	'NF > 0' filename # will make sure it doesn't print a line with NO FIELDs

END { print "There were a ton of replaces this time "}
# -> Some CLI stuff <-
# awk -v var="Variable" 'BEGIN {print "This the var "var""}'
# This the var Variable

