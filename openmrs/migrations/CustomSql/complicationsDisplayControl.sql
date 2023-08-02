DELETE FROM global_property WHERE property = 'bahmni.sqlGet.complications';
SELECT uuid() INTO @uuid;

INSERT INTO global_property (property, property_value, description, uuid)
 VALUES ('bahmni.sqlGet.complications',
"select
  e.encounter_id,
  e.encounter_type,
  e.date_created,
  e.encounter_datetime,
  ${visitUuid},
  ${patientUuid}
from
  encounter e
limit
  1"
, 'Complications', @uuid);
