--liquibase formatted sql

--This is for the ars_stewards schema
 
--changeset drsteini:2SchemaTablesAA
create or replace view suffix_magic as
select '_' || to_char((max_suffix + 1), 'fm00000') new_suffix
  from (select nvl(max(to_number(substr(table_name, -5))), 1) max_suffix
          from user_synonyms
         where translate(table_name, '0123456789', '0000000000') like '%_00000'
       )
;
--rollback drop view suffix_magic;
