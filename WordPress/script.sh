#!/bin/bash

sudo apt update
sudo apt upgrade -y
apt install php php-fpm php-mysql
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
