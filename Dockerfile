FROM node:15-alpine

WORKDIR node-sonos-web-controller

RUN apk --no-cache add git 
  
RUN git clone -q https://github.com/jishi/node-sonos-web-controller.git .

RUN npm install > /dev/null

EXPOSE 8080

HEALTHCHECK --interval=1m --timeout=2s \
  CMD curl -LSs http://localhost:8080 || exit 1

CMD node server.js

