# Imagen base de Node.js
FROM node:latest as node

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de la aplicación en el contenedor
COPY . .

# Instalar las dependencias y construir la aplicación
RUN npm install && ng build --prod

# Imagen base de Nginx
FROM nginx:latest

# Copiar los archivos construidos en el contenedor de Nginx
COPY --from=node /app/dist/demo /usr/share/nginx/html
