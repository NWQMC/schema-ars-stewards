--liquibase formatted sql

--This is for the ars_stewards schema
 
--changeset drsteini:1SchemaTablesAA
create table organization_temp
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,organization_details			xmltype
,sort_order                     number
,constraint organization_temp_pk
   primary key (code_value)
);
--rollback drop table organization_temp cascade constraints purge;

--changeset drsteini:1SchemaTablesAB
create table station_temp
(station_pk						number
,station_id                     varchar2(100 char)
,station_details                xmltype
,country_cd                     varchar2(2 char)
,county_cd                      varchar2(3 char)
,geom                           mdsys.sdo_geometry
,huc_8                          varchar2(8 char)
,organization_id                varchar2(500 char)
,state_cd                       varchar2(2 char)
,site_type                  	varchar2(500 char)
,constraint station_temp_pk
   primary key (station_pk)
,constraint station_temp_org
   foreign key (organization_id)
     references organization_temp (code_value)
       disable
);
--rollback drop table station_temp cascade constraints purge;

--changeset drsteini:1SchemaTablesAC
create table split_activity
(activity_pk                    number
,organization_id                varchar2(500 char)
,activity_details               xmltype
,constraint split_activity_pk
   primary key (activity_pk)
);
--rollback drop table split_activity cascade constraints purge;

--changeset drsteini:1SchemaTablesAD
create table activity_temp
(activity_pk					number
,activity_details				xmltype
,constraint activity_temp_pk
   primary key (activity_pk)
);
--rollback drop table activity_temp cascade constraints purge;

--changeset drsteini:1SchemaTablesAE
create table result_temp
(result_pk						number
,result_details                 xmltype
,activity_pk					number
,station_pk						number
,station_id                		varchar2(100 char)
,activity_start_date	  		date
,characteristic_name       		varchar2(32 char)
,country_cd                     varchar2(2 char)
,county_cd                      varchar2(3 char)
,huc_8                          varchar2(8 char)
,organization_id                varchar2(500 char)
,sample_media		       		varchar2(30 char)
,state_cd                       varchar2(2 char)
,site_type	                   	varchar2(500 char)
,constraint result_temp_pk
   primary key (result_pk)
,constraint result_temp_station
   foreign key (station_pk)
     references station_temp (station_pk)
       disable
,constraint result_temp_activity
   foreign key (activity_pk)
     references activity_temp (activity_pk)
       disable
);
--rollback drop table result_temp cascade constraints purge;

--changeset drsteini:1SchemaTablesAF
create table raw_station_xml
(file_name                      varchar2(100 char)
,load_timestamp                 timestamp(6)
,raw_xml                        xmltype
,constraint raw_station_xml_pk
  primary key (file_name)
);
--rollback drop table raw_station_xml cascade constraints purge;

--changeset drsteini:1SchemaTablesAG
create table raw_result_xml
(file_name                      varchar2(100 char)
,load_timestamp                 timestamp(6)
,raw_xml                        xmltype
,constraint raw_result_xml_pk
  primary key (file_name)
);
--rollback drop table raw_result_xml cascade constraints purge;

--changeset drsteini:1SchemaTablesAH
create table site_type_to_primary
(site_type                      varchar2(500 char)
,primary_site_type              varchar2(500 char)
,constraint site_type_to_primary_pk
  primary key (site_type)
);
--rollback drop table site_type_to_primary cascade constraints purge;
