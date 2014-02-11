--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaIndexesAA
create index raw_station_xml_idx on raw_station_xml (raw_xml) indextype is xdb.xmlindex parameters ('path table raw_station_xml__path_table');
--rollback drop index raw_station_xml_idx;

--changeset drsteini:1SchemaIndexesAB
create index raw_result_xml_idx on raw_result_xml (raw_xml) indextype is xdb.xmlindex parameters ('path table raw_result_xml__path_table');
--rollback drop index raw_result_xml_idx;

--changeset drsteini:1SchemaIndexesAC
create index split_activity_idx on split_activity (activity_details) indextype is xdb.xmlindex parameters ('path table split_activity__path_table');
--rollback drop index split_activity_idx;
