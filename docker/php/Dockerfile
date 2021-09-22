FROM php:7.4-fpm

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
        libzip-dev \
        zip \
    && docker-php-ext-install zip
RUN apt-get install git -y

RUN docker-php-ext-install pdo pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer

RUN usermod -u 1000 www-data