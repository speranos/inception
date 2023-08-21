FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql default-mysql-client
RUN mkdir /run/php
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN wp core download --allow-root
COPY wp-config-sample.php ./wp-config-sample.php
EXPOSE 9000
CMD ["php-fpm7.3", "-F"]
