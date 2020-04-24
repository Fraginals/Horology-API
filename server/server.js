var logger = require("morgan"),
cors = require("cors"),
http = require("http"),
express = require("express"),
bodyParser = require("body-parser"),
mongoose = require('mongoose'),
require('dotenv').config()

var app = express();     
var port = process.env.PORT || 3000;
var userCtrl = require('./user-controller');    //check here

app.use(logger('dev'));
app.use(bodyParser.json());
app.use(require('./routes'));  ///check here!

app.listen(port, function(err){
    console.log("Listening on Port: " + port)
});

mongoose.connect('process.env.MONGODDB_URL');
mongoose.connection.on('error', (err) => { 
    console.log('Mongodb Error: ', err); 
    process.exit();
});
mongoose.connection.on('connected', () => { 
    console.log('MongoDB is successfully connected');
});