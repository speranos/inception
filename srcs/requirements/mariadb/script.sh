#!/bin/sh

if [ -z "${DB_NAME}" ] || [ -z "${DB_USER}" ] || [ -z "${DB_PASS}" ]; then
  echo "Please make sure DB_NAME, DB_USER, and DB_PASS are set in the .env file."
  exit 1
fi

service mariadb start
mariadb -u root -e "CREATE DATABASE ${DB_NAME};"
mariadb -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';"
mariadb -u root -e "FLUSH PRIVILEGES;"