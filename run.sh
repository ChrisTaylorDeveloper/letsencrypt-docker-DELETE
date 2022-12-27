#!/bin/bash

docker-compose down

if [[ $RESET_HARD == "1" ]]
then
    docker system prune -a --force
    docker volume rm "$(docker volume ls -q)"
fi

docker-compose up --build -d nginx

# echo "certbot logs"
# docker-compose logs certbot
# echo "nginx logs"
# docker-compose logs nginx

docker-compose ps
docker-compose logs nginx
