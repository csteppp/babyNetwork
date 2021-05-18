# delete and rebuild dockerfile for my haproxy
docker stop myhaproxy
docker rmi myhaproxy_image1
docker build -t myhaproxy_image1 -f .\Dockerfile-myhaproxy .