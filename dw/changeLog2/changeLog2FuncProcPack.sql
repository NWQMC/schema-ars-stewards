--liquibase formatted sql

--This is for the ars_stewards schema
 
--changeset drsteini:2SchemaFuncProcPackAA endDelimiter:/ splitStatements:false
drop package body pkg_dynamic_list;
--rollback create or replace package body pkg_dynamic_list as
--rollback     function get_table (p_char in typ_vctbl)
--rollback         return typ_vctbl pipelined is
--rollback         begin
--rollback             for i in 1..p_char.count loop
--rollback                 pipe row (p_char (i));
--rollback             end loop;
--rollback 
--rollback             return;
--rollback     end get_table;
--rollback end pkg_dynamic_list;

--changeset drsteini:2SchemaFuncProcPackAB endDelimiter:/ splitStatements:false
drop package pkg_dynamic_list;
--rollback create or replace package pkg_dynamic_list as
--rollback function get_table (p_char in typ_vctbl)
--rollback         return typ_vctbl pipelined;
--rollback end pkg_dynamic_list;
