#!/bin/bash

echo "listen=9000" >> /etc/php/7.4/fpm/pool.d/www.conf
wp core download --allow-root
wp config create --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --dbhost=${DB_CONT_NAME} --allow-root
wp core install --url="https://aoueldma.42.fr/" --title="Mindblown" --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PASS} --admin_email=${WP_ADMIN_MAIL} --allow-root
wp user create ${WP_USER} ${WP_USER_MAIL} --role=author --user_pass=${WP_USER_PASS} --allow-root
php-fpm7.4 -F