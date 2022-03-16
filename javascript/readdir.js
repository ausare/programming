const fs = require('fs')
const path = require('path')

const directory = fs.readdirSync('.')

directory.forEach(e => {
	console.log(path.basename(e))
	console.log(path.resolve(e))
	if(path.extname(e) == '.js'){
		console.log(`you've found this JS file: ${e}`)
	}
	console.log('\n')
})








