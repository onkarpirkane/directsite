FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache zip unzip weget
WORKDIR /var/www/html
RUN weget https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip
RUN unzip mediplus-lite.zip
RUN cp -rvf mediplus-lite/* .
RUN rm -rf mediplus-lite mediplus-lite.zip
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80 
		

