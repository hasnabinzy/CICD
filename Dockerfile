FROM ubuntu:20.04
RUN apt-get update && apt-get install -y apache2 &&  apt-get clean
EXPOSE 80
COPY index.html /var/www/html
CMD ["apache2ctl", "-D", "FOREGROUND"]
