#!/usr/local/bin/node

//includes is boolean and is nondestructive
const thisArray = "This is my search array".split(' ')

thisArray.forEach(item => {
	if(item.includes('s')){
		console.log(item)
	}
})
//This
//is
//search
console.log(thisArray)
