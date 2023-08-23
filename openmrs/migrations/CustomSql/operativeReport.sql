DELETE FROM global_property WHERE property = 'bahmni.sqlGet.operativeReport';
SELECT uuid() INTO @uuid;

INSERT INTO global_property (property, property_value, description, uuid)
 VALUES ('bahmni.sqlGet.operativeReport',
"SELECT
  DATE_FORMAT(dateRecorded.value, '%d %b %Y') AS `Date of Surgery`,
  surgeon.value AS Surgeon,
  CASE
    WHEN dateRecorded.form = '19 Surgical_Hysterectomy' THEN 'Surgical - Hysterectomy'
    WHEN dateRecorded.form = '20 Surgical_Ovarian' THEN 'Surgical - Ovarian'
    WHEN dateRecorded.form = '21 Surgical_Vulvectomy' THEN 'Surgical - Vulvectomy'
  END AS `Form Name`,
  surgical_approach.value AS `Surgical Approach`,
  concat_ws(
    ', ',
    OVProcedurePerformed.value,
    VUProcedurePerformed.value,
    HYProcedurePerformed.value,
    procedurePerformedOther.value
  ) AS `Procedure Performed`,
  concat_ws(
    ', ',
    OVIntraOperativeComplication.value,
    VUIntraOperativeComplication.value,
    HYIntraOperativeComplication.value
  ) AS `Intraoperative Complication`,
  estimatedBloodLoss.value AS `Estimated Loss (ml)`
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
      AND p.uuid = ${patientUuid}
  ) patient_encounters
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      o.value_datetime AS value,
      cn.name AS filed_name
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name IN (
        'VU, Date of surgery',
        'OV, Date of surgery',
        'HY, Date of surgery'
      )
  ) dateRecorded ON dateRecorded.encounter_id = patient_encounters.encounter_id
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_text AS 'value',
      cn.name AS filed_name
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
  ) surgeon ON surgeon.encounter_id = patient_encounters.encounter_id
  AND (
    (
      dateRecorded.filed_name = 'OV, Date of surgery'
      AND surgeon.filed_name = 'OV, Surgeon'
    )
    OR (
      dateRecorded.filed_name = 'VU, Date of surgery'
      AND surgeon.filed_name = 'VU, Surgeon'
    )
    OR (
      dateRecorded.filed_name = 'HY, Date of surgery'
      AND surgeon.filed_name = 'HY, Surgeon'
    )
  )
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      coded_fscn.name AS 'value',
      cn.name AS filed_name
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
  ) surgical_approach ON surgical_approach.encounter_id = patient_encounters.encounter_id
  AND (
    (
      dateRecorded.filed_name = 'OV, Date of surgery'
      AND surgical_approach.filed_name = 'OV, Surgical approach'
    )
    OR (
      dateRecorded.filed_name = 'VU, Date of surgery'
      AND surgical_approach.filed_name = 'VU, Surgical approach'
    )
    OR (
      dateRecorded.filed_name = 'HY, Date of surgery'
      AND surgical_approach.filed_name = 'HY, Surgical approach'
    )
  )
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
      AND cn.name = 'OV, Procedure performed'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
      AND coded_fscn.name <> 'Other'
    GROUP BY
      o.encounter_id,
      o.person_id
  ) OVProcedurePerformed ON OVProcedurePerformed.encounter_id = patient_encounters.encounter_id
  AND dateRecorded.filed_name = 'OV, Date of surgery'
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
      AND cn.name = 'VU, Procedure performed'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
      AND coded_fscn.name <> 'Other'
    GROUP BY
      o.encounter_id,
      o.person_id
  ) VUProcedurePerformed ON VUProcedurePerformed.encounter_id = patient_encounters.encounter_id
  AND dateRecorded.filed_name = 'VU, Date of surgery'
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
      AND cn.name = 'HY, Procedure performed'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
      AND coded_fscn.name <> 'Other'
    GROUP BY
      o.encounter_id,
      o.person_id
  ) HYProcedurePerformed ON HYProcedurePerformed.encounter_id = patient_encounters.encounter_id
  AND dateRecorded.filed_name = 'HY, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_text AS 'value',
      cn.name AS filed_name
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
  ) procedurePerformedOther ON procedurePerformedOther.encounter_id = patient_encounters.encounter_id
  AND (
    (
      dateRecorded.filed_name = 'OV, Date of surgery'
      AND procedurePerformedOther.filed_name = 'OV, Procedure performed, other'
    )
    OR (
      dateRecorded.filed_name = 'VU, Date of surgery'
      AND procedurePerformedOther.filed_name = 'VU, Procedure performed, other'
    )
    OR (
      dateRecorded.filed_name = 'HY, Date of surgery'
      AND procedurePerformedOther.filed_name = 'HY, Procedure perfomed,other'
    )
  )
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
      AND cn.name = 'HY, Intraoperative complication'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) HYIntraOperativeComplication ON HYIntraOperativeComplication.encounter_id = patient_encounters.encounter_id
  AND dateRecorded.filed_name = 'HY, Date of surgery'
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
      AND cn.name = 'VU, Intraoperative complication'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) VUIntraOperativeComplication ON VUIntraOperativeComplication.encounter_id = patient_encounters.encounter_id
  AND dateRecorded.filed_name = 'VU, Date of surgery'
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
  ) OVIntraOperativeComplication ON OVIntraOperativeComplication.encounter_id = patient_encounters.encounter_id
  AND dateRecorded.filed_name = 'OV, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_numeric AS 'value',
      cn.name AS filed_name
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
  ) estimatedBloodLoss ON estimatedBloodLoss.encounter_id = patient_encounters.encounter_id
  AND (
    (
      dateRecorded.filed_name = 'OV, Date of surgery'
      AND estimatedBloodLoss.filed_name = 'OV, Estimated blood loss'
    )
    OR (
      dateRecorded.filed_name = 'VU, Date of surgery'
      AND estimatedBloodLoss.filed_name = 'VU, Estimated blood loss'
    )
    OR (
      dateRecorded.filed_name = 'HY, Date of surgery'
      AND estimatedBloodLoss.filed_name = 'HY, Estimated blood loss'
    )
  )
ORDER BY
  dateRecorded.value DESC,
  patient_encounters.encounter_id DESC"
, 'patient movement history in bed management', @uuid);
