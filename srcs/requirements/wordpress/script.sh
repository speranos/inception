#!/bin/bash

echo "listen=9000" >> /etc/php/7.4/fpm/pool.d/www.conf
wp core download --allow-root

wp config create --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --dbhost=${DB_CONT_NAME} --allow-root

php-fpm7.4 -F