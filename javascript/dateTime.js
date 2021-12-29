#!/usr/local/bin/node

/*
	Date looks like a function but it's 
	a constructor and new is saying I 
	want a new Object of type Date
*/
const now = new Date()

console.log(now) //2021-12-15T16:54:39.496Z
//years, months, day, time
console.log(now.getFullYear()) //2021
console.log(now.getMonth()) //2
console.log(now.getDate()) //15
console.log(now.getDay()) //3
console.log(now.getHours()) //11
console.log(now.getMinutes()) //54
console.log(now.getSeconds()) //39

//timestamps
console.log(now.getTime()) //number of milisecond since Jan 1, 1970

const thisMoment = new Date()
const bday = new Date('July 19 1977 9:30:00')

//manual conversion
const diff = thisMoment.getTime() - bday.getTime()
console.log('This is the difference in time:', diff)
const mins = Math.round(diff / 1000 / 60)
console.log('Difference converting to minutes from milliseconds:', mins)
const hours = Math.round(mins / 60)
console.log('Hours: ', hours)
const days = Math.round(hours / 24)
console.log(`As of now in my life I have lived: ${days} days`)

console.log('Random millisecond conversion: ', new Date(1639591183023))


//date strings
console.log(now.toDateString()) //Wed Dec 15 2021
console.log(now.toTimeString()) //12:04:11 GMT-0500 (Eastern Standard Time)
console.log(now.toLocaleString()) //12/15/2021, 12:08:15 PM
