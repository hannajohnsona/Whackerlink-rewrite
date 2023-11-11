var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var db = require('../db');

router.get('/', (req, res) => {
    db.query('SELECT DISTINCT name FROM zone ORDER BY name ASC', function(error, data)
    {
res.render('index', {title: "express", zoneData : data, networkName: "test"})});
});
router.get('/radio',(req, res, selected_channel)=>{
  const queryrid = "SELECT id FROM rid_acl";
  const querynetworkName = "SELECT networkName FROM settings";
  const queryzone = "SELECT name FROM zone";
  const querymode = "SELECT mode FROM zone";
  try {
      // Get connection once
      //const conn = getConn();
      // Techniques: Array destructuring and Promise resolving in batch
      let directions, sousDirectios, departments;
      Promise.all(
      [
          db.query(queryrid,(err, rows)=>{rid=rows;} ),
          db.query(querynetworkName,(err, rows)=>{networkName=rows;}),
          db.query(queryzone,(err, rows)=>{zone=rows;}),
          db.query(querymode,(err, rows)=>{mode=rows;}),
      ]
      );
      setTimeout(() => {
      res.render("radio", {
      data1: rid,
      data2: networkName,
      data3: zone,
      selected_channel: req.query.channel,
      data4: mode,
      });},100);
  } catch (error) {
  console.log(error);
  res.end();
  }
  });
exports.create = (req, res) => {
    const { first_name, last_name, email, phone, comments } = req.body;
    let searchTerm = req.body.search;
  
    // User the connection
    connection.query('INSERT INTO user SET first_name = ?, last_name = ?, email = ?, phone = ?, comments = ?', [first_name, last_name, email, phone, comments], (err, rows) => {
      if (!err) {
        res.render('radio', { alert: 'User added successfully.' });
      } else {
        console.log(err);
      }
      console.log('The data from user table: \n', rows);
    });
  }
module.exports = router;