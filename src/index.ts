import express from "express";

const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
  res.send("hello world");
});

app.listen(PORT, () => {
  console.log("express app started to listen on port " + PORT);
});
