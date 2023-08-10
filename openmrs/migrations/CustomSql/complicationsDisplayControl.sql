DELETE FROM global_property WHERE property = 'bahmni.sqlGet.complications';
SELECT uuid() INTO @uuid;

INSERT INTO global_property (property, property_value, description, uuid)
 VALUES ('bahmni.sqlGet.complications',
"SELECT
  patient_encounters.encounter_id,
  patient_encounters.patient_id,
  surgicalHysterectomyComplication.value AS Hysterectomy,
  surgicalOvarianComplication.value AS Ovarian
FROM
  (
    SELECT
      e.encounter_id,
      e.patient_id
    FROM
      person p
      INNER JOIN encounter e ON p.person_id = e.patient_id
      AND e.voided IS FALSE
      AND p.voided IS FALSE
      AND p.uuid = 'd5128555-b273-4c3c-a48b-79118225c2f4'
      INNER JOIN visit v ON e.visit_id = v.visit_id
      AND v.voided IS FALSE
      AND v.visit_type_id = 5
    ORDER BY
      e.encounter_id DESC
    LIMIT
      6
  ) patient_encounters
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      coded_fscn.name 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name IN ('HY, Intraoperative complication', 'OV, Intraoperative complication')
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
  ) surgicalHysterectomyComplication ON surgicalHysterectomyComplication.encounter_id = patient_encounters.encounter_id
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      GROUP_CONCAT(coded_fscn.name SEPARATOR ', ') AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'OV, Intraoperative complication'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) surgicalOvarianComplication ON surgicalOvarianComplication.encounter_id = patient_encounters.encounter_id"
, 'Complications', @uuid);
