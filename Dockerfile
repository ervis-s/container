FROM centos:7
LABEL maintainer="TOC"
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY *.jpg /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

