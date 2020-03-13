git add .
git commit -m "toto"
git push
sleep 3
ssh root@keops.io '/root/toolbox/start_traefik.sh'
