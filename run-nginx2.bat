docker stop mynginx2 
docker rm mynginx2 
docker run --name mynginx2 -p 90:80 -d nginx2_image1