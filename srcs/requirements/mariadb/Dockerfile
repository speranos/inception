FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y
RUN apt install mariadb-server sudo -y
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
ARG DB_NAME DB_USER DB_PASS
COPY script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh
RUN script.sh

CMD ["mariadbd"]