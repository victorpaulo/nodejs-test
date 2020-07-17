FROM node:8

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

RUN ls -l /app && ls -l /workspace/build

# Bundle app source
ADD . .

EXPOSE 3000
CMD [ "npm", "start" ]