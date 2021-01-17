FROM node:15.5.1-alpine3.10
WORKDIR /cook_pod

COPY package.json /cook_pod/package.json
COPY package-lock.json /cook_pod/package-lock.json
RUN npm install

COPY . /cook_pod

EXPOSE 3000
