#!/usr/local/bin/node

//sort is destructive
let numbers = [ 10, 40, 60, 100, 120, 4, 5]
// This will only sort by the first digit
// so 1, 1, 1, 4, 4, 6, 7 for this example
numbers.sort() 
console.log(numbers)
//  10, 100, 120, 4,
//  40,   5,  60 

numbers = [ 10, 40, 60, 100, 120, 4, 5]
numbers.sort((a, b) => b - a) //highest to lowest

numbers = [ 10, 40, 60, 100, 120, 4, 5]
numbers.sort((a, b) => a - b) //lowest to highest
//could've just said numbers.reverse() after the first sort
console.log(numbers)
//[
//  120, 100, 60, 40,
//   10,   5,  4
//]
//[
//   4,   5,  10, 40,
//  60, 100, 120
//]

const people = [
{name: 'Jason', age: 44},
{name: 'Frank', age: 44},
{name: 'Francis', age: 77},
{name: 'Frank', age: 48}
]

/*
	a way to sort object, try to think of it as
	the negative number is moving it up to the 
	first position
*/
	
people.sort((a, b) => {
	if (a.age > b.age){
		return -1
	} else if (b.age > a.age) {
		return 1
	} else {
		return 0
	}
})

console.log(people)
//[
//  { name: 'Francis', age: 77 },
//  { name: 'Frank', age: 48 },
//  { name: 'Jason', age: 44 },
//  { name: 'Frank', age: 44 }
//]

/*
	shorthand version
	if b.age is greater than a.age then it would 
	be positive, as above otherwise it would be 
	negative or 0. Don't ask me how this sorts though
*/
const people2 = [
{name: 'Jason', age: 44},
{name: 'Frank', age: 44},
{name: 'Francis', age: 77},
{name: 'Frank', age: 48}
]
people2.sort((a, b) => b.age - a.age) 
console.log(people2)
