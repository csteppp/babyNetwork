# delete and rebuild dockerfile for nginx1
docker stop nginx2
docker rmi nginx2_image1
docker build -t nginx2_image1 -f .\Dockerfile-nginx2 .