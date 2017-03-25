FROM php:7.1-cli

WORKDIR /app

# Install extensions to enable Postgres
RUN apt-get update && apt-get install -y libpq-dev
RUN docker-php-ext-install pgsql mysqli

# Install phpunit for testing purposes
RUN curl https://phar.phpunit.de/phpunit-5.7.phar -L -o phpunit.phar
RUN chmod +x phpunit.phar
RUN mv phpunit.phar /usr/local/bin/phpunit

CMD phpunit
