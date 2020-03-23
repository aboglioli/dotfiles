#/bin/bash

docker stop `docker ps -q`
docker rm `docker ps -aq`
docker volume prune
docker network prune
