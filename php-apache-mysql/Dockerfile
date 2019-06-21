# Dockerfile
FROM php:7.3-apache
LABEL maintainer "khughes.me@gmail.com"

# Install linux dependencies
RUN apt-get update && apt-get install -y \
    aufs-tools \
    automake \
    btrfs-tools \
    build-essential \
    curl \
    enchant \
    git \
    libbz2-dev \
    libcurl4-openssl-dev \
    libedit-dev \
    libenchant-dev \
    libfreetype6-dev \
    libgmp-dev \
    libicu-dev \
    libmcrypt-dev \
    libpspell-dev \
    libreadline-dev \
    libsnmp-dev \
    libssl-dev \
    libtidy-dev \
    libvpx-dev \
    libxml2-dev \
    libxslt1-dev \
    libpq-dev \
    libjpeg62-turbo-dev \
    libzip-dev \
    mysql-client \
    mcrypt \
    re2c \
    unzip \
    && rm -rf /var/lib/apt/lists/*

## Install PHP extensions
RUN docker-php-source extract \
    && docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-source delete

RUN a2enmod rewrite && /etc/init.d/apache2 restart

## Add the code
VOLUME /var/www/html
