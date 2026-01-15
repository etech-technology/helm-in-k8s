const express = require("express");
const app = express();

app.get("/", (req, res) => res.send("Hello from Node app deployed with Helm + GitHub Actions!"));
app.get("/healthz", (req, res) => res.status(200).send("ok"));

const port = process.env.PORT || 8080;
app.listen(port, "0.0.0.0", () => console.log(`Listening on ${port}`));
