FROM php:8.2-fpm-alpine

# Устанавливаем системные пакеты
RUN apk add --no-cache \
    git \
    unzip \
    shadow \
    mysql-client \
    bash

# Устанавливаем PHP расширения
RUN docker-php-ext-install pdo pdo_mysql

# Копируем Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Создаем рабочую директорию
WORKDIR /var/www/laravel

# Копируем исходный код
COPY src/ /var/www/laravel/

# Создаем необходимые директории и устанавливаем права
RUN mkdir -p storage/framework/views storage/framework/cache storage/framework/sessions storage/logs bootstrap/cache

# Меняем пользователя на www-data
RUN chown -R www-data:www-data /var/www/laravel \
    && chmod -R 775 storage bootstrap/cache \
    && chmod -R 777 storage/framework/views

USER www-data