FROM node:18-alpine
WORKDIR /backend-ldla-dev/
COPY . .
COPY package.json ./
COPY package-lock.json ./ 
RUN npm install
CMD ["nodemon", "server.js"]
