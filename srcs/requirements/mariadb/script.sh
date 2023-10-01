# /bin/sh
# echo dbname==== ${DB_NAME}
# echo dbuser==== ${DB_USER}
# echo dbpass==== ${DB_PASS}
# service mariadb start
# mariadb -u root -e "CREATE DATABASE ${DB_NAME};"
# mariadb -u root -e "CREATE USER ${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}'";
# mariadb -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%'  IDENTIFIED BY '${DB_PASS}'";
# mariadb -u root -e "FLUSH PRIVILEGES;"
# if [ -f .env ]; then
#   # Load environment variables from .env file
#   export $(cat .env | xargs)
# else
#   echo ".env file not found. Please create one with the required environment variables."
#   exit 1
# fi

# if [ -z "${DB_NAME}" ] || [ -z "${DB_USER}" ] || [ -z "${DB_PASS}" ]; then
#   echo "Please set the environment variables DB_NAME, DB_USER, and DB_PASS."
#   exit 1
# fi

# service mariadb start
# mariadb -u root -e "CREATE DATABASE ${DB_NAME};"
# mariadb -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';"
# mariadb -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';"
# mariadb -u root -e "FLUSH PRIVILEGES;"

# This script will first check if the required environment variables are set and exit with an error message if any of them are missing. Please make sure that ${DB_NAME}, ${DB_USER}, and ${DB_PASS} are correctly defined in your environment or set them before running the script.

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