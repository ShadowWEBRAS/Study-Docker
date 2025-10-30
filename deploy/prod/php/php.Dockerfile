FROM php:8.2-fpm-alpine

WORKDIR /var/www/laravel

RUN apk add --no-cache \
    git \
    unzip

RUN docker-php-ext-install pdo pdo_mysql


COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY src/ /var/www/laravel
