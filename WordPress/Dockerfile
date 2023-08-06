FROM debian:buster

# CMD ["./script.sh"]
# ADD script.sh /root/script.sh

# CMD ["./script.sh"]

COPY script.sh /usr/local/bin/script.sh

RUN chmod +x /usr/local/bin/script.sh

# ENV DB_HOST=inception-data_base-1

EXPOSE 9000
# Run the script
CMD ["script.sh"]


