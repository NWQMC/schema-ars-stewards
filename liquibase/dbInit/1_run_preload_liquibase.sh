#!/bin/bash

# postgres to postgres db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/postgres/postgres/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://ARS_STEWARDS_Database:5432/postgres \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DARS_STEWARDS_DATABASE_NAME=${ARS_STEWARDS_DATABASE_NAME} \
	-DARS_STEWARDS_OWNER=${ARS_STEWARDS_OWNER} \
	-DARS_STEWARDS_OWNER_PASSWORD=${ARS_STEWARDS_OWNER_PASSWORD} \
	 > $LIQUIBASE_HOME/logs/liquibasePostgres.log
