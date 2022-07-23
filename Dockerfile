FROM node:14-buster-slim

WORKDIR /usr/app

COPY . .

ENV port=8080\
  env=production

EXPOSE 8080

CMD node index.js