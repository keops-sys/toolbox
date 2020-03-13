# DEV ONLY FOR LAN !!
# heimdall 666
# dockprom
# portainer

cd "/root/toolbox"


# CLEAN and KILL all containers
docker rm -f $(docker ps -a -q); docker rmi $(docker images -q)


cd /root && cd /root/dockprom && ADMIN_USER=admin ADMIN_PASSWORD=admin docker-compose up -d

#cd ../ && docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
