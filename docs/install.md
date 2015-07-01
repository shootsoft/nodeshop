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
#launch
sudo docker run --name nginx -p 8080:80 -d richarvey/nginx-nodejs:stable
```

## Postgresql

https://registry.hub.docker.com/u/orchardup/postgresql/

```shell
#install
docker pull orchardup/postgresql
#launch
sudo docker run --name posgresql -d -p 5432:5432 -e POSTGRESQL_USER=test -e POSTGRESQL_PASS=oe9jaacZLbR9pN -e POSTGRESQL_DB=test orchardup/postgresql

```
