#!/usr/bin/js

const people = [
{name: 'Jason', age: 44},
{name: 'Frank', age: 44},
{name: 'Francis', age: 77},
{name: 'Frank', age: 48}
]

//a way to sort object
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
