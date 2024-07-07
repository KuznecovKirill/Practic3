const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
let dbData;
const app = express();
app.use(cors());
app.use(express.json());
const conn = mysql.createConnection({
    host: 'MySQL-8.0',
    user: "root",
    database: "GoldCinema",
    password: "",
});

app.post('/', (req, res) => {
    // Данные из тела запроса доступны в req.body
    const {name, rating, comment, id} = req.body.data;
    console.log(`Name: ${name}, Rating: ${rating}, Comment: ${comment}, ID_Movie: ${id.id_Movie}`);
    conn.query('INSERT INTO Comments (`ID_Comment`, `ID_Movie`, `User`, `Rating_User`, `Comment_Text`) VALUES (?, ?, ?, ?, ?)', [
          null,
          id.id_Movie,
          name,
          rating,
          comment
        ]);
  });

function getMovies() {
    return new Promise((resolve, reject) => {
        conn.query('SELECT * FROM Movies', (error, rows, fields) => {
            if (error) {
                reject(error);
            } else {
                resolve(rows);
            }
        });
    });
}
function getComments() {
    return new Promise((resolve, reject) => {
        conn.query('SELECT * FROM Comments', (error, rows, fields) => {
            if (error) {
                reject(error);
            } else {
                resolve(rows);
            }
        });
    });
}



conn.connect(function (err) {
    if (err) {
        console.log(err);
    }
    else {
        console.log("OK");
    }

});
app.listen(8000, () => {
    console.log('app started')
});

conn.query('SELECT * FROM Movies', (err, result, field) => {
    dbData = result;
});

app.get('/', (req, res) => {
    Promise.all([getMovies(), getComments()])
        .then(([movies, comments]) => {
            res.send({
                movies: movies,
                comments: comments
            });
        });
    //res.send(comments);
})
