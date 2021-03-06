var express = require('express');

var fs = require('fs');

var app = express.createServer(express.logger());

var file = fs.readFileSync("index.html");

var file_string = file.toString();

app.get('/', function(request, response) {
  response.send(file_string);
});

var port = process.env.PORT || 8080;
app.listen(port, function() {
  console.log("Listening on " + port);
});
