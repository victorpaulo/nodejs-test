FROM node:latest

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json ./app

# Bundle app source
COPY . .

RUN npm install

EXPOSE 3000
CMD [ "npm", "start" ]