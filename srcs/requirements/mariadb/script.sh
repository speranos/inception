#!/bin/sh
service mariadb start
mariadb -u root -e "CREATE DATABASE ${DB_NAME};"
mariadb -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';"
mariadb -u root -e "FLUSH PRIVILEGES;"