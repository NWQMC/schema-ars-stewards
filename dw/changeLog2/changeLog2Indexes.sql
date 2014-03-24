--liquibase formatted sql

--This is for the ars_stewards schema

--changeset drsteini:2SchemaIndexesAA
insert into user_sdo_geom_metadata
  values('RESULT_00000', 'GEOM', mdsys.sdo_dim_array( mdsys.sdo_dim_element('X', -180, 180, 0.005), mdsys.sdo_dim_element('Y', -90, 90, 0.005)), 8265);
--rollback delete from user_sdo_geom_metadata where table_name = 'RESULT_00000';

--changeset drsteini:2SchemaIndexesAB
create index result_00000_geom on result_00000 (geom) indextype is mdsys.spatial_index parameters('sdo_indx_dims=2 layer_gtype="POINT"');
--rollback drop index result_00000_geom;
