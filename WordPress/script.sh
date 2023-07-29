#!/bin/bash

# apt update
# apt upgrade -y
# apt install curl -y
# apt install php php-fpm php-mysql -y
# curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# mv wp-cli.phar /usr/local/bin/wp
# wp core download --allow-root
# php-fpm -F

apt-get update
apt-get upgrade -y
apt-get install curl -y
apt-get install -y php7.3 php7.3-fpm php7.3-mysql default-mysql-client
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
mkdir /run/php
php-fpm7.3 -F
