--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaSynonymsAA
create or replace synonym characteristicname for characteristicname_00000;
--rollback drop synonym characteristicname;

--changeset drsteini:1SchemaSynonymsAB
create or replace synonym country for country_00000;
--rollback drop synonym country;

--changeset drsteini:1SchemaSynonymsAC
create or replace synonym county for county_00000;
--rollback drop synonym county;

--changeset drsteini:1SchemaSynonymsAD
create or replace synonym organization for organization_00000;
--rollback drop synonym organization;

--changeset drsteini:1SchemaSynonymsAE
create or replace synonym samplemedia for samplemedia_00000;
--rollback drop synonym samplemedia;

--changeset drsteini:1SchemaSynonymsAF
create or replace synonym sitetype for sitetype_00000;
--rollback drop synonym sitetype;

--changeset drsteini:1SchemaSynonymsAG
create or replace synonym state for state_00000;
--rollback drop synonym state;


--changeset drsteini:1SchemaSynonymsBA
create or replace synonym station for station_00000;
--rollback drop synonym station;

create or replace synonym organization for organization_00000;
create or replace synonym activity for activity_00000;
create or replace synonym result_sum for result_sum_00000;

create or replace synonym result for result_00000;