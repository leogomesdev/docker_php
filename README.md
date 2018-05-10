# Docker and PHP

This is a simple project to show you how to use Docker and PHP

* Install [Docker](https://docs.docker.com/install/)
* Install [docker-compose](https://docs.docker.com/compose/install/)
* Clone this repository `git clone https://github.com/leogomezzz/docker_php.git`

* Create some folders to be used as volumes and apply with 777 permissions (it's not the best, but it'll work for now)
`cd docker_php && mkdir -p ../volumes/logsxdebug && mkdir -p ../volumes/postgres103 && mkdir -p ../volumes/mysql57 && mkdir -p ../volumes/pgadmin/config && mkdir -p ../volumes/pgadmin/storage && chmod 777 -R ../volumes`

* create your image for php `docker build -t my_image_php:7.2 .`

* run `docker-compose up` on terminal

* In your browser, access [http://localhost/index.php](http://localhost/index.php)

* To access your MYSQL database administration tool, use [http://localhost:8080](http://localhost:8080) and use the credentials below:
	* server:
	* username:
	* password:

* To access your POSTGRESQL database administration tool, use [http://localhost:5050](http://localhost:5050) and use the credentials below:
	* server:
	* username:
	* password:
