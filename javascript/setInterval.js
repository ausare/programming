#!/usr/local/bin/node

//setInterval(func, [delay, arg1, arg2, ...])

const secondInterval = setInterval(clock, 1, "This String")
function clock (a){
	const currentTime = new Date()
	let hour = currentTime.getHours()
	let minute = currentTime.getMinutes()
	let second = currentTime.getSeconds()
	console.log(`	Hour: ${hour}
	Minute: ${minute}
	Second: ${second}
	Passed Variable: ${a}
	`)
}
	
//setTimeout(function, [delay, ar1, arg2, ...])
setTimeout(() => {
	clearInterval(secondInterval)
}, 5000) //5 seconds
//This will output for 5 seconds and stop
//Hour: 14
//	Minute: 26
//	Second: 35
//	Passed Variable: This String

