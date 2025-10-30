Задание 3 недели Бэкендеров от Токарева Егора

Запуск
1) docker-compose up -d
2) docker-compose run --rm composer create-project laravel/laravel . --prefer-dist
3) docker-compose run --rm composer install
4) docker-compose run --rm artisan key:generate
5) docker-compose run --rm artisan migrate
6) docker-compose exec php chmod -R 775 /var/www/laravel/storage /var/www/laravel/bootstrap/cache
   docker-compose exec nginx chmod -R 775 /var/www/laravel/storage
7) 