import express from "express";

const app = express();

app.use(express.json());

const PORT = 3000;

app.use("/", (req, res) => {
  return res.status(200).json({ message: "Hello , Devops" });
});
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
