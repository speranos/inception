FROM	debian:bullseye
RUN     apt-get -y update && apt-get -y install nginx
COPY    my_nginx.conf /etc/nginx/conf.d

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]