FROM node:13-alpine
# Diretório de trabalho(é onde a aplicação ficará dentro do container).
WORKDIR '/app'
# Instalando dependências da aplicação e armazenando em cache.
COPY package.json /app/package.json
RUN npm install --silent
RUN npm install react-scripts@3.3.1 -g --silent
# start app
COPY . .
RUN npm run build

FROM nginx
EXPOSE 8080
COPY --from=builder /app/build /usr/share/nginx/html