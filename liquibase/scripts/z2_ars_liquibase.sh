#!/bin/bash

# ars schema scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/ars/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${ARS_DATABASE_ADDRESS}:5432/${ARS_DATABASE_NAME} \
	--username=${ARS_SCHEMA_OWNER_USERNAME} \
	--password=${ARS_SCHEMA_OWNER_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=${ARS_SCHEMA_NAME} \
	--liquibaseSchemaName=${ARS_SCHEMA_NAME} \
	update \
	-DARS_SCHEMA_OWNER_USERNAME=${ARS_SCHEMA_OWNER_USERNAME} \
	-DARS_SCHEMA_NAME=${ARS_SCHEMA_NAME} \
	-DWQP_SCHEMA_OWNER_USERNAME=${WQP_SCHEMA_OWNER_USERNAME}