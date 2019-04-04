create table if not exists ${ARS_SCHEMA_NAME}.char_name_to_type
(characteristic_name            character varying (500) primary key
,characteristic_type            character varying (500)
);
