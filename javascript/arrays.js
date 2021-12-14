#!/usr/local/bin/node
//chaining methods
const products = [
	{name: 'gold star', price: 30},
	{name: 'green shell', price: 10},
	{name: 'red shell', price: 40},
	{name: 'banana skin', price: 5},
	{name: 'mushroom', price: 50}
]

const promos = products
	.filter(product => product.price >= 30)
	.map(product => `This is the deal: ${product.price / 2}`)

console.log(promos)
//[
//  'This is the deal: 15',
//  'This is the deal: 20',
//  'This is the deal: 25'
//]

