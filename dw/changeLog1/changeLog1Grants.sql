--liquibase formatted sql

--This is for the ars_stewards schema
 
--changeset drsteini:1SchemaGrantsAA
grant select on activity_00000 to ars_stewards_user;
--rollback revoke select on activity_00000 from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAB
grant select on characteristicname_00000 to ars_stewards_user;
--rollback revoke select on characteristicname_00000 from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAC
grant select on country_00000 to ars_stewards_user;
--rollback revoke select on country_00000 from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAD
grant select on county_00000 to ars_stewards_user;
--rollback revoke select on county_00000 from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAE
grant select on organization_00000 to ars_stewards_user;
--rollback revoke select on organization_00000 from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAF
grant select on result_00000 to ars_stewards_user;
--rollback revoke select on result_00000 from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAG
grant select on samplemedia_00000 to ars_stewards_user;
--rollback revoke select on samplemedia_00000 from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAH
grant select on sitetype_00000 to ars_stewards_user;
--rollback revoke select on sitetype_00000 from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAI
grant select on state_00000 to ars_stewards_user;
--rollback revoke select on state_00000 from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAJ
grant select on station_00000 to ars_stewards_user;
--rollback revoke select on station_00000 from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAK
grant execute on pkg_dynamic_list to ars_stewards_user;
--rollback revoke execute on pkg_dynamic_list from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAL
grant execute on typ_vctbl to ars_stewards_user;
--rollback revoke execute on typ_vctbl from ars_stewards_user;

--changeset drsteini:1SchemaGrantsAM
grant select on characteristictype_00000 to ars_stewards_user;
--rollback revoke select on characteristictype_00000 from ars_stewards_user;
