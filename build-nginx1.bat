# delete and rebuild dockerfile for nginx1
docker stop nginx1
docker rmi nginx1_image1
docker build -t nginx1_image1 -f .\Dockerfile-nginx1 .