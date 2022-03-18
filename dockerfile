# PHP
FROM php:7.4-apache

# Modules apache
RUN a2enmod headers deflate expires rewrite
EXPOSE 80

# Composer
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# Extensions MySQL pour PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Virtualhost
COPY Docker-vhost.conf /etc/apache2/sites-enabled/docker-vhost-wp.conf

# Redémarrage de Apache pour tenir compte des modifications + modules installés
RUN service apache2 restart

# Dossier de travail
WORKDIR /var/www/html/app

