# Dockerfile notes

Just some commands I end up running a lot for projects I'm working on.

## Phinx project notes:

Set up DB
```
...
```

Run tests
```
docker run --link database --rm -v $(pwd):/app shiphp/shiphp-db-migrations vendor/bin/phpunit --config phpunit.xml
```

## PHP Crud API

Run postgres database
```
docker run --name postgres --rm -d -e POSTGRES_USER=api -p 5432:5432 mdillon/postgis:9.4
```

Run mysql database
```
docker run --name mysql --rm -d -e MYSQL_ROOT_PASSWORD=testing -p 3306:3306 mysql:5.7
docker exec -d mysql mysql -uroot -ptesting -e 'CREATE DATABASE testing;'
```

Run mssql server - Not working for me yet.
```
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=testing' -p 1433:1433 -d microsoft/mssql-server-linux
```

Run tests
```
# Postgres
docker run --link postgres -v $(pwd):/app --rm karllhughes/phpunit phpunit tests/tests.php
# Mysql
docker run --link mysql -v $(pwd):/app --rm karllhughes/phpunit phpunit tests/tests.php
# Sqlite
docker run -v $(pwd):/app --rm karllhughes/phpunit phpunit tests/tests.php
```

## DigitalOcean Docker Server Setup

- Create a [one-click deploy Docker droplet on DigitalOcean](https://cloud.digitalocean.com/droplets/new?i=dfa741&size=1gb&region=nyc3&appId=23219584&type=applications&options=private_networking,ipv6) and SSH into the server.
- Create an RSA key and add it to Git repository: `ssh-keygen -t rsa && tail ~/.ssh/id_rsa.pub`
- Upgrade docker-compose: 
  - `curl -L https://github.com/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` > ./docker-compose`
  - `sudo mv ./docker-compose /usr/local/bin/docker-compose`
  - `chmod +x /usr/local/bin/docker-compose`
- Get the latest node: `curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`
  - Install it: `sudo apt-get install -y nodejs`
  
OR
  
- Get the latest PHP and composer:
  - `sudo apt-get update && sudo apt-get install -y curl php-cli php-mbstring git unzip`
  - `cd ~ && curl -sS https://getcomposer.org/installer -o composer-setup.php`
  - `sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer`
