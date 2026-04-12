const db = require("./db");
const express = require('express');
const app = express();
const PORT = 3000;
const categoryRoutes = require("./routes/categoryRoutes");

app.use(express.json());
app.use("/api/categories", categoryRoutes);

app.get("/", (req, res) => {
  res.send("Server is running");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});