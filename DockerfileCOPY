# Menggunakan image Node.js versi terbaru
FROM strapi/strapi

# Membuat direktori kerja di dalam container
WORKDIR /srv/app

# Menyalin file package.json dan package-lock.json ke direktori kerja
COPY package.json package-lock.json /app/

# Menginstal dependensi
RUN npm install

# Menyalin seluruh konten aplikasi ke direktori kerja
COPY . .

# Membangun aplikasi Strapi
RUN npm run build

# Mengatur variabel lingkungan untuk database SQLite
ENV DATABASE_CLIENT=sqlite
ENV DATABASE_FILENAME=.tmp/data.db

# Ekspor port 1337
EXPOSE 1337

# Menjalankan Strapi
CMD ["npm", "start"]