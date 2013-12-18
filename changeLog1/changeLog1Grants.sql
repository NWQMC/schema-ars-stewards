--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1SchemaGrantsAA
grant select on ars_characteristicname_00000 to nwis_ws_user;
--rollback revoke select on ars_characteristicname_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAB
grant select on ars_country_00000 to nwis_ws_user;
--rollback revoke select on ars_country_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAC
grant select on ars_county_00000 to nwis_ws_user;
--rollback revoke select on ars_county_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAD
grant select on ars_organization_00000 to nwis_ws_user;
--rollback revoke select on ars_organization_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAE
grant select on ars_samplemedia_00000 to nwis_ws_user;
--rollback revoke select on ars_samplemedia_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAF
grant select on ars_sitetype_00000 to nwis_ws_user;
--rollback revoke select on ars_sitetype_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAG
grant select on ars_state_00000 to nwis_ws_user;
--rollback revoke select on ars_state_00000 from nwis_ws_user;


grant select on ars_organization_00000 to nwis_ws_user;

grant select on ars_station_00000 to nwis_ws_user;

grant select on ars_activity_00000 to nwis_ws_user;

grant select on ars_result_sum_00000 to nwis_ws_user;

grant select on ars_result_00000 to nwis_ws_user;

