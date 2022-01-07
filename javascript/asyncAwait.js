/*
fetch('todos.json').then(response => {
    if (response.ok == false) {
        console.log('This response is not ok')
    }
    console.log(response)
    return response.json()
}).then(data => {
    console.log(data)
}).catch(err => {
    console.log('This is the error:', err)
})
*/
// anything with async in front it will return a promise
const getTodos = async () => {
    /* 
        This first part of await will NEVER error
        but instead will look like a JSON error instead 
        of a network error or 404 error so must add a catch
    */
    const response = await fetch('tdo.json')
    if (response.status !== 200) {
        // this will be the message in err.message in the catch below
        throw new Error('This is my error message. Status is not 200!!!')
    }
    const data = await response.json()
    //    console.log(data)
}
getTodos()
    .then(data => console.log('resolved', data))
    .catch(err => console.log('There was an error -> ', err.message))
    // There was an error ->  This is my error message. Status is not 200!!!