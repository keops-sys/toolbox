git add .
git commit -m "toto"
git push
sleep 5
ssh root@keops.io '/root/toolbox/start_traefik.sh'
