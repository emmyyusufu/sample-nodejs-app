const express = require('express')
const app = express()
app.get('/', (req, res) => {
    res.send('Hello world from a PPCRS Node.js app!')
})
app.listen(6000, () => {
    console.log('Server is up on 6000')
})