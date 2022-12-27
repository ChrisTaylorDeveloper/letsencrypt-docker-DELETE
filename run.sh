#!/bin/bash

docker-compose down

if [[ $RESET_HARD == "1" ]]
    docker system prune -a --force;
    docker volume rm $(docker volume ls -q);
fi

# docker-compose up --build -d
# echo "certbot logs"
# docker-compose logs certbot
# echo "nginx logs"
# docker-compose logs nginx
