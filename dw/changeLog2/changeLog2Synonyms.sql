--liquibase formatted sql

--This is for the ars_stewards schema

--changeset drsteini:2SchemaSynonymsAA
drop synonym activity;
--rollback create or replace synonym activity for activity_00000;
