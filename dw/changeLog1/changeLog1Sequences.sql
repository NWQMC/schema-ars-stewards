--liquibase formatted sql

--This is for the ars_stewards schema

--changeset drsteini:1SchemaSequencesAA
create sequence table_seq start with 1 maxvalue 99999 minvalue 1 cycle nocache noorder;
--rollback drop sequence table_seq;
