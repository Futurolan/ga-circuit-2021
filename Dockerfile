FROM node:alpine

EXPOSE 3000

WORKDIR /usr/src/client

RUN apk --no-cache add pkgconfig autoconf automake libtool nasm build-base zlib-dev python2

COPY . .
RUN npm rebuild node-sass
RUN npm install
RUN npm run-script build

CMD npm start
