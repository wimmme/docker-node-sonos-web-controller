# Create builder image
FROM node:15-alpine as builder

WORKDIR /app

RUN apk --no-cache add git && \
	rm -rf /app/node-sonos-web-controller && \
	git clone -q https://github.com/jishi/node-sonos-web-controller.git /app && \
	echo "{ \"port\": 8088, \"cacheDir\": \"./cache\" }" >> /app/settings.json && \
	npm install

# Create production image
FROM node:15-alpine

WORKDIR /app

# Copy the files that we need from the builder image
COPY --from=builder /app/node_modules /app/node_modules
COPY --from=builder /app/lib /app/lib/
COPY --from=builder /app/static /app/static/
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/server.js .
COPY --from=builder /app/settings.json .

EXPOSE 8088

CMD node server.js
