DELETE FROM
  global_property
WHERE
  property = 'emrapi.sqlSearch.otScheduledQueue';

SELECT
  uuid() INTO @uuid;

INSERT INTO
  global_property (
    `property`,
    `property_value`,
    `description`,
    `uuid`
  )
VALUES
  (
    'emrapi.sqlSearch.otScheduledQueue',
    "SELECT
  pi.identifier AS PATIENT_LISTING_QUEUES_HEADER_IDENTIFIER_SCHEDULE,
  CONCAT(pn.given_name, ' ', pn.family_name) AS PATIENT_LISTING_QUEUES_HEADER_NAME,
  bed_info.bedNumber AS `Bed Number`,
  clinical_diagnosis.value AS `Clinician Diagnosis`,
  concat_ws(
    ',',
    pre_planned_Procedure.value,
    follow_planned_Procedure.value
  ) AS `Planned Procedure`,
  result_of_hiv_test.value AS `HIV Status`,
  DATE_FORMAT(sb.start_datetime, '%d/%m/%Y') AS `Date of Surgery`,
  surgeon_name.SurgeonName AS `Surgeon`,
  sa.status AS `Status`,
  ' ' AS `Outcome of Anesthesia`
FROM
  surgical_block sb
  INNER JOIN surgical_appointment sa ON sb.surgical_block_id = sa.surgical_block_id
  AND sb.voided IS FALSE
  AND sa.voided IS FALSE
  AND sa.status = 'SCHEDULED'
  INNER JOIN person p ON p.person_id = sa.patient_id
  AND p.voided IS FALSE
  INNER JOIN person_name pn ON pn.person_id = sa.patient_id
  AND pn.voided IS FALSE
  INNER JOIN patient_identifier pi ON pi.patient_id = pn.person_id
  AND pi.voided IS FALSE
  LEFT OUTER JOIN (
    SELECT
      l.name AS locationName,
      bpam.patient_id AS patient_id,
      b.bed_number AS bedNumber
    FROM
      bed_patient_assignment_map bpam
      INNER JOIN bed b ON bpam.bed_id = b.bed_id
      AND b.voided IS FALSE
      AND bpam.voided IS FALSE
      AND bpam.date_stopped IS NULL
      INNER JOIN bed_location_map blm ON blm.bed_id = b.bed_id
      INNER JOIN location l ON l.location_id = blm.location_id
      AND l.retired IS FALSE
  ) bed_info ON bed_info.patient_id = sa.patient_id
  LEFT OUTER JOIN (
    SELECT
      CONCAT(pn.given_name, ' ', pn.family_name) AS SurgeonName,
      pro.provider_id AS provider_id
    FROM
      provider pro
      INNER JOIN person_name pn ON pro.person_id = pn.person_id
      AND pn.voided IS FALSE
      AND pro.retired IS FALSE
      INNER JOIN surgical_block sb ON sb.primary_provider_id = pro.provider_id
      AND sb.voided IS FALSE
  ) surgeon_name ON surgeon_name.provider_id = sb.primary_provider_id
  LEFT JOIN(
    SELECT
      obs.person_id,
      obs.concept_id,
      obs.encounter_id,
      GROUP_CONCAT(coded_concept.name) value
    FROM
      obs
      JOIN patient_program AS pp ON obs.person_id = pp.patient_id
      AND pp.voided = 0
      JOIN concept_name AS obs_question ON obs_question.concept_id = obs.concept_id
      AND obs_question.concept_name_type = 'FULLY_SPECIFIED'
      AND obs_question.voided = 0
      JOIN concept_name AS coded_concept ON coded_concept.concept_id = obs.value_coded
      AND coded_concept.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_concept.voided = 0
    WHERE
      obs_question.name IN ('PTMDT, Clinical diagnosis')
      AND obs.voided = 0
    GROUP BY
      obs.person_id,
      obs.concept_id
  ) clinical_diagnosis ON clinical_diagnosis.person_id = sa.patient_id
  LEFT JOIN(
    SELECT
      obs.person_id,
      obs.concept_id,
      obs.encounter_id,
      GROUP_CONCAT(coded_concept.name) value
    FROM
      obs
      JOIN patient_program AS pp ON obs.person_id = pp.patient_id
      AND pp.voided = 0
      JOIN concept_name AS obs_question ON obs_question.concept_id = obs.concept_id
      AND obs_question.concept_name_type = 'FULLY_SPECIFIED'
      AND obs_question.voided = 0
      JOIN concept_name AS coded_concept ON coded_concept.concept_id = obs.value_coded
      AND coded_concept.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_concept.voided = 0
    WHERE
      obs_question.name IN ('PTMDT, Surgical procedure type')
      AND obs.voided = 0
    GROUP BY
      obs.person_id,
      obs.concept_id
  ) pre_planned_Procedure ON pre_planned_Procedure.person_id = sa.patient_id
  LEFT JOIN(
    SELECT
      obs.person_id,
      obs.concept_id,
      obs.encounter_id,
      GROUP_CONCAT(coded_concept.name) value
    FROM
      obs
      JOIN patient_program AS pp ON obs.person_id = pp.patient_id
      AND pp.voided = 0
      JOIN concept_name AS obs_question ON obs_question.concept_id = obs.concept_id
      AND obs_question.concept_name_type = 'FULLY_SPECIFIED'
      AND obs_question.voided = 0
      JOIN concept_name AS coded_concept ON coded_concept.concept_id = obs.value_coded
      AND coded_concept.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_concept.voided = 0
    WHERE
      obs_question.name IN ('POMDT, Surgical procedure type')
      AND obs.voided = 0
    GROUP BY
      obs.person_id,
      obs.concept_id
  ) follow_planned_Procedure ON follow_planned_Procedure.person_id = sa.patient_id
  LEFT JOIN(
    SELECT
      obs.person_id,
      obs.concept_id,
      obs.encounter_id,
      GROUP_CONCAT(coded_concept.name) value
    FROM
      obs
      JOIN patient_program AS pp ON obs.person_id = pp.patient_id
      AND pp.voided = 0
      JOIN concept_name AS obs_question ON obs_question.concept_id = obs.concept_id
      AND obs_question.concept_name_type = 'FULLY_SPECIFIED'
      AND obs_question.voided = 0
      JOIN concept_name AS coded_concept ON coded_concept.concept_id = obs.value_coded
      AND coded_concept.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_concept.voided = 0
    WHERE
      obs_question.name IN ('PH, Result of HIV test')
      AND obs.voided = 0
    GROUP BY
      obs.person_id,
      obs.concept_id
  ) result_of_hiv_test ON result_of_hiv_test.person_id = sa.patient_id
GROUP BY
  sa.surgical_appointment_id
ORDER BY
  sb.start_datetime ASC;",
    'SQL for scheduled patient listing queues for OT module',
    @uuid
  );