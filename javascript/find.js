#! /usr/bin/js

//find will find the first match in an array
//this is also a boolean method

const scores = [ 20, 30, 40, 50, 1, 2, 5, 6 ]

const result = scores.find(score => score > 45)
console.log(result)
//50

