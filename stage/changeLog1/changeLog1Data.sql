--liquibase formatted sql

--This is for the ars_stewards schema

--changeset drsteini:1DataAA
insert into site_type_to_primary (site_type, primary_site_type)
  values ('Land Runoff','Land');
insert into site_type_to_primary (site_type, primary_site_type)
  values ('River/Stream','Stream');
--rollback truncate table site_type_to_primary;
