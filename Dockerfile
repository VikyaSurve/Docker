FROM ubuntu:latest

MAINTAINER Vikas

RUN apt update; apt install apache2 -y

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl","-D","FOREGROUND"]

