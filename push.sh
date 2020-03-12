git add .
git commit -m "toto"
git push
wait 5
ssh root@keops.io '/root/toolbox/start_traefik.sh'
