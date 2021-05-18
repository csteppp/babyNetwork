# delete and rebuild dockerfile for nginx splash page
docker stop nginxsplash
docker rmi nginxsplash_image1
docker build -t nginxsplash_image1 -f .\Dockerfile-nginxsplash .