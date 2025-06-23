# Gunakan Nginx sebagai base image untuk menyajikan file statis
FROM nginx:alpine

# Hapus konfigurasi default Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Salin file konfigurasi Nginx kustom Anda
COPY nginx.conf /etc/nginx/conf.d/

# Salin semua file aplikasi web Anda ke direktori yang sesuai di dalam container
COPY . /usr/share/nginx/html

# Ekspos port 80
EXPOSE 80

# Jalankan Nginx ketika container dimulai
CMD ["nginx", "-g", "daemon off;"]