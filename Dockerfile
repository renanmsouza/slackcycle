FROM node:13-alpine

WORKDIR '/app'

COPY package.json /app/package.json
RUN npm install --silent
RUN npm install react-scripts@3.3.1 -g --silent

COPY . .
RUN npm start

EXPOSE 8080