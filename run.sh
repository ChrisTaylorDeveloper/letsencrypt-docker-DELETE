docker-compose down
docker system prune -a
docker volume rm $(docker volume ls -q)
docker-compose up --build -d
docker-compose logs certbot
docker-compose logs nginx
