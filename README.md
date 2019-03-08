# Docker MariaDB with MultiDB feature
## Based on 
MariaDb: https://hub.docker.com/_/mariadb
## How to use this image
### ... via docker stack deploy or docker-compose
```
version: '3.3'
services:
  db:
    image: ganjaaa/mariadb:10.3
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD=myroot
      MYSQL_USER=user1;user2
      MYSQL_PASSWORD=pass1;pass2
      MYSQL_DATABASE=db1;db2
  adminer:
    image: adminer
    restart: always
    ports:
      - 8080:8080
```

## Environment Combinations
### 2 Users with seperate passwords and DB's
```
      MYSQL_ROOT_PASSWORD=myroot
      MYSQL_USER=user1;user2
      MYSQL_PASSWORD=pass1;pass2
      MYSQL_DATABASE=db1;db2
```
### 2 Users with same password and seperate DB's
```
      MYSQL_ROOT_PASSWORD=myroot
      MYSQL_USER=user1;user2
      MYSQL_PASSWORD=pass1
      MYSQL_DATABASE=db1;db2
```
### 2 Users with seperate password on the same DB
```
      MYSQL_ROOT_PASSWORD=myroot
      MYSQL_USER=user1;user2
      MYSQL_PASSWORD=pass1;pass2
      MYSQL_DATABASE=db1
```
