FROM ubuntu:18.04
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
ENTRYPOINT apachectl -D FOREGROUND
ADD ./index.html /var/www/html
