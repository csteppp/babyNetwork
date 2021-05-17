docker stop mynginx1
docker rm mynginx1 
docker run --name mynginx1 -p 91:80 -d nginx1_image1