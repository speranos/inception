FROM debian:buster

# Copy the script into the container
# RUN apt install -y systemd

COPY script.sh /usr/local/bin/script.sh

# Give execute permission to the script
RUN chmod +x /usr/local/bin/script.sh

# Run the script
CMD ["script.sh"]