#!/bin/bash
#!/bin/bash
# The set -e tells bash to exit immediately if a simple command fails.
# The set -o pipefail tells bash to set pipeline's return status to status of the last (rightmost) command.
# Both should be used in scripts meant to be called by Jenkins or another job runner.
set -e
set -o pipefail

# postgres to postgres db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE_ARS}/postgres/postgres/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${ARS_DATABASE_ADDRESS}:5432/postgres \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=public \
	--liquibaseSchemaName=public \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DARS_DATABASE_NAME=${ARS_DATABASE_NAME} \
	-DARS_DB_OWNER_USERNAME=${ARS_DB_OWNER_USERNAME} \
	-DARS_DB_OWNER_PASSWORD=${ARS_DB_OWNER_PASSWORD} \
	-DARS_SCHEMA_NAME=${ARS_SCHEMA_NAME} \
	-DARS_SCHEMA_OWNER_USERNAME=${ARS_SCHEMA_OWNER_USERNAME} \
	-DARS_SCHEMA_OWNER_PASSWORD=${ARS_SCHEMA_OWNER_PASSWORD} \
	-DWQP_SCHEMA_NAME=${WQP_SCHEMA_NAME} \
	-DWQP_SCHEMA_OWNER_USERNAME=${WQP_SCHEMA_OWNER_USERNAME} \
	-DWQP_SCHEMA_OWNER_PASSWORD=${WQP_SCHEMA_OWNER_PASSWORD}

# postgres to ars db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE_ARS}/postgres/ars/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${ARS_DATABASE_ADDRESS}:5432/${ARS_DATABASE_NAME} \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=public \
	--liquibaseSchemaName=public \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DARS_SCHEMA_OWNER_USERNAME=${ARS_SCHEMA_OWNER_USERNAME} \
	-DARS_SCHEMA_NAME=${ARS_SCHEMA_NAME}
