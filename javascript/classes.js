// creating a class is like a blueprint for an object

class User {
    // first thing is to create a constructor
    constructor(username, email) {
        // set up properties 
        this.username = username
        this.email = email
    } // there is no need to added a comma here in classes

    login() {
        // regular shorthand function because arrow 
        // function would refer to the window object
        console.log(`User: '${this.username}' has logged in`)
    }
    logout() {
        console.log(`User: '${this.username}' has logged out`)
    }
}

const userOne = new User('Jason', 'jason.gifford@nielsen.com')
const userTwo = new User('Frank', 'fgifford@nycap.rr.com')

userOne.login()
console.log(userOne, userTwo)
// User { username: 'Jason', email: 'jason.gifford@nielsen.com' } User { username: 'Frank', email: 'fgifford@nycap.rr.com' }
console.log(userTwo.email)

// the 'new ' keyword
// 1 - it creates a new empty object{}
// 2 - it binds the value of 'this' to the new empty object
// 3 - it calls the constructor function to 'build' the object
