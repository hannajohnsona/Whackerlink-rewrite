var server = require('socket.io');
var express = require('express');
var indexRouter = require("./routes/index.js")
var app = express();
app.set('views', 'views');
app.set('view engine', 'ejs');
app.use(express.json());
app.use(express.urlencoded({extended:true}));
app.use(express.static('public'));
const mysql = require("mysql");
const { Server: SocketIOServer, default: socketIO  } = require("socket.io");
const dotenv = require("dotenv").config();

const io = require("socket.io-client");
const userStatus = {
    microphone: false,
    mute: false,
    username: "9998",
    online: true,
    channel: "Main"
};

app.use('/', indexRouter);
app.use(express.static(__dirname + '/public'));

app.listen(3000, ()=> {
    console.log(`express is running on port 30000`);
});