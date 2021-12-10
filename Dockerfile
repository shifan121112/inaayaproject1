FROM centos:latest
MAINTAINER rashid78631@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/xbe.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip xbe.zip
RUN cp -rvf xbe/* /var/www/html/
RUN rm -rf xbe xbe.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
