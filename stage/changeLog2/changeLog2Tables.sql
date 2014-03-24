--liquibase formatted sql

--This is for the ars_stewards schema
 
--changeset drsteini:2SchemaTablesAA
create table characteristic_name_to_type
(characteristic_name            varchar2(500 char)
,characteristic_type            varchar2(500 char)
,constraint characteristic_name_type_pk
   primary key (characteristic_name)
);
--rollback drop table site_type_to_primary cascade constraints purge;

--changeset drsteini:2SchemaTablesAB
alter table organization_temp drop column organization_details;
--rollback alter table organization_temp add (organization_details xmltype);

--changeset drsteini:2SchemaTablesAC
alter table result_temp drop column result_details;
--rollback alter table result_temp add (result_details xmltype);

--changeset drsteini:2SchemaTablesAD
alter table result_temp add (characteristic_type varchar2(500 char));
--rollback alter table result_temp drop column characteristic_type;

--changeset drsteini:2SchemaTablesAE
alter table result_temp add (organization_clob clob);
--rollback alter table result_temp drop column organization_clob;

--changeset drsteini:2SchemaTablesAF
alter table result_temp add (activity_clob clob);
--rollback alter table result_temp drop column activity_clob;

--changeset drsteini:2SchemaTablesAG
alter table result_temp add (result_clob clob);
--rollback alter table result_temp drop column result_clob;

--changeset drsteini:2SchemaTablesAH
alter table station_temp drop column station_details;
--rollback alter table station_temp add (station_details xmltype);

--changeset drsteini:2SchemaTablesAI
alter table station_temp add (organization_clob clob);
--rollback alter table station_temp drop column organization_clob;

--changeset drsteini:2SchemaTablesAJ
alter table station_temp add (station_clob clob);
--rollback alter table station_temp drop column station_clob;
