// creating a class is like a blueprint for an object

class User {
    // first thing is to create a constructor
    constructor(username, email) {
        // set up properties 
        // 'this' refers to this specific instance
				// when the object was created
				this.username = username
        this.email = email
				this.incNum = 0
    } // there is no need to added a comma here in classes

    login() {
        // regular shorthand function because arrow 
				// function would refer to the window object
        console.log(`User: '${this.username}' has logged in`)
			  return this // returns this instance so that I can chain methods
			  // if return is excluded you'll get the following error
				// TypeError: Cannot read property 'increase' of undefined
    }

    logout() {
        console.log(`User: '${this.username}' has logged out`)
				return this
    }

		increase(){
				this.incNum += 1
				return this
		}

}

class Admin extends User {
	deleteUser(){
		users = users.filter(u => u.username !== users.username)
	}
}


const userOne = new User('Jason', 'jason.gifford@nielsen.com')
const userTwo = new User('Frank', 'fgifford@nycap.rr.com')
const userAdmin = new Admin('J-Dogg', 'jesusfcknchrist@gmail.com')


userOne.login()
console.log(userOne, userTwo)
// User { username: 'Jason', email: 'jason.gifford@nielsen.com' } User { username: 'Frank', email: 'fgifford@nycap.rr.com' }
console.log(userTwo.email)

userOne.login().increase().increase().logout()

users = [userOne, userTwo, userAdmin]

console.log('This is before deleting a user:\n ', users)
userAdmin.deleteUser(userTwo)

console.log('This is after deleting a user:\n', users)

// the 'new ' keyword
// 1 - it creates a new empty object{}
// 2 - it binds the value of 'this' to the new empty object
// 3 - it calls the constructor function to 'build' the object

/*
Change
	Tabs
		To
			Match
				At
					Work
*/
