# Shiphp: PHP Dockerfiles

A collection of Dockerfiles that are useful for PHP developers.

## What's here?

### PHP-Apache-MySQL

A maximal PHP container with Apache, MySQL, and many common extensions installed. This works as a good starting point for many full-featured PHP frameworks like Wordpress, CakePHP, or Laravel.

```bash
docker build -t shiphp/php-apache-mysql ./php-apache-mysql
```

[Docker Hub](https://hub.docker.com/r/shiphp/php-apache-mysql/)

### PHP-FPM-MySQL

A maximal PHP container with PHP-FPM, MySQL, and many common extensions installed. This works as a good starting point for many full-featured PHP frameworks if you're planning to use NGinx and PHP-FPM.

```bash
docker build -t shiphp/php-fpm-mysql ./php-fpm-mysql
```

[Docker Hub](https://hub.docker.com/r/shiphp/php-fpm-mysql/)

### PHPUnit

A PHPunit container for running unit tests with XDebug. Includes extensions installed in the PHP-FPM-MySQL image above.

```bash
docker build -t shiphp/phpunit ./phpunit
```

[Docker Hub](https://hub.docker.com/r/shiphp/phpunit/)

## Contributing

If you see a problem with this repository or the setup instructions, feel free to submit an issue or a pull request.

## License

Copyright 2017, Karl L. Hughes

> Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at
>
>    http://www.apache.org/licenses/LICENSE-2.0
>
> Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
