FROM php:7.2-fpm-stretch

MAINTAINER Leonardo Gomes <leonardo.delfica@gmail.com>

#Instaling my-sql driver
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev libldap2-dev mysql-client zip git wget\
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo pdo_mysql pdo_pgsql pcntl

#Install composer
#RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
#RUN php composer-setup.php
#RUN php -r "unlink('composer-setup.php');"
#RUN mv composer.phar /usr/local/bin/composer

#Create a new directory to run our app.
RUN mkdir -p /var/www/html/

#Set the new directory as our working directory
WORKDIR /var/www/html/

#Copy all the content to the working directory
#not using because using as volumes!
COPY . /var/www/html/

#Install composer dependecies
#RUN composer install --no-dev

#Our app runs on port 9000. Expose it!
EXPOSE 9000
