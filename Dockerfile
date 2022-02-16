FROM node:17.5.0-alpine3.15

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN npm install

COPY . /usr/src/app/

CMD [ "npm", "start" ]

EXPOSE 8000