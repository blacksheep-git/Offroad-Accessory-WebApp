FROM php:7.4-apache
COPY src/ /var/www/html/
RUN sed -i'' -e 's/USER/user1/g' -e 's/PASSWORD/12345678/g'  -e 's/DSN/mysql:dbname=scada;host=10.0.10.8/g' /var/www/html/dao.php
RUN docker-php-ext-install pdo pdo_mysql