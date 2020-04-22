var logger = require("morgan"),
    cors = require("cors"),
    http = require("http"),
    express = require("express"),
    bodyParser = require("body-parser"),
    mongoose = require('mongoose');

var app = express();
var port = process.env.PORT || 3000;
var server = require('./app');////here

app.use(logger('dev'));
app.use(bodyParser.json());
app.use(require('./app'));    //here

app.listen(port, function(err){
    console.log("Listening on Port: " + port)
});

mongoose.connect(process.env.MONGODB.URL);
    //  'mongodb+srv://test:ccttestuser@cluster0-0g4sv.mongodb.net/test?retryWrites=true&w=majority'
mongoose.connection.on('error', (err) => { 
    console.log('Mongodb Error: ', err); 
    process.exit();
});
mongoose.connection.on('connected', () => { 
    console.log('MongoDB is successfully connected');
});