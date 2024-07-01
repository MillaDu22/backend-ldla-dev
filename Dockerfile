# Utilise une image de base Node.js
FROM node:18-alpine

# Définit le répertoire de travail dans le conteneur
WORKDIR /backend-ldla-dev

COPY . /backend-ldla-dev
# Installe les dépendances de l'application

RUN npm install
RUN npm remove bcrypt
RUN npm install bcrypt
RUN npm install -g nodemon

# Expose le port de l'application 
EXPOSE 8100

# Commande pour démarrer l'application
CMD ["nodemon", "server.js"]