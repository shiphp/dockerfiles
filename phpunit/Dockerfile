# Latest PHP
FROM karllhughes/php-fpm-mysql
LABEL maintainer "khughes.me@gmail.com"

# Install phpunit for testing purposes
RUN curl https://phar.phpunit.de/phpunit-5.7.phar -L -o phpunit.phar
RUN chmod +x phpunit.phar
RUN mv phpunit.phar /usr/local/bin/phpunit

RUN pecl install xdebug-2.5.0 \
    && docker-php-ext-enable xdebug

CMD phpunit
