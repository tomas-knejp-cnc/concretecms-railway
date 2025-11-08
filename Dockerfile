# 1️⃣ Základní PHP image s Apache
FROM php:8.2-apache

# 2️⃣ Nainstaluj potřebné knihovny pro ConcreteCMS
RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev libzip-dev unzip git curl \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql zip opcache intl \
    && pecl install redis && docker-php-ext-enable redis

# 3️⃣ Nastavení pracovního adresáře
WORKDIR /var/www/html

# 4️⃣ Zkopíruj kód (tvůj repozitář)
COPY . /var/www/html

# 5️⃣ Nastavení práv
RUN chown -R www-data:www-data /var/www/html

# 6️⃣ Apache mod_rewrite (nutné pro ConcreteCMS)
RUN a2enmod rewrite

# 7️⃣ Nastav virtualhost
RUN echo "<VirtualHost *:8080>\n\
    DocumentRoot /var/www/html/public\n\
    <Directory /var/www/html/public>\n\
        AllowOverride All\n\
        Require all granted\n\
    </Directory>\n\
</VirtualHost>" > /etc/apache2/sites-available/000-default.conf

# 8️⃣ Railway používá port 8080
ENV PORT=8080
EXPOSE 8080

# 9️⃣ Environment variables (Railway je přiřadí automaticky)
ENV CONCRETE_DB_HOST=${MYSQLHOST}
ENV CONCRETE_DB_USERNAME=${MYSQLUSER}
ENV CONCRETE_DB_PASSWORD=${MYSQLPASSWORD}
ENV CONCRETE_DB_DATABASE=${MYSQLDATABASE}

# 10️⃣ Start Apache
CMD ["apache2-foreground"]
