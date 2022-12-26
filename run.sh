docker-compose down
docker system prune -a --force
docker volume rm $(docker volume ls -q)
docker-compose up --build -d
echo "certbot logs"
docker-compose logs certbot
echo "nginx logs"
docker-compose logs nginx
