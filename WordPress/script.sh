#!/bin/bash

# DB_CONT_NAME="172.17.0.4"
# DB_NAME="my_database"
# DB_USER="my_database_user"
# DB_PASS="password123"

# Update and install necessary packages
apt-get update -y
apt-get upgrade -y
apt-get install curl -y
apt-get install -y php7.3 php7.3-fpm php7.3-mysql default-mysql-client

# Download and set up WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

# Download WordPress core
wp core download --allow-root

# Create wp-config.php
wp config create --dbname="$DB_NAME" --dbuser="$DB_USER" --dbpass="$DB_PASS" --dbhost="$DB_CONT_NAME" --allow-root

# Create a directory for PHP-FPM socket
mkdir /run/php

# Start PHP-FPM
php-fpm7.3 -F
