--liquibase formatted sql

--This is for the ars_stewards schema

--changeset drsteini:1DataAA context:ci
insert into activity_00000 (activity_pk, activity_details, station_pk, organization_id, station_id, activity_start_date, activity_id)
 values (1, '<Activity><ActivityDescription><ActivityIdentifier>IASF</ActivityIdentifier><ActivityTypeCode>Sample-Routine</ActivityTypeCode><ActivityMediaName>water</ActivityMediaName><ActivityStartDate>6/15/2001</ActivityStartDate><ActivityStartTime><Time>12:00:00</Time><TimeZoneCode>CST</TimeZoneCode></ActivityStartTime><MeasureValue/><MeasureUnitCode/><ActivityDepthHeightMeasure/><ProjectIdentifier>CEAP</ProjectIdentifier><MonitoringLocationIdentifier>IASF-IASF272</MonitoringLocationIdentifier><ActivityCommentText/></ActivityDescription><SampleDescription><SampleCollectionMethod><MethodIdentifier>NSTL_FM10</MethodIdentifier><MethodIdentifierContext>ARS Methods Catalog</MethodIdentifierContext><MethodName>Manual Surface Water Sampling with No Filtering</MethodName><MethodDescriptionText/></SampleCollectionMethod><SampleCollectionEquipmentName>Water Bottle</SampleCollectionEquipmentName><SampleCollectionEquipmentCommentText/></SampleDescription></Activity>', 1, 'ARS', 'IASF-IASF272', TO_DATE('06/15/2001 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'IASF');
--rollback delete from activity_00000 where activity_pk = 1;
