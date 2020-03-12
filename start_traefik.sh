cd "$(dirname "$0")"

git pull 
docker stop traefik
docker rm traefik

docker-compose up -d
