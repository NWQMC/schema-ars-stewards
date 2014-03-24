--liquibase formatted sql

--This is for the ars_stewards schema

--changeset drsteini:2DataAA
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Acetochlor','Organics, Pesticide');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Alachlor','Organics, Pesticide');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Alkalinity','Inorganics, Major, Non-metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Aluminum','Inorganics, Minor, Metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Aminomethylphosphonic Acid','Organics, Pesticide');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Ammonia','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Ammonium','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Arsenic','Inorganics, Minor, Non-metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Atrazine','Organics, Pesticide');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('CEAT','Organics, Pesticide');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('CIAT','Organics, Pesticide');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Calcium','Inorganics, Minor, Metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Calcium carbonate','Inorganics, Major, Non-metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Carbon','Inorganics, Major, Non-metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Chloride','Inorganics, Major, Non-metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Chlorophyll','Biological');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Chlorophyll A','Biological');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Coliforms','Biological');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Conductivity','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Copper','Inorganics, Minor, Metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Depth','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Depth of measurement','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Dissolved oxygen','Inorganics, Major, Non-metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Dissolved solids','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Enterococci','Biological');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Filterable suspended solids','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Glyphosate','Organics, Pesticide');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Iron','Inorganics, Minor, Metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Magnesium','Inorganics, Major, Metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Manganese','Inorganics, Minor, Metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Metolachlor','Organics, Pesticide');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Metribuzin','Organics, Pesticide');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Nitrate-N','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Nitrate-Nitrite','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Nitrate-Nitrogen','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Nitrite-N','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Nitrogen','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Nitrogen Kjeldahl','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Orthophosphate','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Phosphate','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Phosphorus','Nutrient');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Potassium','Inorganics, Major, Metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Salinity','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Sample flow volume','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Sediment','Sediment');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Simazine','Organics, Pesticide');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Sodium','Inorganics, Major, Metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Specific conductivity','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Sulfur','Inorganics, Major, Non-metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Temperature','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Total suspended solids','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Turbidity','Physical');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('Zinc','Inorganics, Minor, Metals');
insert into characteristic_name_to_type (characteristic_name, characteristic_type)
values ('pH','Physical');
--rollback truncate table characteristic_name_to_type;
