create table if not exists ${ARS_STEWARDS_SCHEMA_NAME}.raw_station_xml
(file_name                      character varying(100) primary key
,load_timestamp                 timestamp(6)
,raw_xml                        xml
);
