FROM	debian
RUN     apt-get -y update && apt-get -y install nginx
COPY word.config /path/to/nginx/conf/wordpress.conf
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE	8070