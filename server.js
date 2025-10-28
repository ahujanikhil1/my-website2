const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('🚀 Hello from Node.js running on Cloud Run! by parth and nikhil');
});

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
