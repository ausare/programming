#! /usr/bin/js
//Map is nondestructive 
const prices = [20, 10, 5, 1201, 12901]

let halfOffPrices = prices.map((price) => {
	return price / 2
})
console.log(halfOffPrices)

//Shorthand
halfOffPrices = prices.map(price => price / 2)
console.log(halfOffPrices)
 
// [ 10, 5, 2.5, 600.5, 6450.5 ]
// [ 10, 5, 2.5, 600.5, 6450.5 ]

//This can be done with other objects as well
const obj = [
	{name: 'Jason', price: 5},
	{name: 'Jackie', price: 5000000},
	{name: 'Will', price: 9999999999}
]

//this unlike the others above cannot be
//shortened into one line
const newob = obj.map(person => {
	return {name: person.name, price: person.price / 2}
	/*
		product.price = product.price / 2
	  would alter the actual array
	*/
	})
console.log(newob)

//[
//  { name: 'Jason', price: 2.5 },
//  { name: 'Jackie', price: 2500000 },
//  { name: 'Will', price: 4999999999.5 }
//]

