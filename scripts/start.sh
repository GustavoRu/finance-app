#!/usr/bin/env bash
echo "Running composer"
# composer global require hirak/prestissimo
composer global remove hirak/prestissimo
composer self-update
echo "PASE EL UPDATE"
composer install --no-dev --working-dir=/var/www/html
echo "Caching config..."
php artisan config:cache
echo "Caching routes..."
php artisan route:cache
echo "Running migrations..."
php artisan migrate --force
echo "HELLO HDP..."