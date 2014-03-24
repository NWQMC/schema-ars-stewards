--liquibase formatted sql

--This is for the ars_stewards schema
 
--changeset drsteini:2SchemaTablesAA
drop table characteristic_name_to_type cascade constraints purge;
--rollback create table characteristic_name_to_type
--rollback (characteristic_name            varchar2(500 char)
--rollback ,characteristic_type            varchar2(500 char)
--rollback ,constraint characteristic_name_type_pk
--rollback    primary key (characteristic_name)
--rollback );

--changeset drsteini:2SchemaTablesAB
alter table organization_00000 drop column organization_details;
--rollback alter table organization_00000 add (organization_details xmltype);

--changeset drsteini:2SchemaTablesAC
alter table result_00000 drop column result_details;
--rollback alter table result_00000 add (result_details xmltype);

--changeset drsteini:2SchemaTablesAE
alter table result_00000 add (organization_clob clob);
--rollback alter table result_00000 drop column organization_clob;

--changeset drsteini:2SchemaTablesAF
alter table result_00000 add (activity_clob clob);
--rollback alter table result_00000 drop column activity_clob;

--changeset drsteini:2SchemaTablesAI
alter table station_00000 add (organization_clob clob);
--rollback alter table station_00000 drop column organization_clob;

--changeset drsteini:2SchemaTablesAJ
alter table result_00000 add (geom mdsys.sdo_geometry);
--rollback alter table result_00000 drop column geom;

--changeset drsteini:2SchemaTablesAK
drop table activity_00000 cascade constraints purge;
--rollback create table activity_00000
--rollback (activity_pk                    number
--rollback ,activity_details               xmltype
--rollback ,activity_clob                  clob
--rollback ,constraint activity_00000_pk
--rollback    primary key (activity_pk)
--rollback );
