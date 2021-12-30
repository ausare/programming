//promise in it's simplest form
const getSomething = () => {
	// resolve, reject are built into promises
	return new Promise((resolve, reject) => {
		// fetch something
		resolve('yo, this was resolved')
		reject('hey man, what did you do?')
	});
}

