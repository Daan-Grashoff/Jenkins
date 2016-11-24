var express = require('express')
var app = express()

app.get('/', function(req, res) {
    res.send('hallo')
})

app.listen(3000, function() {
    console.log('example app listening on port localhost:3000!')
})