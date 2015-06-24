--liquibase formatted sql

--This is for the ars_stewards schema

--changeset drsteini:1TablesAA
create table raw_station_xml
(file_name                      varchar2(100 char)
,load_timestamp                 timestamp(6)
,raw_xml                        xmltype
,constraint raw_station_xml_pk
  primary key (file_name)
);
--rollback drop table raw_station_xml cascade constraints purge;

--changeset drsteini:1TablesAB
create table raw_result_xml
(file_name                      varchar2(100 char)
,load_timestamp                 timestamp(6)
,raw_xml                        xmltype
,constraint raw_result_xml_pk
  primary key (file_name)
);
--rollback drop table raw_result_xml cascade constraints purge;

--changeset drsteini:1TablesAC
create table site_type_to_primary
(site_type                      varchar2(500 char)
,primary_site_type              varchar2(500 char)
,constraint site_type_to_primary_pk
  primary key (site_type)
);
--rollback drop table site_type_to_primary cascade constraints purge;

--changeset drsteini:1TablesAD
create table char_name_to_type
(characteristic_name            varchar2(500 char)
,characteristic_type            varchar2(500 char)
,constraint char_name_type_pk
   primary key (characteristic_name)
);
--rollback drop table char_name_to_type cascade constraints purge;
