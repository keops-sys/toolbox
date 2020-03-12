docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
cp traefik.toml /opt/traefik/traefik.toml
