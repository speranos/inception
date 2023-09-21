#!/bin/bash



# Secure the MariaDB installation
# mysql_secure_installation

# By running `mysql_secure_installation`, you will be prompted to set the root password,
# remove anonymous users, disallow root login remotely, remove test databases, and
# reload the privilege tables. Follow the prompts to secure your installation.


# cat /etc/mysql/mariadb.conf.d/50-server.cnf | grep "bind"
sudo service mariadb start
# sleep 3
# chmod 777 /var/run/mysqld/mysqld.sock
mariadb -u root -e "CREATE DATABASE my_database;"
mariadb -u root -e "CREATE USER 'my_database_user'@'%' IDENTIFIED BY 'password123'";
# mariadb -u root -e "SELECT User FROM mariadb.user;"
# mariadb -u root -e "SHOW DATABASES;"
mariadb -u root -e "GRANT ALL PRIVILEGES ON my_database.* TO 'my_database_user'@'%';"

mariadb -u root -e "FLUSH PRIVILEGES;"
# while true; do
#     echo "This is an infinite loop."
#     sleep 5   # Wait for 5 seconds before the next iteration
# done

# mysql -u root -e "SHOW GRANTS FOR 'my_database_user'@0.0.0.0;"
# ls /var/run/mysqld

# Check the status of MariaDB to verify that it's running

# systemctl status mariadb


# CREATE USER 'aoueldma'@'localhost' IDENTIFIED BY 'passtest'
