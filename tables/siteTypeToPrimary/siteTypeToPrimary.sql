create table site_type_to_primary
(site_type                      varchar2(500 char)
,primary_site_type              varchar2(500 char)
,constraint site_type_to_primary_pk
  primary key (site_type)
);
