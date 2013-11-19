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
,result_count					number
,constraint station_temp_pk
   primary key (station_pk)
,constraint station_temp_org
   foreign key (organization_id)
     references organization_temp (code_value)
       disable
);
--rollback drop table station_temp cascade constraints purge;

--changeset drsteini:1SchemaTablesAC
create table activity_temp
(activity_pk					number
,activity_details				xmltype
,station_pk                		number
,organization_id                varchar2(500 char)
,station_id                		varchar2(100 char)
,activity_start_date	  		date
,activity_id	                varchar2(500 char)
,constraint activity_temp_pk
   primary key (activity_pk)
,constraint activity_temp_station
   foreign key (station_pk)
     references station_temp (station_pk)
       disable
);
--rollback drop table activity_temp cascade constraints purge;

--changeset drsteini:1SchemaTablesAD
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
