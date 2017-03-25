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

Run mssql server
```
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=testing' -p 1433:1433 -d microsoft/mssql-server-linux
```

Run tests
```
# Postgres
docker run --link postgres -v $(pwd):/app --rm shiphp/phpunit phpunit tests/tests.php
# Mysql
docker run --link mysql -v $(pwd):/app --rm shiphp/phpunit phpunit tests/tests.php
# Sqlite
docker run -v $(pwd):/app --rm shiphp/phpunit phpunit tests/tests.php
```

