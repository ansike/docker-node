const http = require("http");
const port = process.env.port || 8080;

console.log('port', port)
console.log('env', process.env.env)

const app = http.createServer((req, res) => {
  console.log("access", req.url);
  res.end(JSON.stringify({ url: req.url, headers: req.headers }));
});

app.listen(port);
console.log(`server start on ${port}`);
