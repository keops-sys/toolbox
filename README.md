## Install SSL

docker run --rm  -itd  \
  -v "$(pwd)/out":/acme.sh  \
  --net=host \
  --name=acme.sh \
  neilpang/acme.sh daemon

docker  exec  acme.sh --issue -d statik.keops.io --webroot
