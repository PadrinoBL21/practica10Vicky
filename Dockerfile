# Usa la imagen base de Node.js
FROM node:16-alpine

# Configura el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos de la aplicación
COPY package*.json ./
RUN npm install
COPY . .

# Exponer el puerto 3000
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
