# Establece la imagen base
FROM node:14.16-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia todos los archivos de la aplicación
COPY . .

# Construye la aplicación de Angular en modo producción
RUN npm run build --prod

# Expone el puerto 80 para que pueda ser accesible desde el exterior
EXPOSE 80

# Inicia el servidor web para servir la aplicación de Angular
CMD ["npm", "run", "serve"]
