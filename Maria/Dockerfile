FROM debian:bullseye

RUN apt update && apt upgrade -y
RUN apt install mariadb-server sudo -y
# RUN service mysql start
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# RUN cat /etc/mysql/mariadb.conf.d/50-server.cnf | grep "bind"
COPY script.sh /usr/local/bin/script.sh

# # Give execute permission to the script
RUN chmod +x /usr/local/bin/script.sh

RUN /usr/local/bin/script.sh

# Run the script
CMD ["mariadbd"]