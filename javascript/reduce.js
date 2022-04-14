#! /usr/bin/js
// note to self, you keep forgetting to 
// return this and to set the initial setting.

const score = [ 20, 10, 50, 20, 100 ]
const result = score.reduce((acc, curr) => {
	if (curr > 50){
		acc++
		}
		return acc
}, 0) //this is the acc initial setting

console.log(result)
//1

const scores = [
{name: 'jason', age: 45},
{name: 'jackie', age: 42},
{name: 'frank', age: 47},
{name: 'frank', age: 77}]


const result2 = scores.reduce((acc, curr) => {
	if (curr.name == 'frank'){
		acc += curr.age
		console.log('in the if')
	}
	return acc
}, 0)

console.log(result2)
//in the if
//in the if
//124

