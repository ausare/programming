// This is a good one to know
// Netninja course
// Basically makes an array 
const double = (...nums) => {
	console.log(nums)
/*  
	[
  1, 5, 2, 3,
  4, 5, 7
	]
*/
	return nums.map(num => num*2)
}

const result = double(1,5,2,3,4,5,7)
console.log('this is the doubled array')
result.forEach(i => {
	console.log(i)
})
/*
  2
  10
  4
  6
  8
  10
  14
*/


