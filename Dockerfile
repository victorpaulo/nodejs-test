FROM node:8

USER node

RUN mkdir -p /usr/src/app && chown -R node:node /usr/src/app

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY --chown=node:node . .

EXPOSE 3000
CMD [ "npm", "start" ]