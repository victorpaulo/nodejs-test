FROM node:latest

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN echo "hello 1.0"

RUN npm install

# Bundle app source
COPY . /app

EXPOSE 3000
CMD [ "npm", "start" ]