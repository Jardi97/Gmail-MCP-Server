# Usa una imagen de Node.js con soporte para TypeScript
FROM node:18

# Establece el directorio de trabajo
WORKDIR /app

# Copia todos los archivos del repositorio
COPY . .

# Instala las dependencias
RUN npm install

# Compila el código TypeScript
RUN npm run build

# Expón el puerto (opcional, útil si usarás HTTP en el futuro)
EXPOSE 3000

# Ejecuta el servidor
CMD ["npm", "start"]
