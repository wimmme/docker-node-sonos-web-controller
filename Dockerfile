FROM node:15-alpine

WORKDIR /app

RUN apk --no-cache add git

RUN rm -rf /app/node-sonos-web-controller && git clone -q https://github.com/jishi/node-sonos-web-controller.git /app

RUN echo "{ \"port\": 8088, \"cacheDir\": \"./cache\" }" >> /app/settings.json 
 
RUN npm install 

EXPOSE 8088

CMD node server.js

