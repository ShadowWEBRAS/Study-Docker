Задание 3 недели Бэкендеров от Токарева Егора

Запуск
1) docker-compose up -d
2) docker-compose run --rm composer create-project laravel/laravel . --prefer-dist
3) docker-compose run --rm composer install
4) Применять эту команду только тогда когда находитесь в папке dev или prod: cp .env src/.env
5) docker-compose exec php chown -R www-data:www-data /var/www/laravel/storage
6) docker-compose run --rm artisan key:generate
7) docker-compose run --rm artisan migrate

Ссылки для тестирования:
http://localhost:8108/   - Nginx
http://localhost:8980/   - PhpMyAdmin
