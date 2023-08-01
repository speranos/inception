#!/bin/bash



# Secure the MariaDB installation
# mysql_secure_installation

# By running `mysql_secure_installation`, you will be prompted to set the root password,
# remove anonymous users, disallow root login remotely, remove test databases, and
# reload the privilege tables. Follow the prompts to secure your installation.


cat /etc/mysql/mariadb.conf.d/50-server.cnf | grep "bind"
# mysql -u root

# Check the status of MariaDB to verify that it's running

# systemctl status mariadb


# CREATE USER 'aoueldma'@'localhost' IDENTIFIED BY 'passtest'
