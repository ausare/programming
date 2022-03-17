const fs = require('fs')
const path = require('path')

// So far I would say FUCK trying to make this
// async unless you want to perform all actions 
// in a big loop. 
const directory = fs.readdirSync('.')

directory.forEach(e => {
	console.log(path.basename(e))
	console.log(path.resolve(e))
	if(path.extname(e) == '.js'){
		console.log(`you've found this JS file: ${e}`)
	}
	fs.stat(e, (err, stats) => {
		if (err) throw err
		if (stats.isDirectory()){
		
			console.log(`This is a directory: ${path.resolve(e)}`)
	}
	})
	console.log('\n')
})

// readdir.js
// /home/kali/programming/javascript/readdir.js
// you've found this JS file: readdir.js
//
//
// reduce.js
// /home/kali/programming/javascript/reduce.js
// you've found this JS file: reduce.js
//
//
// setIntTime.js
// /home/kali/programming/javascript/setIntTime.js
// you've found this JS file: setIntTime.js
//
// This is a directory: /home/kali/programming/javascript/.vscode
// This is a directory: /home/kali/programming/javascript/leet

