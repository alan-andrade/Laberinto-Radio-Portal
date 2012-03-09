var http = require('http');

http.createServer(function (request,response) {
	response.writeHead(200, {'Content-Type':'text/plain'});
	response.end('This is the first NODEjs Example!');
}).listen(8124);

console.log('Running on port 8124');