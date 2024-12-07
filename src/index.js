// Import required modules
const express = require('express');

// Create an instance of Express
const app = express();

// Define a port for the server
const PORT = process.env.PORT || 3000;

// Define a simple route
app.get('/', (req, res) => {
    res.send('Hello, World! Welcome to my Dockerized Node.js application.');
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
