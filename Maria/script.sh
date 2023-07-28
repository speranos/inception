#!/bin/bash

# Update the package list and upgrade existing packages
sudo apt update
sudo apt upgrade -y

# Install MariaDB
sudo apt install -y mariadb-server

# Start MariaDB service
sudo systemctl start mariadb

# Enable MariaDB to start on boot
sudo systemctl enable mariadb

# Secure the MariaDB installation
sudo mysql_secure_installation

# By running `mysql_secure_installation`, you will be prompted to set the root password,
# remove anonymous users, disallow root login remotely, remove test databases, and
# reload the privilege tables. Follow the prompts to secure your installation.

# Check the status of MariaDB to verify that it's running
sudo systemctl status mariadb
