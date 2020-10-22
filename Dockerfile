FROM ubuntu:xenial

MAINTAINER aniket

RUN apt-get update && apt-get -y install apache2

RUN apt-get install -y apache2-utils

ADD index.html /var/www/html/

EXPOSE 80

CMD ["apache2ctl","-D","FOREGROUND"]
