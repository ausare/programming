//promise in it's simplest form
//you're having trouble understanding, kinda, sorta`
const getSomething = () => {
	// resolve, reject are built into promises
	return new Promise((resolve, reject) => {
		// fetch something
//		resolve('yo, this was resolved')
		reject('hey man, what did you do?')
	});
}

getSomething().then((data) => {
	console.log(data)
}, (err) => {
	console.log(err)
})


