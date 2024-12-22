# Menggunakan Node.js sebagai base image
FROM node:18-alpine

# Direktori kerja
WORKDIR /usr/src/app

# Menyalin file package.json dan package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Menyalin seluruh aplikasi ke dalam container
COPY . .

# Build aplikasi Strapi
RUN npm run build

# Mengatur variabel lingkungan untuk SQLite
ENV DATABASE_CLIENT=sqlite
ENV DATABASE_FILENAME=.tmp/data.db

# Expose port default Strapi
EXPOSE 1337

# Menjalankan Strapi
CMD ["npm", "start"]
