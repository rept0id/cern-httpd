# Use a Debian-based image as a base
FROM debian:bullseye

# Install necessary dependencies and add support for 32-bit architecture
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y \
    gcc \
    make \
    libssl-dev \
    libz-dev \
    libcrypt1:i386 \
    libcrypt-dev:i386 \
    && apt-get clean

COPY ./conf/httpd.conf /etc/httpd.conf

COPY ./www /var/www

COPY ./src/w3c-httpd-3.0A /opt/w3c-httpd
COPY ./src/w3c-httpd-3.0A-patch/patch.sh /opt/w3c-httpd/patch.sh

# Set the working directory inside the container
WORKDIR /opt/w3c-httpd

# Run the patch script
RUN chmod +x patch.sh && ./patch.sh

# Run the build script
RUN chmod +x BUILD.SH && ./BUILD.SH

# Expose port 80 for HTTP traffic
EXPOSE 80

# Command to start the server
CMD ["./Daemon/linux/httpd", "-v"]

