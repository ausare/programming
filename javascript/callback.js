
//And here we finally are, ugh!
//JS by its nature is synchronous 
console.log(1)
console.log(2)
console.log(3)
setTimeout(() => { console.log("this is ASYNC") }, 2000)
console.log(5)
console.log(6)
console.log(7)
//1
//2
//3
//5
//6
//7
//this is ASYNC

//old school XMLHttpRequest() 
let h = document.querySelector(".replaceMe")
h.addEventListener('click', e => {
	h.innerHTML = "<h1 style='color:red, font: bold'</h1>"
})


const request = new XMLHttpRequest();
request.addEventListener('readystatechange', () => {
	let data = Array.from(request)
	console.log(data)
})


request.open('GET', 'https:/jsonplaceholder.typicode.com/todos/')
request.send()
fetch('https://medium.com/beginners-guide-to-mobile-web-development/the-fetch-api-2c962591f5c')


//this is a bit odd the way this call back is setup
const getTodos = (callback) => {
	const request = new XMLHttpRequest()

	request.addEventListener('readstatechange', () => {
		if(request.readyState === 4 && request.status === 200){
			//converts to Javascript Object
			const data = JSON.parse(request.responseText)
			callback(undefined, data)
		} else if (request.readyState === 4){
			callback('could not fetch data', undefined)
		}
	});

//this request can also be to a local file!
	request.open('GET', 'https:blahbalh/todos')
	request.send
}

//the standard for network requests is in the 
//order of error then data
getTodos((err, data) => {
	console.log('callback will be fired')
	if(err){ 
		console.log(err)
	} else {
		console.log(data)
	}
})



