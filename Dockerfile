FROM centos:latest
MAINTAINER rashid78631@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/yooga.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip yooga.zip
RUN cp -rvf free-yoga-website-template/* /var/www/html/
RUN rm -rf free-yoga-website-template yooga.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
