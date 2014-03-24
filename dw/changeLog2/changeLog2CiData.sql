--liquibase formatted sql

--This is for the ars_stewards schema
--changeset drsteini:2DataAA context:ci
update station_00000 set organization_clob = '<OrganizationDescription><OrganizationIdentifier>ARS</OrganizationIdentifier><OrganizationFormalName>Agricultural Research Service</OrganizationFormalName></OrganizationDescription>';
--rollback update station_00000 set organization_clob = null;

--changeset drsteini:2DataAB context:ci
update result_00000 set organization_clob = '<OrganizationDescription><OrganizationIdentifier>ARS</OrganizationIdentifier><OrganizationFormalName>Agricultural Research Service</OrganizationFormalName></OrganizationDescription>';
--rollback update result_00000 set organization_clob = null;

--changeset drsteini:2DataAC context:ci
update result_00000 set activity_clob = '<Activity><ActivityDescription><ActivityIdentifier>IASF</ActivityIdentifier><ActivityTypeCode>Sample-Routine</ActivityTypeCode><ActivityMediaName>water</ActivityMediaName><ActivityStartDate>6/15/2001</ActivityStartDate><ActivityStartTime><Time>12:00:00</Time><TimeZoneCode>CST</TimeZoneCode></ActivityStartTime><MeasureValue/><MeasureUnitCode/><ActivityDepthHeightMeasure/><ProjectIdentifier>CEAP</ProjectIdentifier><MonitoringLocationIdentifier>IASF-IASF272</MonitoringLocationIdentifier><ActivityCommentText/></ActivityDescription><SampleDescription><SampleCollectionMethod><MethodIdentifier>NSTL_FM10</MethodIdentifier><MethodIdentifierContext>ARS Methods Catalog</MethodIdentifierContext><MethodName>Manual Surface Water Sampling with No Filtering</MethodName><MethodDescriptionText/></SampleCollectionMethod><SampleCollectionEquipmentName>Water Bottle</SampleCollectionEquipmentName><SampleCollectionEquipmentCommentText/></SampleDescription></Activity>';
--rollback update result_00000 set activity_clob = null;
