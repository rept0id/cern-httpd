FROM debian:bullseye

### # # ###

RUN mkdir /opt/w3c-httpd/

### # # ###

COPY ./conf/httpd.conf /etc/httpd.conf

COPY ./www /var/www

COPY ./src/w3c-httpd-3.0A.tar.gz /tmp/w3c-httpd-3.0A.tar.gz

COPY ./src/w3c-httpd-3.0A-patch/patch.sh /opt/w3c-httpd/patch.sh

### # # ###

RUN tar -xvf /tmp/w3c-httpd-3.0A.tar.gz -C /opt/w3c-httpd
RUN rm -rf /tmp/w3c-httpd-3.0A.tar.gz

### # # ###

RUN chmod +x /opt/w3c-httpd/patch.sh

RUN chmod +x /opt/w3c-httpd/BUILD.SH

### # # ###

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y \
    gcc \
    make \
    libssl-dev \
    libz-dev \
    libcrypt1:i386 \
    libcrypt-dev:i386 \
    && apt-get clean

### # # ###

WORKDIR /opt/w3c-httpd
RUN ./patch.sh
RUN ./BUILD.SH
WORKDIR /

### # # ###

EXPOSE 80

### # # ###

CMD ["/opt/w3c-httpd/Daemon/linux/httpd", "-v"]

