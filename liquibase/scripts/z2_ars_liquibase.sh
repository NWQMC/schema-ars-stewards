#!/bin/bash
#!/bin/bash
# The set -e tells bash to exit immediately if a simple command fails.
# The set -o pipefail tells bash to set pipeline's return status to status of the last (rightmost) command.
# Both should be used in scripts meant to be called by Jenkins or another job runner.
set -e
set -o pipefail

# ars schema scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE_ARS}/ars/changeLog.yml \
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