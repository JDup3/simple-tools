FROM  node:18.4.0-alpine3.16

# Add bash to make package scripts easier to write
RUN apk add bash

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN npm install

EXPOSE 8080