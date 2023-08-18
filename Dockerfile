FROM node:lts-alpine3.15
LABEL org.opencontainers.image.source = "https://github.com/Rablet/version-printer"
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./
COPY ["package.json", "package-lock.json*", "./"]

#RUN npm install
RUN npm install --production --silent && mv node_modules ../

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3500
CMD [ "node", "./bin/www" ]
