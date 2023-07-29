FROM debian:buster

# CMD ["./script.sh"]
# ADD script.sh /root/script.sh

# CMD ["./script.sh"]

COPY script.sh /usr/local/bin/script.sh

RUN chmod +x /usr/local/bin/script.sh

# Run the script
CMD ["script.sh"]

EXPOSE 9000

