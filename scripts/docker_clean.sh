#/bin/bash

docker rmi $(docker images -qf dangling=true)
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker volume prune
docker network prune
