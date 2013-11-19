--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaIndexesAA
insert into user_sdo_geom_metadata
  values('STATION_00000', 'GEOM', mdsys.sdo_dim_array( mdsys.sdo_dim_element('X', -180, 180, 0.005), mdsys.sdo_dim_element('Y', -90, 90, 0.005)), 8265);
--rollback delete from user_sdo_geom_metadata where table_name = 'STATION_00000';

--changeset drsteini:1SchemaIndexesAB
create index station_00000_geom on station_00000 (geom) indextype is mdsys.spatial_index parameters('sdo_indx_dims=2 layer_gtype="POINT"');
--rollback drop index station_00000_geom;


create bitmap index station_00000_country on station_00000 (country_cd);
create bitmap index station_00000_county on station_00000 (county_cd);
create bitmap index station_00000_huc on station_00000 (huc_8);
create bitmap index station_00000_org on station_00000 (organization_id);
create bitmap index station_00000_state on station_00000 (state_cd);
create bitmap index station_00000_site_type on station_00000 (site_type);



create bitmap index result_sum_00000_date on result_sum_00000 (activity_start_date);
create bitmap index result_sum_00000_char on result_sum_00000 (characteristic_name);
create bitmap index result_sum_00000_country on result_sum_00000 (country_cd);
create bitmap index result_sum_00000_county on result_sum_00000 (county_cd);
create bitmap index result_sum_00000_huc on result_sum_00000 (huc_8);
create bitmap index result_sum_00000_org on result_sum_00000 (organization_id);
create bitmap index result_sum_00000_media on result_sum_00000 (sample_media);
create bitmap index result_sum_00000_state on result_sum_00000 (state_cd);
create bitmap index result_sum_00000_site_type on result_sum_00000 (site_type);

create index result_00000_date on result_00000 (activity_start_date);
create bitmap index result_00000_char on result_00000 (characteristic_name);
create bitmap index result_00000_country on result_00000 (country_cd);
create bitmap index result_00000_county on result_00000 (county_cd);
create bitmap index result_00000_huc on result_00000 (huc_8);
create bitmap index result_00000_org on result_00000 (organization_id);
create bitmap index result_00000_media on result_00000 (sample_media);
create bitmap index result_00000_state on result_00000 (state_cd);
create bitmap index result_00000_site_type on result_00000 (site_type);
create index result_00000_activity on result_00000 (activity_pk);

create bitmap index activity_00000_org on activity_00000 (organization_id);
