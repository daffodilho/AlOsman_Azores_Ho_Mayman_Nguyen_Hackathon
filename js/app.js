const express = require('express');
const hbs = require('hbs');
const path = require('path');
const sql = require('../utils/sql');

const port = process.env.PORT || 5050;
const app = express();
app.use(express.static('public'));

app.set('view engine', 'hbs');
app.set('../views', path.join(__dirname + "../views"));

app.get('/', (req, res) => {
    res.render('layout', { tagline: "hey there!"});
})

app.listen(port, () => {
    console.log(`app is running on port ${port}`);
})

app.get('/layout', (req, res) => {
    
    sql.getConnection((err, connection) => {
      if (err) {
        return console.log(err.message);
      }
  
      let query = "SELECT * FROM Product_features";
  
      sql.query(query, (err, rows) => {
        connection.release();
        
        if (err) { return console.log(err.message); }
  
        console.log(rows);
  
        res.render('layout', rows[0]);
        res.render('layout', rows[1]);
      })
    })
})