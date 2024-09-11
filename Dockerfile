FROM debian:bullseye

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

RUN mkdir /tmp/cern-httpd-2/

RUN mkdir /opt/cern-httpd/

### # # ###

COPY ./conf/httpd.conf /etc/httpd.conf

COPY ./www /var/www

COPY ./deps/cern-httpd-3.0A.tar.gz /tmp/cern-httpd-2/cern-httpd-3.0A.tar.gz

COPY ./patch /tmp/cern-httpd-2/patch

### # # ###

RUN tar -xvf /tmp/cern-httpd-2/cern-httpd-3.0A.tar.gz -C /opt/cern-httpd

### # APPLY PATCH # ###

RUN cp -r /tmp/cern-httpd-2/patch/* /opt/cern-httpd

### # # ###

RUN chmod +x /opt/cern-httpd/BUILD.SH

### # # ###

WORKDIR /opt/cern-httpd
RUN ./BUILD.SH
WORKDIR /

### # # ###

RUN rm -rf /tmp/cern-httpd-2

### # # ###

EXPOSE 80

### # # ###

CMD ["/opt/cern-httpd/Daemon/linux/httpd", "-v"]

