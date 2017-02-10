docker rm $(docker ps -a -q) || true
docker kill $(docker ps -q) || true
docker-compose build 
docker-compose up -d
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")