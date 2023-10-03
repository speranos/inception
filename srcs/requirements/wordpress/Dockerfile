FROM debian:bullseye

WORKDIR /var/www/html
RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install -y php7.4 php7.4-fpm php7.4-mysql
RUN apt-get install -y mariadb-client
RUN mkdir /run/php
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
COPY script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

CMD [ "script.sh" ]