const express = require('express');

const PORT = process.env.port || 8080;

const app = express();

app.get('/', (req, res) => {
    res.send('Hello Express + PostGres + Node.js')
});

app.listen(PORT, () => console.log(`Server running at port http://localhost:${PORT}`));
