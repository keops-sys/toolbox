docker stop runner
docker rm runner

docker pull drone/drone:1

export DRONE_GITHUB_CLIENT_ID=4f6ccc6c5ae6a070a911
export DRONE_GITHUB_CLIENT_SECRET=6e843875b2f1f33046ddb0e15fffec1588e9b71b
export DRONE_RPC_SECRET=bea26a2221fd8090ea38720fc445eca7
export DRONE_SERVER_HOST=drone.keops.io
export DRONE_SERVER_PROTO=http


docker run \
  --volume=/var/lib/drone:/data \
  --env=DRONE_GITHUB_CLIENT_ID={{DRONE_GITHUB_CLIENT_ID}} \
  --env=DRONE_GITHUB_CLIENT_SECRET={{DRONE_GITHUB_CLIENT_SECRET}} \
  --env=DRONE_RPC_SECRET={{DRONE_RPC_SECRET}} \
  --env=DRONE_SERVER_HOST={{DRONE_SERVER_HOST}} \
  --env=DRONE_SERVER_PROTO={{DRONE_SERVER_PROTO}} \
  --publish=80:80 \
  --publish=443:443 \
  --restart=always \
  --detach=true \
  --name=drone \
  drone/drone:1


  docker pull drone/drone-runner-docker:1

  docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e DRONE_RPC_PROTO=http \
  -e DRONE_RPC_HOST={{DRONE_SERVER_HOST}} \
  -e DRONE_RPC_SECRET={{DRONE_RPC_SECRET}} \
  -e DRONE_RUNNER_CAPACITY=2 \
  -e DRONE_RUNNER_NAME=${HOSTNAME} \
  -p 3000:3000 \
  --restart always \
  --name runner \
  drone/drone-runner-docker:1