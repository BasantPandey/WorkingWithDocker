# Docker Run Example

docker run -d -p 8080:3000 -v \${PWD}:/var/www -w "/var/www" node npm start
