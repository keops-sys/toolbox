cd "$(dirname "$0")"

docker stop traefik
docker rm traefik

docker-compose up -d
