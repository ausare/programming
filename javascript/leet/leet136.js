// Given an array where all numbers repeat besides one, return that one value
let array = [1]
console.log(array)

let obj = {}
	for (i of array){
		if (obj[i]) {
			obj[i] += 1
		} else {
			obj[i] = 1
		}
	}

let result = Object.keys(obj).find(key => {return obj[key] == 1}) 
console.log(result) 
