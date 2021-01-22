# docker-node-sonos-web-controller
Docker wrapper for https://github.com/jishi/node-sonos-web-controller

[![GitHub issues](https://img.shields.io/github/issues/wimmme/docker-node-sonos-web-controller.svg)](https://github.com/wimmme/docker-node-sonos-web-controller/issues)
[![GitHub forks](https://img.shields.io/github/forks/wimmme/docker-node-sonos-web-controller.svg)](https://github.com/wimmme/docker-node-sonos-web-controller/network)
[![GitHub stars](https://img.shields.io/github/stars/wimmme/docker-node-sonos-web-controller.svg)](https://github.com/wimmme/docker-node-sonos-web-controller/stargazers)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/wimmme/docker-node-sonos-web-controller/master/LICENSE)
[![Docker Stars](https://img.shields.io/docker/stars/wimmme/docker-node-sonos-web-controller.svg)](https://hub.docker.com/r/wimmme/docker-node-sonos-web-controller)
[![Docker Pulls](https://img.shields.io/docker/pulls/wimmme/docker-node-sonos-web-controller.svg)](https://hub.docker.com/r/wimmme/docker-node-sonos-web-controller)
[![Docker Automated buil](https://img.shields.io/docker/automated/wimmme/docker-node-sonos-web-controller.svg)](https://hub.docker.com/r/wimmme/docker-node-sonos-web-controller)
[![Docker Build Statu](https://img.shields.io/docker/build/wimmme/docker-node-sonos-web-controller.svg)](https://hub.docker.com/r/wimmme/docker-node-sonos-web-controller)
[![Docker Automated buil](https://img.shields.io/docker/automated/chrisns/docker-node-sonos-http-api.svg)](https://hub.docker.com/r/chrisns/docker-node-sonos-http-api)
[![Docker Build Statu](https://img.shields.io/docker/build/chrisns/docker-node-sonos-http-api.svg)](https://hub.docker.com/r/chrisns/docker-node-sonos-http-api)

## Usage
Refer to https://github.com/jishi/node-sonos-web-controller for all the configuration details

Then run the docker image:
```shell
docker run --net=host --name sonos-web-controller --restart=always -d wimmme/docker-node-sonos-web-controller
```
Use -p portnumberhost:8080 to remap the webinterface to anothe port on your host

Important  is using the *host* networking interface so that it can discover your Sonos devices.
