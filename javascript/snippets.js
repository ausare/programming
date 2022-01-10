// object shorthand notation

function name() {
	const names = "Jason,Frank,Sue,Pat".split(",")
	const lastNames = "Gifford,Gifford,Marceletti,Commins".split(",")

	// when the key is the same as the value there
	// there is no needs for the key	
	return { names, lastNames }
}

const ob = name()

console.log(ob.names, "\n", ob.lastNames, "\n\n")

// destructuring objects
const obj2 =
{
	data: "Some Data Is In Here",
	comment: "This is the first comment",
	twoDeep: {
		deepest: "This is the deepest object",
		deeper: {
			comment2: "This is the second comment",
			deepest13: {
				comment3: "This is the rabbit hole of understanding"
			}
		}
	}
}

//const {data, twoDeep:{deeper:{deepest13:{comment3}}}} = obj2

const { "twoDeep.deeper.deepest13": comment3 } = obj2

//console.log("Data first then the deepest: ", data, "\n", comment3)

const string = JSON.stringify(obj2)
console.log(string)

const parsed = JSON.parse(string)
console.log(parsed)
console.log("This is working now, too many french braces: ", comment3)

localStorage.clear()
localStorage.setItem("Jackie", "VanLoan")
localStorage.Jackie = "Gifford"
let local_name = localStorage.getItem("Jackie")
console.log("This is the name in local storage: ", local_name) // "Gifford
