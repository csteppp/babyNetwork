README

A baby network set up with a ACL based haproxy that routes to one of two servers based on context root. 

Haproxy: port 80. Has custom error page configured for 404. 404 ONLY! more tbd. Redirects users to different nginx instances based on context root.
nginx1: port 91. Contains foo context.
nginx2: port 92. Contains bar context. 
nginxsplash: port 90. Contains splash page. 

For more details on custom haproxy pages, see https://www.haproxy.com/blog/serve-dynamic-custom-error-pages-with-haproxy/.

To Run:

1. Run 'docker-compose build'
2. Run 'docker-compose up'
3. Try the following informative urls to see features work:
    http://localhost   -> shows splash page with index going through haproxy
	http://localhost/foo/foo.html -> Shows foo application going through haproxy
	http://localhost/bar/bar.html -> shows bar application going through haproxy
	http://localhost/dne -> shows custom haproxy 404
	http://localhost:91/foo/foo.html -> shows foo application going straight to nginx
	http://localhost:92/bar/bar.html -> shows bar application going straight to nginx
	http://localhost:90 -> shows splash page going straight to nginx
	
	
Useful commands to keep in mind:

docker ps -a 
docker exec -it nginx1 sh


A manual build with docker, not docker-compose:

docker stop nginx1:tag
docker rmi nginx1_image1:tag
docker build -t nginx1_image1:tag -f .\Dockerfile-nginx1 .