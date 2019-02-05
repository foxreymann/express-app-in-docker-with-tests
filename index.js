'use strict'

const app = require('express')()
const hello = require('./routes/hello')

// Constants
const PORT = 8080
const HOST = '0.0.0.0'

// App
app.get('/', hello)

app.listen(PORT, HOST)
console.log(`Running on http://${HOST}:${PORT}`)
