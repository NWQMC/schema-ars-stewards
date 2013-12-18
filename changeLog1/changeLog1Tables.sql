--liquibase formatted sql

--This is for the ars_ws_star schema
 
--changeset drsteini:1SchemaTablesAA
create table characteristicname_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint characteristicname_00000_pk
   primary key (code_value)
);
--rollback drop table characteristicname_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAB
create table country_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint country_00000_pk
   primary key (code_value)
);
--rollback drop table country_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAC
create table county_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,country_cd                     varchar2(2 char)
,state_cd                       varchar2(2 char)
,sort_order                     number
,constraint county_00000_pk
   primary key (code_value)
);
--rollback drop table county_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAD
create table organization_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,organization_details			xmltype
,sort_order                     number
,constraint organization_00000_pk
   primary key (code_value)
);
--rollback drop table organization_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAE
create table samplemedia_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint samplemedia_00000_pk
   primary key (code_value)
);
--rollback drop table samplemedia_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAF
create table sitetype_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint sitetype_00000_pk
   primary key (code_value)
);
--rollback drop table sitetype_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAG
create table state_00000
(code_value                     varchar2(500 char)
,description_with_country       varchar2(4000 char)
,description_with_out_country   varchar2(4000 char)
,country_cd                     varchar2(2 char)
,sort_order                     number
,constraint state_00000_pk
   primary key (code_value)
);
--rollback drop table state_00000 cascade constraints purge;


--changeset drsteini:1SchemaTablesBA
create table station_00000
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
,constraint station_00000_pk
   primary key (station_pk)
,constraint station_00000_org
   foreign key (organization_id)
     references organization_00000 (code_value)
       disable
);
--rollback drop table station_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesBB
create table activity_00000
(activity_pk					number
,activity_details				xmltype
,station_pk                		number
,organization_id                varchar2(500 char)
,station_id                		varchar2(100 char)
,activity_start_date	  		date
,activity_id	                varchar2(500 char)
,constraint activity_00000_pk
   primary key (activity_pk)
,constraint activity_00000_station
   foreign key (station_pk)
     references station_00000 (station_pk)
       disable
);
--rollback drop table activity_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesBC
create table result_00000
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
,constraint result_00000_pk
   primary key (result_pk)
,constraint result_00000_station
   foreign key (station_pk)
     references station_00000 (station_pk)
       disable
,constraint result_00000_activity
   foreign key (activity_pk)
     references activity_00000 (activity_pk)
       disable
);
--rollback drop table result_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesBD
create table result_sum_00000
(result_sum_pk            		number
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
,result_count              		number
,constraint result_sum_00000_pk
   primary key (result_sum_pk)
,constraint result_sum_00000_station
   foreign key (station_pk)
     references station_00000 (station_pk)
       disable
);
--rollback drop table result_sum_00000 cascade constraints purge;

