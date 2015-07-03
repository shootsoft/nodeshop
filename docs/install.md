Installation
==================

# Install nodeshop & npm & bower

```shell
#clone & npm
git clone https://github.com/shootsoft/nodeshop.git nodeshop
cd nodeshop npm install

#bower part
cd src/assets/sb2/
sudo npm install -g bower
bower install
cd ../../

#now config your own db in src/config/connections.js & src/config/models.js
#import db scripts in scripts/db/creation.sql
#make sure you are in src/ path
#launch app default
node app.js
#launch app silent in another port 
sudo node app.js --silent --port=8099
```

# Docker manually

!!!NOT COMPLETE YET!!!

## Mac installation

https://docs.docker.com/installation/mac/

```shell
sudo boot2docker init
sudo boot2docker up
sudo boot2docker ssh
```

## Node & Postgresql

### Nodejs

https://registry.hub.docker.com/u/richarvey/nginx-nodejs/

```shell
#install
docker pull richarvey/nginx-nodejs:stable
#launch test
sudo docker run --name nginx -p 80:80 -d richarvey/nginx-nodejs:stable
```

### Postgresql

https://registry.hub.docker.com/u/orchardup/postgresql/

```shell
#install
docker pull orchardup/postgresql
#launch test
sudo docker run --name posgresql -d -p 5432:5432 -e POSTGRESQL_USER=test -e POSTGRESQL_PASS=oe9jaacZLbR9pN -e POSTGRESQL_DB=test orchardup/postgresql

```

### Link nodejs docker with postgresql

```shell
#to be varified
sudo docker run -e 'GIT_REPO=https://github.com/shootsoft/nodeshop.git' -p 80:80 --link posgresql:posgresql -d nodeshop

sudo docker run --name nginx2 -e 'GIT_REPO=https://github.com/shootsoft/nodeshop.git' -p 8080:80 --link posgresql:posgresql -d nodeshop
```

```shell

#launch postgresql
sudo docker run --name posgresql -d -p 5432:5432 -e POSTGRESQL_USER=test -e POSTGRESQL_PASS=oe9jaacZLbR9pN -e POSTGRESQL_DB=test orchardup/postgresql

#launch node
#check out master code & link
sudo docker run -e 'GIT_REPO=https://github.com/shootsoft/nodeshop.git' -p 80:80 --link posgresql:posgresql -d nodeshop


```

