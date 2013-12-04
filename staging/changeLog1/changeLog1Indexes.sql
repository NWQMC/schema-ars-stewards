--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaIndexesAA
create index stewards_raw_xml_idx on stewards_raw_xml (raw_xml) indextype is xdbxmlindex parameters ('path table stewards_raw__path_table');
--rollback drop index stewards_raw_xml_idx;
