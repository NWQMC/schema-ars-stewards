--liquibase formatted sql

--This is for the ars_stewards schema
 
--changeset drsteini:1SchemaDblinksAA
create database link ars_stewards_${stage}.er.usgs.gov connect to ars_stewards identified by "${stg_pwd}" using '${stage}.er.usgs.gov';
--rollback drop database link ars_stewards_${stage}.er.usgs.gov;
