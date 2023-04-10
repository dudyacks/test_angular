FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Exponemos el puerto 80
EXPOSE 80

# Iniciamos la aplicación
CMD ["npm", "run", "start"]
