docker network create web
mkdir -p /opt/traefik
touch /opt/traefik/docker-compose.yml
touch /opt/traefik/acme.json && chmod 600 /opt/traefik/acme.json
touch /opt/traefik/traefik.toml
