create table raw_result_xml
(file_name                      varchar2(100 char)
,load_timestamp                 timestamp(6)
,raw_xml                        xmltype
,constraint raw_result_xml_pk
  primary key (file_name)
);
