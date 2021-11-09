FROM node:14-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

#RUN mkdir -p /home/app
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

CMD ["node", "server.js"]