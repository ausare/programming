//promise in it's simplest form
//you're having trouble understanding, kinda, sorta
const getSomething = () => {
	// resolve, reject are built into promises
	return new Promise((resolve, reject) => {
		// fetch something
		resolve('yo, this was resolved')
		//reject('hey man, what did you do?')
	});
}

//messy way of doing things
//getSomething().then((data) => {
//	console.log(data)
//}, (err) => {
//	console.log(err)
//})

//cleaner way of doing things
getSomething()
	.then(data => {
		console.log(data)
	})
	.catch(err => {
		console.log(err)
	})

/* 
	Lets say we have a function

*/
const getTodos = (resource) => {
	return new Promise((resolve, reject) => {
		const request = new XMLHttpRequest()

		request.addEventListener('readystatechange', () => {
			if (request.readyState === 4 && request.status === 200) {
				//converts to Javascript Object
				const data = JSON.parse(request.responseText)
				resolve(data)
			} else if (request.readyState === 4) {
				reject('error getting resource')
			}
		})
		request.open('GET', resource)
		request.send()
	})
}
//chaining promises
getTodos('todos.json').then(data => {
	console.log('promise 1 resolved:', data)
	return getTodos('todos2.json')
}).then(data => {
	console.log('promise 2 resolved:', data)
	return getTodos('todos3.json')
}).then(data => {
	console.log('promise 3 resolved:', data)
}).catch(err => {
	console.log('The following error occurred', err)
})
