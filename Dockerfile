FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

FROM nginxinc/nginx-unprivileged
COPY --from=node /app/dist/demo /usr/share/nginx/html
EXPOSE 80
