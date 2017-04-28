# Miscellaneous Dockerfiles

A collection of Dockerfiles that I've found useful for local development. Some may turn into maintained projects, but most are pretty minimally useful.

## What's here?

### PHP-FPM

A typical php-fpm container with MySQL drivers. This acts as my standard container for Laravel installations.

```bash
docker build -t karllhughes/php-fpm-mysql ./php-fpm-mysql
```

[Dockerhub](https://hub.docker.com/r/karllhughes/php-fpm-mysql/)

### PHPUnit

A php-cli container for running unit tests with mysql and pgsql included.

```bash
docker build -t karllhughes/phpunit ./phpunit
```

[Dockerhub](https://hub.docker.com/r/karllhughes/phpunit/)

### Simple Curl

Trigger webhooks when on a specific branch.

```bash
docker build -t karllhughes/simple-curl ./simple-curl
```

[Dockerhub](https://hub.docker.com/r/karllhughes/simple-curl/)