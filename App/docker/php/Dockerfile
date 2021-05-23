FROM php:7.4-apache-buster
MAINTAINER vasyakrg <vasyakrg@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
        apt-transport-https \
        libpq-dev \
        && docker-php-ext-install pdo_mysql \
        && rm -rf /var/lib/apt/lists/* \
        && rm /etc/apache2/sites-enabled/*

COPY myapp.conf /etc/apache2/sites-available/myapp.conf
RUN a2enmod rewrite headers && a2ensite myapp

COPY myapp/ /var/www/

WORKDIR /var/www
