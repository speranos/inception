FROM	debian:bullseye
RUN     apt-get -y update && apt-get -y install nginx
COPY    my_nginx.conf /etc/nginx/conf.d
COPY    ca/rootCA.crt /etc/
COPY    ca/rootCA.key /etc/

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]