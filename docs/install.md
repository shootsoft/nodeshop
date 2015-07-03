Installation
==================

# Mac installation

https://docs.docker.com/installation/mac/

```shell
sudo boot2docker init
sudo boot2docker up
sudo boot2docker ssh
```

# Node & Postgresql

## Nodejs

https://registry.hub.docker.com/u/richarvey/nginx-nodejs/

```shell
#install
docker pull richarvey/nginx-nodejs:stable
#launch test
sudo docker run --name nginx -p 80:80 -d richarvey/nginx-nodejs:stable
```

## Postgresql

https://registry.hub.docker.com/u/orchardup/postgresql/

```shell
#install
docker pull orchardup/postgresql
#launch test
sudo docker run --name posgresql -d -p 5432:5432 -e POSTGRESQL_USER=test -e POSTGRESQL_PASS=oe9jaacZLbR9pN -e POSTGRESQL_DB=test orchardup/postgresql

```

## Link nodejs docker with postgresql

```shell
sudo docker run -e 'GIT_REPO=https://github.com/shootsoft/nodeshop.git' -p 80:80 --link posgresql:posgresql -d richarvey/nginx-nodejs:stable
```
