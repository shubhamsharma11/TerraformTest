const express = require('express');
const cors = require('cors'); // Import the cors middleware
const app = express();
const port = 3000;

app.use(cors()); // Enable CORS for all routes

app.get('/', (req, res) => {
  res.header('Access-Control-Allow-Origin', '*'); // Replace * with the actual origin of your frontend
  res.send('Hello from Node.js!');
});


app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
