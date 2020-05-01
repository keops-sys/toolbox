<p align="center">
  <a href="https://www.ctc.io">
    <img alt="Gatsby" src="https://www.gatsbyjs.org/monogram.svg" width="60" />
  </a>
</p>
<h1 align="center">
  Toolbox for Keops Servers
</h1>

[![SSL Rating](https://sslbadge.org/?domain=statik.keops.io)](https://www.ssllabs.com/ssltest/analyze.html?d=statik.keops.io)


Install Traefik (handle SSL with letsencrypt)


## Generate SSH key
`ssh-keygen`

Then add key to github **deploy key settings**

`cat .ssh/id_rsa.pub`

`git clone git@github.com:keops-sys/toolbox.git`

`docker network create web`

## Start Trafeik


`cd toolbox`
```./start_traefik.sh```


## Kill all containers

```./reset.sh```
