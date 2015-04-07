--liquibase formatted sql

--This is for the ars_stewards schema
 
--changeset drsteini:1GrantsAA
grant select on raw_station_xml to wqp_core;
--rollback revoke select on raw_station_xml from wqp_core;

--changeset drsteini:1GrantsAB
grant select on raw_result_xml to wqp_core;
--rollback revoke select on raw_result_xml from wqp_core;

--changeset drsteini:1GrantsAC
grant select on site_type_to_primary to wqp_core;
--rollback revoke select on site_type_to_primary from wqp_core;

--changeset drsteini:1GrantsAD
grant select on char_name_to_type to wqp_core;
--rollback revoke select on char_name_to_type from wqp_core;
