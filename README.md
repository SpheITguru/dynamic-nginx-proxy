## These are commands to build and run the docker.

docker build -t custom-nginx .

docker run -d -p 80:80 -e PORT=5000 custom-nginx
