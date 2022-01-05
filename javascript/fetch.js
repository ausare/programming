//much less code written using fetch than XMLHttpRequest
fetch('todos.json').then(response => {
    /*
        if the above file or location doesn't exist
        the caught error will be:
        This is the error: SyntaxError: JSON.parse: unexpected character at line 1 column 1 of the JSON data
    */
    if (response.ok == false) {
        // Response { type: "basic", url: "http://localhost:5500/tods.json", redirected: false, status: 404, ok: false, statusText: "Not Found", headers: Headers, body: ReadableStream, bodyUsed: true }
        console.log('This response is not ok')
    }
    // Response { type: "basic", url: "http://localhost:5500/todos.json", redirected: false, status: 200, ok: true, statusText: "OK", headers: Headers, body: ReadableStream, bodyUsed: false }
    console.log(response)
    return response.json()
}).then(data => {
    console.log(data)
}).catch(err => {
    console.log('This is the error:', err)
})