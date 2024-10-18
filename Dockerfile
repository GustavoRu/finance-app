FROM richarvey/nginx-php-fpm:1.7.2
COPY . .

# Configura Nginx
COPY ./conf/nginx/nginx-site.conf /etc/nginx/sites-available/default

# Image config
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1
# Laravel config
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr
# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1
CMD ["/start.sh"]


# Configura PHP-FPM
# RUN service php8.3-fpm start

# Expone los puertos
EXPOSE 80
