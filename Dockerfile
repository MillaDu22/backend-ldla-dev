FROM node:18-alpine
WORKDIR /backend-ldla-dev/
COPY public/ /backend-ldla-dev/public
COPY src/ /backend-ldla-dev/src
COPY package.json /backend-ldla-dev/
RUN npm install
CMD ["nodemon", "server.js"]
