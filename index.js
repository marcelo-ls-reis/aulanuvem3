const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');

const app = express();
const port = 8080;

app.use(bodyParser.json());

const db = mysql.createConnection({
  host: '34.171.93.51',
  user: 'root',
  password: 'qwe123!!',
  database: 'pessoas_db'
});

db.connect(err => {
  if (err) throw err;
  console.log('Conectado ao banco de dados.');
});

app.get('/pessoas', (req, res) => {
  db.query('SELECT * FROM pessoas', (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

app.get('/pessoas/:cpf', (req, res) => {
  db.query('SELECT * FROM pessoas WHERE cpf = ?', [req.params.cpf], (err, result) => {
    if (err) throw err;
    res.send(result[0]);
  });
});

app.post('/pessoas', (req, res) => {
  const pessoa = req.body;
  db.query('INSERT INTO pessoas SET ?', pessoa, (err) => {
    if (err) throw err;
    res.send('Pessoa adicionada com sucesso.');
  });
});

app.put('/pessoas/:cpf', (req, res) => {
  const updatedPessoa = req.body;
  db.query('UPDATE pessoas SET ? WHERE cpf = ?', [updatedPessoa, req.params.cpf], (err) => {
    if (err) throw err;
    res.send('Pessoa atualizada com sucesso.');
  });
});

app.delete('/pessoas/:cpf', (req, res) => {
  db.query('DELETE FROM pessoas WHERE cpf = ?', [req.params.cpf], (err) => {
    if (err) throw err;
    res.send('Pessoa deletada com sucesso.');
  });
});

app.listen(port, () => {
  console.log(`API rodando na porta ${port}`);
});
