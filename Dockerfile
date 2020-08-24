FROM node:13-alpine

COPY . '/app'
WORKDIR '/app'

RUN npm install --silent
RUN npm install react-scripts@3.3.1 -g --silent

EXPOSE 8080

CMD ["npm","start"]

