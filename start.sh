DOCKER_CONTENT_TRUST=1 docker run -d --name dd-agent -v /var/run/docker.sock:/var/run/docker.sock:ro -v /proc/:/host/proc/:ro -v /sys/fs/cgroup/:/host/sys/fs/cgroup:ro -e DD_API_KEY=38539311d549a672804f13872c592d32 datadog/agent:7

cd "$(dirname "$0")"

git pull
docker stop traefik
docker rm traefik

docker-compose up
