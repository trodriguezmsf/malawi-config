DELETE FROM global_property WHERE property = 'bahmni.sqlGet.operativeReport';
SELECT uuid() INTO @uuid;

INSERT INTO global_property (property, property_value, description, uuid)
 VALUES ('bahmni.sqlGet.operativeReport',
"SELECT
  DATE_FORMAT(date_recorded.value, '%d %b %Y') AS `Date of Surgery`,
  concat_ws(
    ', ',
    hy_surgeon.value,
    vu_surgeon.value,
    ov_surgeon.value
  ) AS Surgeon,
  CASE
    WHEN date_recorded.form = '19 Surgical_Hysterectomy' THEN 'Hysterectomy'
    WHEN date_recorded.form = '20 Surgical_Ovarian' THEN 'Ovarian'
    WHEN date_recorded.form = '21 Surgical_Vulvectomy' THEN 'Vulvectomy'
  END AS `Form Name`,
  concat_ws(
    ', ',
    ov_surgical_approach.value,
    hy_surgical_approach.value
  ) AS `Surgical Approach`,
  concat_ws(
    ', ',
    ov_procedurePerformed.value,
    vu_procedurePerformed.value,
    hy_procedurePerformed.value,
    hy_procedure_performed_other.value,
    vu_procedure_performed_other.value,
    ov_procedure_performed_other.value
  ) AS `Procedure Performed`,
  concat_ws(
    ', ',
    ov_intraOperative_complication.value,
    vu_intraOperative_complication.value,
    hy_intraOperative_complication.value
  ) AS `Intraoperative Complication`,
  concat_ws(
    ', ',
    hy_estimated_bloodLoss.value,
    vu_estimated_bloodLoss.value,
    ov_estimated_bloodLoss.value
  ) AS `Estimated Loss (ml)`
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
  INNER JOIN (
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
  ) date_recorded ON date_recorded.encounter_id = patient_encounters.encounter_id
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_text AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'OV, Surgeon'
  ) ov_surgeon ON ov_surgeon.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'OV, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_text AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'VU, Surgeon'
  ) vu_surgeon ON vu_surgeon.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'VU, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_text AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'HY, Surgeon'
  ) hy_surgeon ON hy_surgeon.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'HY, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      coded_fscn.name AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'OV, Surgical approach'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
  ) ov_surgical_approach ON ov_surgical_approach.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'OV, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      coded_fscn.name AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'HY, Surgical approach'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
  ) hy_surgical_approach ON hy_surgical_approach.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'HY, Date of surgery'
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
  ) ov_procedurePerformed ON ov_procedurePerformed.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'OV, Date of surgery'
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
  ) vu_procedurePerformed ON vu_procedurePerformed.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'VU, Date of surgery'
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
  ) hy_procedurePerformed ON hy_procedurePerformed.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'HY, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_text AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'OV, Procedure performed, other'
  ) ov_procedure_performed_other ON ov_procedure_performed_other.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'OV, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_text AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'VU, Procedure performed, other'
  ) vu_procedure_performed_other ON vu_procedure_performed_other.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'VU, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_text AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'HY, Procedure perfomed,other'
  ) hy_procedure_performed_other ON hy_procedure_performed_other.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'HY, Date of surgery'
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
  ) hy_intraOperative_complication ON hy_intraOperative_complication.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'HY, Date of surgery'
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
  ) vu_intraOperative_complication ON vu_intraOperative_complication.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'VU, Date of surgery'
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
  ) ov_intraOperative_complication ON ov_intraOperative_complication.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'OV, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_numeric AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'OV, Estimated blood loss'
  ) ov_estimated_bloodLoss ON ov_estimated_bloodLoss.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'OV, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_numeric AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'VU, Estimated blood loss'
  ) vu_estimated_bloodLoss ON vu_estimated_bloodLoss.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'VU, Date of surgery'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      o.value_numeric AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'HY, Estimated blood loss'
  ) hy_estimated_bloodLoss ON hy_estimated_bloodLoss.encounter_id = patient_encounters.encounter_id
  AND date_recorded.filed_name = 'HY, Date of surgery'
ORDER BY
  date_recorded.value DESC,
  patient_encounters.encounter_id DESC"
, 'patient movement history in bed management', @uuid);
