--liquibase formatted sql

--This is for the ars_stewards schema
 
--changeset drsteini:2SchemaTypesAA
drop type typ_vctbl;
--rollback create or replace type typ_vctbl as table of varchar2(256);
