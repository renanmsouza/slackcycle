FROM node:13-alpine
# Diretório de trabalho(é onde a aplicação ficará dentro do container).

# Instalando dependências da aplicação e armazenando em cache.
COPY package.json /frontend/package.json
RUN npm install --silent
RUN npm install react-scripts@3.3.1 -g --silent
# start app
RUN npm start