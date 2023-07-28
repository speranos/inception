# Use Debian Buster as the base image
FROM debian:buster-slim

# Install necessary packages for WordPress and PHP-FPM
RUN apt-get update && apt-get install -y \
    php7.3-fpm \
    php7.3-mysql \
    php7.3-curl \
    php7.3-gd \
    php7.3-mbstring \
    php7.3-xml \
    php7.3-xmlrpc \
    php7.3-soap \
    php7.3-intl \
    php7.3-zip \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy your WordPress files into the container
COPY wordpress /usr/share/nginx/html

# Expose port 9000 for PHP-FPM
EXPOSE 9000

# Start PHP-FPM and keep it running
CMD ["php-fpm7.3", "-F"]
