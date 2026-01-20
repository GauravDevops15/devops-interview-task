const express = require("express");
const os = require("os");
const client = require("prom-client");

const app = express();
const PORT = process.env.PORT || 3000;

// Greeting message from ConfigMap (later)
const GREETING_MESSAGE = process.env.GREETING_MESSAGE || "Hello World";

// Enable default Prometheus metrics
client.collectDefaultMetrics();

// Health endpoint
app.get("/health", (req, res) => {
  res.json({
    status: "healthy",
    pod: os.hostname(),
    message: GREETING_MESSAGE
  });
});
// Metrics endpoint for Prometheus
app.get("/metrics", async (req, res) => {
  res.set("Content-Type", client.register.contentType);
  res.end(await client.register.metrics());
});

// Start server
app.listen(PORT, () => {
  console.log(`Node app running on port ${PORT}`);
});
