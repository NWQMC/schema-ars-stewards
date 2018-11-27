# schema\-ars\-stewards

Liquibase scripts for creating the ARS\_STEWARDS database schema objects in a Postgres database. 
They are used for the Water Quality Portal (WQP). The repo also includes Docker Compose scripts to setup a continuous
integration PostGIS database.

In order to use the docker compose scripts, you will need to create a .env file in the project directory containing
the following (shown are example values):
```
POSTGRES_PASSWORD=<changeMe>

ARS_STEWARDS_OWNER=ars_stewards_owner
ARS_STEWARDS_OWNER_PASSWORD=<changeMe>
ARS_STEWARDS_DATABASE_NAME=ars_stewards_db
ARS_STEWARDS_SCHEMA_NAME=ars_stewards

WQP_CORE_OWNER=wqp_core
WQP_CORE_OWNER_PASSWORD=<changeMe>

```

To create a postgres database and then run the liquibase scripts:
```
% docker-compose up -d db
% docker-compose up liquibase
```

The PostGIS database will be available on port 5434

Other Helpful commands include:
* __docker-compose up__ to create and start the containers
* __docker-compose ps__ to list the containers
* __docker-compose stop__ or __docker-compose kill__ to stop the containers
* __docker-compose start__ to start the containers
* __docker-compose rm__ to remove all containers
* __docker network inspect pubsdb_default__ to get the ip addresses of the running containers
* __docker-compose ps -q__ to get the Docker Compose container ids
* __docker ps -a__ to list all the Docker containers
* __docker rm <containerId>__ to remove a container
* __docker rmi <imageId>__ to remove an image
* __docker logs <containerID>__ to view the Docker Compose logs in a container

