cd "$(dirname "$0")"

docker stop statik
docker rm statik

docker-compose up -d
