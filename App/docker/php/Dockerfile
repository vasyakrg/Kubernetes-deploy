FROM php:7.4-apache-buster
MAINTAINER vasyakrg <vasyakrg@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
        apt-transport-https \
        curl \
        wget \
        git \
        libpq-dev \
        && docker-php-ext-install mysqli pdo_pgsql pdo_mysql \
        && apt-get update \
        && rm -rf /var/lib/apt/lists/*

RUN rm /etc/apache2/sites-enabled/*
COPY myapp.conf /etc/apache2/sites-available/myapp.conf
RUN a2enmod rewrite headers && a2ensite myapp

COPY myapp/ /var/www/

WORKDIR /var/www
