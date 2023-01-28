const express = require("express");

const app = express();
const PORT = 8000;

app.get("/", (req, res) => {
  console.log("sdfsdfsf");
  res.send("hello world");
});

app.listen(PORT, () => {
  console.log("express app started to listen on port " + PORT);
});
