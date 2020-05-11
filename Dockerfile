FROM node:10

RUN pwd

WORKDIR /usr/src/app

RUN pwd

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]