DELETE FROM
  global_property
WHERE
  property = 'emrapi.sqlSearch.otToBeScheduledQueue';

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
    'emrapi.sqlSearch.otToBeScheduledQueue',
    "SELECT
  person_data.identifier AS PATIENT_LISTING_QUEUES_HEADER_IDENTIFIER,
  CONCAT(
    person_data.given_name,
    ' ',
    person_data.family_name
  ) AS PATIENT_LISTING_QUEUES_HEADER_NAME,
  clinical_diagnosis.value AS `Clinician Diagnosis`,
  concat_ws(
    ',',
    pre_planned_Procedure.value,
    follow_planned_Procedure.value
  ) AS `Planned Procedure`,
  result_of_hiv_test.value AS `HIV Status`,
  sa_data.status AS `Status`,
  appointment_block.notes AS `Reason for Change`
FROM
  (
    SELECT
      obs.person_id,
      obs.concept_id,
      obs.encounter_id,
      obs.value_coded,
      obs_question.name AS obs_question_name,
      coded_concept.name AS coded_concept_name
    FROM
      obs
      JOIN patient_program pp ON obs.person_id = pp.patient_id
      AND pp.voided = 0
      JOIN (
        SELECT
          MAX(encounter_id) AS encounter_id,
          patient_id
        FROM
          encounter
        WHERE
          voided = 0
        GROUP BY
          patient_id
      ) e ON obs.encounter_id = e.encounter_id
      JOIN concept_name obs_question ON obs_question.concept_id = obs.concept_id
      AND obs_question.locale = 'en'
      AND obs_question.voided = 0
      AND obs_question.concept_name_type = 'FULLY_SPECIFIED'
      JOIN concept_name coded_concept ON coded_concept.concept_id = obs.value_coded
      AND coded_concept.locale = 'en'
      AND coded_concept.voided = 0
      AND coded_concept.concept_name_type = 'FULLY_SPECIFIED'
    WHERE
      obs_question.name IN (
        'POMDT, Proposed management plan',
        'POMDT, Conservative surgery type',
        'PTMDT, Proposed management plan',
        'PTMDT, Conservative surgery type'
      )
      AND coded_concept.name IN ('Surgical Procedure', 'Cervical Conization')
      AND obs.voided = 0
  ) obs_data
  left JOIN (
    SELECT
      sa.patient_id,
      sa.status,
      sb.start_datetime
    FROM
      surgical_block sb
      JOIN surgical_appointment sa ON sb.surgical_block_id = sa.surgical_block_id
    WHERE
      sb.voided IS FALSE
      AND sa.voided IS FALSE
  ) sa_data ON obs_data.person_id = sa_data.patient_id
  LEFT JOIN (
    SELECT
      person.person_id,
      pn.given_name,
      pn.family_name,
      pi.identifier
    FROM
      person
      JOIN person_name pn ON person.person_id = pn.person_id
      AND pn.voided IS FALSE
      AND pn.preferred IS TRUE
      JOIN patient_identifier pi ON pi.patient_id = person.person_id
      AND pi.voided IS FALSE
    WHERE
      person.voided IS FALSE
  ) person_data ON obs_data.person_id = person_data.person_id
  LEFT JOIN (
    SELECT
      p.patient_id,
      appoinment.date_created,
      appoinment.status,
      appoinment.notes
    FROM
      patient p
      LEFT OUTER JOIN (
        SELECT
          sa.patient_id,
          sa.date_created,
          sa.status,
          sa.notes
        FROM
          surgical_appointment sa
          INNER JOIN (
            SELECT
              sa.patient_id AS patient_id,
              MAX(sa.date_created) AS date_created
            FROM
              surgical_appointment sa
            WHERE
              sa.voided IS FALSE
            GROUP BY
              sa.patient_id
          ) latest_appointment ON latest_appointment.patient_id = sa.patient_id
          AND latest_appointment.date_created = sa.date_created
          AND sa.voided IS FALSE
      ) appoinment ON appoinment.patient_id = p.patient_id
      AND p.voided IS FALSE
  ) appointment_block ON appointment_block.patient_id = obs_data.person_id
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
      JOIN (
        SELECT
          MAX(encounter_id) AS encounter_id,
          patient_id
        FROM
          encounter
        WHERE
          voided = 0
        GROUP BY
          patient_id
      ) e ON obs.encounter_id = e.encounter_id
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
  ) clinical_diagnosis ON clinical_diagnosis.person_id = obs_data.person_id
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
      JOIN (
        SELECT
          MAX(encounter_id) AS encounter_id,
          patient_id
        FROM
          encounter
        WHERE
          voided = 0
        GROUP BY
          patient_id
      ) e ON obs.encounter_id = e.encounter_id
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
  ) pre_planned_Procedure ON pre_planned_Procedure.person_id = obs_data.person_id
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
      JOIN (
        SELECT
          MAX(encounter_id) AS encounter_id,
          patient_id
        FROM
          encounter
        WHERE
          voided = 0
        GROUP BY
          patient_id
      ) e ON obs.encounter_id = e.encounter_id
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
  ) follow_planned_Procedure ON follow_planned_Procedure.person_id = obs_data.person_id
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
      JOIN (
        SELECT
          MAX(encounter_id) AS encounter_id,
          patient_id
        FROM
          encounter
        WHERE
          voided = 0
        GROUP BY
          patient_id
      ) e ON obs.encounter_id = e.encounter_id
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
  ) result_of_hiv_test ON result_of_hiv_test.person_id = obs_data.person_id
WHERE
  (
    sa_data.status NOT IN ('SCHEDULED', 'COMPLETED', 'CANCELLED')
    OR sa_data.status is NULL
  )
  and obs_data.person_id not in (
    SELECT
      saa.patient_id
    FROM
      surgical_appointment saa
    WHERE
      saa.status = 'SCHEDULED'
    GROUP BY
      saa.patient_id
  )
GROUP BY
  obs_data.person_id
ORDER BY
  sa_data.start_datetime ASC;",
    'SQL for to be scheduled patient listing queues for OT module',
    @uuid
  );