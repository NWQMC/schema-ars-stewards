create table raw_station_xml
(file_name                      varchar2(100 char)
,load_timestamp                 timestamp(6)
,raw_xml                        xmltype
,constraint raw_station_xml_pk
  primary key (file_name)
);
