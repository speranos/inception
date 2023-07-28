
FROM debian:buster

# CMD ["./script.sh"]
# ADD script.sh /root/script.sh

# CMD ["./script.sh"]

RUN mkdir -p /scripts
COPY script.sh /scripts
WORKDIR /scripts
RUN chmod +x script.sh
RUN ./script.sh

EXPOSE 9000

