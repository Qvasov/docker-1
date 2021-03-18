FROM ubuntu:12.04
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
EXPOSE 80
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

# A basic apache server.
# docker build -t bonus1 . && docker run -d -p 80:80 bonus1
# http://192.168.99.100
