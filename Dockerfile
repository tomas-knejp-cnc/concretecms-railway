# Použijeme oficiální PHP s Apache
FROM php:8.2-apache

# Nainstalujeme rozšíření potřebná pro Concrete CMS
RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev libzip-dev zip unzip git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo pdo_mysql gd zip

# Volitelně: Redis rozšíření
RUN pecl install redis && docker-php-ext-enable redis

# Nastavení Apache
RUN a2enmod rewrite
COPY ./apache.conf /etc/apache2/sites-available/000-default.conf

# Kopíruj ConcreteCMS soubory
WORKDIR /var/www/html
COPY . /var/www/html

# Oprávnění
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]
