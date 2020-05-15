<p align="center">
  <a href="https://www.ctc.io">
    <img alt="Gatsby" src="https://github.com/containous/traefik/raw/master/docs/content/assets/img/traefik.logo.png" width="100" />
  </a>
</p>
<h1 align="center">
  Traefik for KEOPS servers
</h1>

Install Traefik (SSL with letsencrypt)


⚠️ Make sure dns are linked to traefik.keops.io

⚠️ Make sure to link domains of projects to server ip

## Generate SSH key
`ssh-keygen`

Then add key to github **deploy key settings**

`cat .ssh/id_rsa.pub`

`git clone git@github.com:keops-sys/toolbox.git`

`docker network create web`

## Start Trafeik


`cd toolbox`

```./start.sh```


## Kill all containers

```./reset.sh```
