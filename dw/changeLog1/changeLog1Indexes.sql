--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaIndexesAB
create bitmap index station_00000_country on station_00000 (country_cd);
--rollback drop index station_00000_country;

--changeset drsteini:1SchemaIndexesAC
create bitmap index station_00000_county on station_00000 (county_cd);
--rollback drop index station_00000_county;

--changeset drsteini:1SchemaIndexesAD
insert into user_sdo_geom_metadata
  values('STATION_00000', 'GEOM', mdsys.sdo_dim_array( mdsys.sdo_dim_element('X', -180, 180, 0.005), mdsys.sdo_dim_element('Y', -90, 90, 0.005)), 8265);
--rollback delete from user_sdo_geom_metadata where table_name = 'STATION_00000';

--changeset drsteini:1SchemaIndexesAE
create index station_00000_geom on station_00000 (geom) indextype is mdsys.spatial_index parameters('sdo_indx_dims=2 layer_gtype="POINT"');
--rollback drop index station_00000_geom;

--changeset drsteini:1SchemaIndexesAF
create bitmap index station_00000_huc on station_00000 (huc_8);
--rollback drop index station_00000_huc;

--changeset drsteini:1SchemaIndexesAG
create bitmap index station_00000_org on station_00000 (organization_id);
--rollback drop index station_00000_org;

--changeset drsteini:1SchemaIndexesAH
create bitmap index station_00000_site_type on station_00000 (site_type);
--rollback drop index station_00000_site_type;

--changeset drsteini:1SchemaIndexesAI
create bitmap index station_00000_state on station_00000 (state_cd);
--rollback drop index station_00000_state;

--changeset drsteini:1SchemaIndexesAJ
create bitmap index station_00000_station on station_00000 (station_id);
--rollback drop index station_00000_station;

--changeset drsteini:1SchemaIndexesAK
create bitmap index result_00000_activity on result_00000 (activity_pk);
--rollback drop index result_00000_activity;

--changeset drsteini:1SchemaIndexesAL
create bitmap index result_00000_char on result_00000 (characteristic_name);
--rollback drop index result_00000_char;

--changeset drsteini:1SchemaIndexesAM
create bitmap index result_00000_country on result_00000 (country_cd);
--rollback drop index result_00000_country;

--changeset drsteini:1SchemaIndexesAN
create bitmap index result_00000_county on result_00000 (county_cd);
--rollback drop index result_00000_county;

--changeset drsteini:1SchemaIndexesAO
create bitmap index result_00000_date on result_00000 (activity_start_date);
--rollback drop index result_00000_date;

--changeset drsteini:1SchemaIndexesAP
create bitmap index result_00000_huc on result_00000 (huc_8);
--rollback drop index result_00000_huc;

--changeset drsteini:1SchemaIndexesAQ
create bitmap index result_00000_media on result_00000 (sample_media);
--rollback drop index result_00000_media;

--changeset drsteini:1SchemaIndexesAR
create bitmap index result_00000_org on result_00000 (organization_id);
--rollback drop index result_00000_org;

--changeset drsteini:1SchemaIndexesAS
create bitmap index result_00000_site_type on result_00000 (site_type);
--rollback drop index result_00000_site_type;

--changeset drsteini:1SchemaIndexesAT
create bitmap index result_00000_state on result_00000 (state_cd);
--rollback drop index result_00000_state;

--changeset drsteini:1SchemaIndexesAU
create bitmap index result_00000_station on result_00000 (station_id);
--rollback drop index result_00000_station;

--changeset drsteini:1SchemaIndexesAV
create bitmap index result_00000_station_pk on result_00000 (station_pk);
--rollback drop index result_00000_station_pk;
