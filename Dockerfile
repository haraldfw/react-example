FROM risingstack/alpine:3.3-v4.2.6-1.1.3

COPY server/package.json /usr/src/node-app/server/package.json
WORKDIR /usr/src/node-app/server
RUN npm install

COPY client/ /usr/src/node-app/client/

COPY server/server.js server.js

EXPOSE 3000
CMD ["node", "--harmony", "server.js"]
