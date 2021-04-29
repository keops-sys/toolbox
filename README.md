<p align="center">
  <a href="https://www.ctc.io">
    <img alt="Gatsby" src="https://github.com/containous/traefik/raw/master/docs/content/assets/img/traefik.logo.png" width="100" />
  </a>
</p>
<h1 align="center">
  Traefik for KEOPS servers
</h1>

Setup for PROD servers using docker 
Letsencrypt + DigitalOcean + Traefik + Docker + Images (at your taste)

# 1. Install Traefik (SSL with letsencrypt)



⚠️ Make sure dns are linked to traefik.keops.io

⚠️ Make sure to link domains of projects to server ip

## 2. Generate SSH key
`ssh-keygen`

Then add key to github **deploy key settings** https://github.com/settings/ssh/new


`cat .ssh/id_rsa.pub`

`git clone git@github.com:keops-sys/toolbox.git`

`docker network create web`

## 3. Edit configuration


1. Edit traefik subdomain **traefik.XXXXX.com** in [docker-compose.yml](https://github.com/keops-sys/toolbox/blob/master/docker-compose.yml)

2. `chmod 600 acme.json`

## 4. Start Trafeik


`cd toolbox`

```./start.sh```

🚀Visit [https://traefik.XXXXXXX.com](https://traefik.XXXXXXX.com)

## 5. Start Trafeik

Staret you container with correct docker-compose.yml


## Kill all containers

```./reset.sh```
