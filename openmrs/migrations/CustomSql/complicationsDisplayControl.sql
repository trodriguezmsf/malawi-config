DELETE FROM global_property WHERE property = 'bahmni.sqlGet.complications';
SELECT uuid() INTO @uuid;

INSERT INTO global_property (property, property_value, description, uuid)
 VALUES ('bahmni.sqlGet.complications',
"SELECT
  DATE_FORMAT(dateRecorded.value, '%d %b %Y') AS `Date Recorded`,
  CASE
    WHEN complications.form = '19 Surgical_Hysterectomy' THEN 'Hysterectomy'
    WHEN complications.form = '20 Surgical_Ovarian' THEN 'Ovarian'
    WHEN complications.form = '21 Surgical_Vulvectomy' THEN 'Vulvectomy'
    WHEN complications.form = '23 Anesthesia Post Op Assessment' THEN 'Anesthesia Post Op Assessment'
    WHEN complications.form = '25 IPD Assessment' THEN 'IPD Assessment'
  END AS Form,
  CASE
    WHEN complications.value = 'Other' THEN complicationsOther.value
    ELSE SUBSTRING_INDEX(complications.value, '.', -1)
  END AS `Patient Complications`,
  GROUP_CONCAT(complicationsGrade.value SEPARATOR ', ') AS `Complication Grade`,
  concat_ws(
    ':<br>',
    description_one_transfusion.value,
    description_one_infection.value,
    description_one_fistula.value,
    description_one_heart_failure.value,
    description_one_anesthetic.value,
    description_one_ulcer.value,
    description_one_adverse_reaction.value,
    description_one_non_coded.value
  ) AS `Description 1`,
  description_two.value AS `Description 2`,
  treatmentPlan.value AS `Treatment Plan`,
  patientCondition.value AS `Patient Condition`
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
      INNER JOIN visit v ON e.visit_id = v.visit_id
      AND v.voided IS FALSE
      AND v.visit_type_id = 5
    LIMIT
      6
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
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, '/', -2),
        '/',
        1
      ) multiSelect,
      coded_fscn.name 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name IN (
        'HY, Intraoperative complication',
        'OV, Intraoperative complication',
        'VU, Intraoperative complication',
        'IPDA, Patient complication',
        'AAPOSTOP, Complication'
      )
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
  ) complications ON complications.encounter_id = patient_encounters.encounter_id
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, '/', -2),
        '/',
        1
      ) multiSelect,
      coded_fscn.name AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, Clavien Dindo classification'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
  ) complicationsGrade ON complicationsGrade.encounter_id = patient_encounters.encounter_id
  AND complicationsGrade.form = complications.form
  AND complicationsGrade.multiSelect = complications.multiSelect
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      o.value_datetime AS value
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name IN (
        'VU, Date of surgery',
        'OV, Date of surgery',
        'HY, Date of surgery',
        'IPDA, Date/Time recorded',
        'AAPOSTOP, Date recorded'
      )
  ) dateRecorded ON dateRecorded.encounter_id = patient_encounters.encounter_id
  AND dateRecorded.form = complications.form
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      o.value_text 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name IN (
        'AAPOSTOP, Complication, other',
        'VU, Intraoperative complication,other',
        'OV, Intraoperative complication,other',
        'HY, Intraoperative complication, other'
      )
  ) complicationsOther ON complicationsOther.encounter_id = patient_encounters.encounter_id
  AND complicationsOther.form = complications.form
  AND complications.value = 'Other'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      o.value_text 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, Treatment plan'
  ) treatmentPlan ON treatmentPlan.encounter_id = patient_encounters.encounter_id
  AND treatmentPlan.form = complications.form
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      coded_fscn.name 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, Patient condition'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
  ) patientCondition ON patientCondition.encounter_id = patient_encounters.encounter_id
  AND patientCondition.form = complications.form
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      concat_ws(
        ':<br>',
        cn_scn.name,
        GROUP_CONCAT(coded_fscn.name SEPARATOR ', ')
      ) AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, Transfusion'
      LEFT OUTER JOIN concept_name cn_scn ON cn_scn.concept_id = o.concept_id
      AND cn_scn.concept_name_type = 'SHORT'
      AND cn_scn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) description_one_transfusion ON description_one_transfusion.encounter_id = patient_encounters.encounter_id
  AND description_one_transfusion.form = complications.form
  AND complications.value = '1.Anemia due to acute blood loss'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      concat_ws(
        ':<br>',
        cn_scn.name,
        GROUP_CONCAT(coded_fscn.name SEPARATOR ', ')
      ) AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, Level of infection'
      LEFT OUTER JOIN concept_name cn_scn ON cn_scn.concept_id = o.concept_id
      AND cn_scn.concept_name_type = 'SHORT'
      AND cn_scn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) description_one_infection ON description_one_infection.encounter_id = patient_encounters.encounter_id
  AND description_one_infection.form = complications.form
  AND complications.value = '3.Surgical Site Infection'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      concat_ws(
        ':<br>',
        cn_scn.name,
        GROUP_CONCAT(coded_fscn.name SEPARATOR ', ')
      ) AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, Antibiotic adverse reaction description'
      LEFT OUTER JOIN concept_name cn_scn ON cn_scn.concept_id = o.concept_id
      AND cn_scn.concept_name_type = 'SHORT'
      AND cn_scn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) description_one_adverse_reaction ON description_one_adverse_reaction.encounter_id = patient_encounters.encounter_id
  AND description_one_adverse_reaction.form = complications.form
  AND complications.value = '4.Antibiotic Adverse Reaction'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      concat_ws(
        ':<br>',
        cn_scn.name,
        GROUP_CONCAT(coded_fscn.name SEPARATOR ', ')
      ) AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, Pressure ulcer description'
      LEFT OUTER JOIN concept_name cn_scn ON cn_scn.concept_id = o.concept_id
      AND cn_scn.concept_name_type = 'SHORT'
      AND cn_scn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) description_one_ulcer ON description_one_ulcer.encounter_id = patient_encounters.encounter_id
  AND description_one_ulcer.form = complications.form
  AND complications.value = '5.Pressure Ulcer'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      concat_ws(
        ':<br>',
        cn_scn.name,
        GROUP_CONCAT(coded_fscn.name SEPARATOR ', ')
      ) AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, Anaesthetic complication description'
      LEFT OUTER JOIN concept_name cn_scn ON cn_scn.concept_id = o.concept_id
      AND cn_scn.concept_name_type = 'SHORT'
      AND cn_scn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) description_one_anesthetic ON description_one_anesthetic.encounter_id = patient_encounters.encounter_id
  AND description_one_anesthetic.form = complications.form
  AND complications.value = '17.Anesthetic complication'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      concat_ws(
        ':<br>',
        cn_scn.name,
        GROUP_CONCAT(coded_fscn.name SEPARATOR ', ')
      ) AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, NYHA Heart failure classification'
      LEFT OUTER JOIN concept_name cn_scn ON cn_scn.concept_id = o.concept_id
      AND cn_scn.concept_name_type = 'SHORT'
      AND cn_scn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) description_one_heart_failure ON description_one_heart_failure.encounter_id = patient_encounters.encounter_id
  AND description_one_heart_failure.form = complications.form
  AND complications.value = '9.Heart failure'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      concat_ws(
        ':<br>',
        cn_scn.name,
        GROUP_CONCAT(coded_fscn.name SEPARATOR ', ')
      ) AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, Fistula descripton'
      LEFT OUTER JOIN concept_name cn_scn ON cn_scn.concept_id = o.concept_id
      AND cn_scn.concept_name_type = 'SHORT'
      AND cn_scn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) description_one_fistula ON description_one_fistula.encounter_id = patient_encounters.encounter_id
  AND description_one_fistula.form = complications.form
  AND complications.value = '8.Fistula'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      concat_ws(
        ':<br>',
        cn_scn.name,
        GROUP_CONCAT(o.value_text SEPARATOR ', ')
      ) AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'IPDA, Complication (non coded)'
      LEFT OUTER JOIN concept_name cn_scn ON cn_scn.concept_id = o.concept_id
      AND cn_scn.concept_name_type = 'SHORT'
      AND cn_scn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) description_one_non_coded ON description_one_non_coded.encounter_id = patient_encounters.encounter_id
  AND description_one_non_coded.form = complications.form
  AND complications.value = '49.Other'
  LEFT JOIN (
    SELECT
      o.encounter_id,
      o.person_id,
      SUBSTRING_INDEX(
        SUBSTRING_INDEX(o.form_namespace_and_path, 'Bahmni^', -1),
        '.',
        1
      ) AS form,
      concat_ws(
        ':<br>',
        cn_scn.name,
        GROUP_CONCAT(coded_fscn.name SEPARATOR ', ')
      ) AS 'value'
    FROM
      obs o
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND o.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name IN ('IPDA, SSI treatment')
      LEFT OUTER JOIN concept_name cn_scn ON cn_scn.concept_id = o.concept_id
      AND cn_scn.concept_name_type = 'SHORT'
      AND cn_scn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
    GROUP BY
      o.encounter_id,
      o.person_id
  ) description_two ON description_two.encounter_id = patient_encounters.encounter_id
  AND description_two.form = complications.form
  AND complications.value = '3.Surgical Site Infection'
WHERE
  (
    complications.value = 'Other'
    AND complicationsOther.value IS NOT NULL
  )
  OR complications.value <> 'Other'
GROUP BY
  complications.encounter_id,
  complications.person_id,
  complications.form,
  complications.value
ORDER BY
  dateRecorded.value DESC,
  patient_encounters.encounter_id DESC"
, 'Complications', @uuid);
