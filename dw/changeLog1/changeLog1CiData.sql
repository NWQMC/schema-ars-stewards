--liquibase formatted sql

--This is for the ars_stewards schema

--changeset drsteini:1DataAA context:ci
insert into activity_00000 (activity_pk, activity_details, station_pk, organization_id, station_id, activity_start_date, activity_id)
 values (1, '<Activity><ActivityDescription><ActivityIdentifier>IASF</ActivityIdentifier><ActivityTypeCode>Sample-Routine</ActivityTypeCode><ActivityMediaName>water</ActivityMediaName><ActivityStartDate>6/15/2001</ActivityStartDate><ActivityStartTime><Time>12:00:00</Time><TimeZoneCode>CST</TimeZoneCode></ActivityStartTime><MeasureValue/><MeasureUnitCode/><ActivityDepthHeightMeasure/><ProjectIdentifier>CEAP</ProjectIdentifier><MonitoringLocationIdentifier>IASF-IASF272</MonitoringLocationIdentifier><ActivityCommentText/></ActivityDescription><SampleDescription><SampleCollectionMethod><MethodIdentifier>NSTL_FM10</MethodIdentifier><MethodIdentifierContext>ARS Methods Catalog</MethodIdentifierContext><MethodName>Manual Surface Water Sampling with No Filtering</MethodName><MethodDescriptionText/></SampleCollectionMethod><SampleCollectionEquipmentName>Water Bottle</SampleCollectionEquipmentName><SampleCollectionEquipmentCommentText/></SampleDescription></Activity>', 1, 'ARS', 'IASF-IASF272', TO_DATE('06/15/2001 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'IASF');
--rollback delete from activity_00000 where activity_pk = 1;

--changeset drsteini:1DataAB context:ci
insert into characteristicname_00000 (code_value, sort_order)
 values ('Acetochlor', 1);
insert into characteristicname_00000 (code_value, sort_order)
 values ('Alachlor', 2);
insert into characteristicname_00000 (code_value, sort_order)
 values ('Atrazine', 3);
insert into characteristicname_00000 (code_value, sort_order)
 values ('Metolachlor', 4);
insert into characteristicname_00000 (code_value, sort_order)
 values ('Metribuzin', 5);
insert into characteristicname_00000 (code_value, sort_order)
 values ('Nitrate-N', 6);
insert into characteristicname_00000 (code_value, sort_order)
 values ('Orthophosphate', 7);
insert into characteristicname_00000 (code_value, sort_order)
 values ('Phosphate', 8);
insert into characteristicname_00000 (code_value, sort_order)
 values ('Simazine', 9);
--rollback delete from characteristicname_00000 where code_value in ('Acetochlor', 'Alachlor', 'Atrazine', 'Metolachlor', 'Metribuzin', 'Nitrate-N', 'Orthophosphate', 'Phosphate', 'Simazine');

--changeset drsteini:1DataAC context:ci
insert into country_00000 (code_value, description, sort_order)
 values ('US', 'UNITED STATES OF AMERICA', 1);
--rollback delete from country_00000 where code_value = 'US';

--changeset drsteini:1DataAD context:ci
insert into county_00000 (code_value, description, country_cd, state_cd, sort_order)
 values ('US:19:015', 'US, IOWA, BOONE', 'US', '19', 1);
insert into county_00000 (code_value, description, country_cd, state_cd, sort_order)
 values ('US:19:079', 'US, IOWA, HAMILTON', 'US', '19', 2);
insert into county_00000 (code_value, description, country_cd, state_cd, sort_order)
 values ('US:19:083', 'US, IOWA, HARDIN', 'US', '19', 3);
insert into county_00000 (code_value, description, country_cd, state_cd, sort_order)
 values ('US:19:169', 'US, IOWA, STORY', 'US', '19', 4);
--rollback delete from county_00000 where code_value in ('US:19:015', 'US:19:079', 'US:19:083', 'US:19:169');

--changeset drsteini:1DataAE context:ci
insert into organization_00000 (code_value, description, organization_details, sort_order)
 values ('ARS', 'Agricultural Research Service', '<OrganizationDescription><OrganizationIdentifier>ARS</OrganizationIdentifier><OrganizationFormalName>Agricultural Research Service</OrganizationFormalName></OrganizationDescription>', 1);
--rollback delete from organization_00000 where code_value = 'ARS';

--changeset drsteini:1DataAF context:ci
insert into result_00000 (result_pk, result_details, activity_pk, station_pk, station_id, activity_start_date, characteristic_name, country_cd, county_cd, huc_8, organization_id, sample_media, state_cd, site_type)
 values (1, '<Result><ResultDescription><ResultDetectionConditionText>Present Below Quantification Limit</ResultDetectionConditionText><CharacteristicName>Phosphate</CharacteristicName><ResultSampleFractionText>Total</ResultSampleFractionText><ResultMeasure><ResultMeasureValue>0.07</ResultMeasureValue><MeasureUnitCode>mg/L</MeasureUnitCode></ResultMeasure><ResultStatusIdentifier>Final</ResultStatusIdentifier><ResultValueTypeName>Actual</ResultValueTypeName><DataQuality><PrecisionValue>3.26 RSD</PrecisionValue></DataQuality><ResultCommentText>Non-detect = negative detection-lmit value</ResultCommentText></ResultDescription><ResultAnalyticalMethod><MethodIdentifier>NSTL_WQ3</MethodIdentifier><MethodIdentifierContext>ARS Methods Catalog</MethodIdentifierContext><MethodName>Determination of Total Phosphorus by Flow Injection Analysis Colorimetry (Acid Persulfate Digestion Method)</MethodName><MethodDescriptionText/></ResultAnalyticalMethod><ResultLabInformation><ResultDetectionQuantitationLimit><DetectionQuantitationLimitTypeName>Instrument Detection Level</DetectionQuantitationLimitTypeName><DetectionQuantitationLimitMeasure><MeasureValue>0.02</MeasureValue><MeasureUnitCode>mg/L</MeasureUnitCode></DetectionQuantitationLimitMeasure></ResultDetectionQuantitationLimit></ResultLabInformation></Result>', 1, 1, 'IASF-IASF272', TO_DATE('06/15/2001 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Phosphate', 'US', '083', '07080207', 'ARS', 'water', '19', 'Land Runoff');
insert into result_00000 (result_pk, result_details, activity_pk, station_pk, station_id, activity_start_date, characteristic_name, country_cd, county_cd, huc_8, organization_id, sample_media, state_cd, site_type)
 values (2, '<Result><ResultDescription><ResultDetectionConditionText>Present Below Quantification Limit</ResultDetectionConditionText><CharacteristicName>Nitrate-N</CharacteristicName><ResultSampleFractionText/><ResultMeasure><ResultMeasureValue>23.4</ResultMeasureValue><MeasureUnitCode>mg/L</MeasureUnitCode></ResultMeasure><ResultStatusIdentifier>Final</ResultStatusIdentifier><ResultValueTypeName>Actual</ResultValueTypeName><DataQuality><PrecisionValue>2.45 RSD</PrecisionValue></DataQuality><ResultCommentText>Non-detect = negative detection-lmit value</ResultCommentText></ResultDescription><ResultAnalyticalMethod><MethodIdentifier>NSTL_WQ1.1</MethodIdentifier><MethodIdentifierContext>ARS Methods Catalog</MethodIdentifierContext><MethodName>Determination of Nitrate/Nitrite by Flow Injection Analysis</MethodName><MethodDescriptionText/></ResultAnalyticalMethod><ResultLabInformation><ResultDetectionQuantitationLimit><DetectionQuantitationLimitTypeName>Instrument Detection Level</DetectionQuantitationLimitTypeName><DetectionQuantitationLimitMeasure><MeasureValue>0.3</MeasureValue><MeasureUnitCode>mg/L</MeasureUnitCode></DetectionQuantitationLimitMeasure></ResultDetectionQuantitationLimit></ResultLabInformation></Result>', 1, 1, 'IASF-IASF272', TO_DATE('06/15/2001 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Nitrate-N', 'US', '083', '07080207', 'ARS', 'water', '19', 'Land Runoff'); 
--rollback delete from result_00000 where result_pk in (1,2);

--changeset drsteini:1DataAG context:ci
insert into samplemedia_00000 (code_value, sort_order)
 values ('water', 1);
--rollback delete from samplemedia_00000 where code_value = 'water';

--changeset drsteini:1DataAH context:ci
insert into sitetype_00000 (code_value, sort_order)
 values ('Land Runoff', 1);
insert into sitetype_00000 (code_value, sort_order)
 values ('River/Stream', 2);
--rollback delete from sitetype_00000 where code_value in ('Land Runoff', 'River/Stream');

--changeset drsteini:1DataAI context:ci
insert into state_00000 (code_value, description_with_country, description_with_out_country, country_cd, sort_order)
 values ('US:19', 'US, IOWA', 'IOWA', 'US', 1);
--rollback delete from state_00000 where code_value = 'US:19';

--changeset drsteini:1DataAJ context:ci
insert into station_00000 (station_pk, station_id, station_details, country_cd, county_cd, huc_8, organization_id, state_cd, site_type)
 values (1, 'IASF-IASF272', '<MonitoringLocation><MonitoringLocationIdentity><MonitoringLocationIdentifier>IASF-IASF272</MonitoringLocationIdentifier><MonitoringLocationName>IASF272</MonitoringLocationName><MonitoringLocationTypeName>Land Runoff</MonitoringLocationTypeName><MonitoringLocationDescriptionText>A drainage ditch monitoring site located ~½ mile (.8 km) between A Avenue and 941st Street.  Water quality grab samples are taken and analyzed for sediment concentration, nitrate, and total phosphorus.</MonitoringLocationDescriptionText><HUCEightDigitCode>07080207</HUCEightDigitCode><HUCTwelveDigitCode>070802070601</HUCTwelveDigitCode><DrainageAreaMeasure><MeasureValue>12</MeasureValue><MeasureUnitCode>square miles</MeasureUnitCode></DrainageAreaMeasure></MonitoringLocationIdentity><MonitoringLocationGeospatial><LatitudeMeasure>42.5144659085</LatitudeMeasure><LongitudeMeasure>-93.471732254</LongitudeMeasure><HorizontalCollectionMethodName>GPS Code (Pseudo Range) Differential</HorizontalCollectionMethodName><HorizontalCoordinateReferenceSystemDatumName>NAD83</HorizontalCoordinateReferenceSystemDatumName><CountryCode>US</CountryCode><StateCode>19</StateCode><CountyCode>083</CountyCode></MonitoringLocationGeospatial><WellInformation><AquiferName>Dave&apos;s Aquifer</AquiferName><AquiferTypeName>My Aquifer Type</AquiferTypeName><WellDepthMeasure><MeasureValue>155</MeasureValue><MeasureUnitCode>ft</MeasureUnitCode></WellDepthMeasure></WellInformation></MonitoringLocation>', 'US', '083', '07080207', 'ARS', '19', 'River/Stream');
--rollback delete from station_00000 where station_pk = 1;
