FROM ubuntu:18.04
MAINTAINER alokkumar17419@gmail.com
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY ./index.html /var/www/html/index.html
WORKDIR /home/ubuntu
VOLUME /ubuntu
EXPOSE 80
CMD ["systemctl","restart","apache2"]
ENV name ALOK
ENTRYPOINT /bin/echo "Welcome, $name"
