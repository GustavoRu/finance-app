# Usa una imagen base con Nginx y PHP
FROM richarvey/nginx-php-fpm:3.1.6

EXPOSE 8080

# Copia todos los archivos de tu proyecto al contenedor
COPY . .

# Configuración de la imagen
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

# Configuración de Laravel
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr

# Permitir que Composer se ejecute como root
ENV COMPOSER_ALLOW_SUPERUSER 1

# Comando para iniciar el contenedor
CMD ["/start.sh"]

