# docker-node-sonos-web-controller
Docker wrapper for https://github.com/jishi/node-sonos-web-controller

## Usage
Refer to https://github.com/jishi/node-sonos-web-controller for all the configuration details

Then run the docker image:
```shell
docker run \
  --net=host \
  --name sonos-web-controller \
  --restart=always \
  -d \
  -v `pwd`/cache:/app/cache \
  wimmme/docker-node-sonos-web-controller
```

Important  is using the *host* networking interface so that it can discover your Sonos devices.
