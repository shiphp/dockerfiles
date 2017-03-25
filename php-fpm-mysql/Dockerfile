# Dockerfile
FROM php:fpm
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
    libpng12-dev \
    libpspell-dev \
    libreadline-dev \
    libsnmp-dev \
    libssl-dev \
    libtidy-dev \
    libvpx-dev \
    libxml2-dev \
    libxslt1-dev \
    mcrypt \
    re2c \
    unzip \
    && rm -rf /var/lib/apt/lists/*

## Install PHP extensions
RUN docker-php-source extract \
    && docker-php-ext-install pdo pdo_mysql \
    && docker-php-source delete

## Add the code
VOLUME /var/www/html

# Run PHP-FPM on port 9000
EXPOSE 9000
CMD ["php-fpm"]
