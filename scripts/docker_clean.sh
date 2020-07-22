#/bin/bash

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -qf dangling=true)
docker volume prune
docker network prune
