create table if not exists ${ARS_STEWARDS_SCHEMA_NAME}.site_type_to_primary
(site_type                      character varying(500) primary key
,primary_site_type              character varying(500)
);
