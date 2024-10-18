FROM richarvey/nginx-php-fpm:latest

# Copia la aplicación Laravel
COPY . /var/www/html

# Instalar dependencias PHP
RUN apt-get update && apt-get install -y \
    php8.3-fpm \
    php8.3-mysql \
    # otros paquetes necesarios

# Establece los permisos correctos
RUN chown -R www-data:www-data /var/www/html

# Configura Nginx
COPY nginx-site.conf /etc/nginx/sites-available/default

# Configura PHP-FPM
RUN service php8.3-fpm start

# Expone los puertos
EXPOSE 80
