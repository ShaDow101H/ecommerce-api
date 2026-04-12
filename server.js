const db = require("./db");
const express = require('express');
const app = express();
const PORT = 3000;
const categoryRoutes = require("./routes/categoryRoutes");

const productRoutes = require("./routes/productRoutes");

app.use((req, res, next) => {
  console.log("METHOD:", req.method);
  console.log("URL:", req.url);
  console.log("BODY:", req.body);
  next(); // Bu mütləq olmalıdır ki, sorğu dayanmasın, davam etsin.
});
app.use("/categories", categoryRoutes);

app.use("/products", productRoutes);

app.get("/", (req, res) => {
  res.send("Server is running");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});