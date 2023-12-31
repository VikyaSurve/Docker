FROM ubuntu:latest

MAINTAINER Vikas

RUN apt update; apt install apache2 -y

ADD https://github.com/VikyaSurve/Docker/blob/main/index.html /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl","-D","FOREGROUND"]
