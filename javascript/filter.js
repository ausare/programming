#! /usr/bin/js
//Filter is non-destructive and boolean by nature
const obj = [
	{name : "Jason", premium: true},
	{name : "William", premium: true},
	{name : "Other Shmuck", premium: false}
	]
let results = obj.filter(item => {
	return item.premium == true
	}) //returns objects that have premium true
console.log(results)

// shorthand
results = obj.filter(item => item.premium) //same fucking thing!
console.log(results)
//[
//  { name: 'Jason', premium: true },
//  { name: 'William', premium: true }
//]
//[
//  { name: 'Jason', premium: true },
//  { name: 'William', premium: true }
//]
//
