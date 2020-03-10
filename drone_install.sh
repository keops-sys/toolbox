#!/usr/bin/env bash

set -ex

GITHUB_CLIENT_ID=4f6ccc6c5ae6a070a911
GITHUB_CLIENT_SECRET=6e843875b2f1f33046ddb0e15fffec1588e9b71b
SHARED_SECRET=bea26a2221fd8090ea38720fc445eca7
SERVER_HOST=drone.keops.io
SERVER_PROTOCOL=https

docker run \
  --volume=/var/run/docker.sock:/var/run/docker.sock \
  --volume=/var/lib/drone:/data \
  --env=DRONE_GITHUB_SERVER=https://github.com \
  --env=DRONE_GITHUB_CLIENT_ID=${GITHUB_CLIENT_ID} \
  --env=DRONE_GITHUB_CLIENT_SECRET=${GITHUB_CLIENT_SECRET} \
  --env=DRONE_AGENTS_ENABLED=true \
  --env=DRONE_RPC_SECRET=${SHARED_SECRET} \
  --env=DRONE_SERVER_HOST=${SERVER_HOST} \
  --env=DRONE_SERVER_PROTO=${SERVER_PROTOCOL} \
  --env=DRONE_TLS_AUTOCERT=true \
  --publish=80:80 \
  --publish=443:443 \
  --restart=always \
  --detach=true \
  --name=drone \
  drone/drone:1

set -ex

SHARED_SECRET=eb83xxe19a3497f597f53044250df6yy
AGENT_SERVER_HOST=https://drone.yourdomain.com
SERVER_PROTOCOL=https

docker run \
  --volume=/var/run/docker.sock:/var/run/docker.sock \
  --env=DRONE_RPC_SERVER=${AGENT_SERVER_HOST} \
  --env=DRONE_RPC_SECRET=${SHARED_SECRET} \
  --env=DRONE_RUNNER_CAPACITY=2 \
  --env=DRONE_RUNNER_NAME=${HOSTNAME} \
  --restart=always \
  --detach=true \
  --name=drone-agent-02 \
  drone/agent:1