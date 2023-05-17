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
    if(
      IFNULL(
        pre_planned_Procedure.encounter_datetime,
        '0000-00-00'
      ) >= IFNULL(
        follow_planned_Procedure.encounter_datetime,
        '0000-00-00'
      ),
      pre_planned_Procedure.value,
      NULL
    ),
    if(
      IFNULL(
        follow_planned_Procedure.encounter_datetime,
        '0000-00-00'
      ) >= IFNULL(
        pre_planned_Procedure.encounter_datetime,
        '0000-00-00'
      ),
      follow_planned_Procedure.value,
      NULL
    )
  ) AS `Planned Procedure`,
  result_of_hiv_test.value AS `Result of HIV test`,
  if(
    (
      postponed.date_changed is not null
      and postponed.date_changed > appointment_block.date_created
    ),
    postponed.status,
    appointment_block.status
  ) AS `Status`,
  if(
    (
      postponed.date_changed is not null
      and postponed.date_changed > appointment_block.date_created
    ),
    postponed.notes,
    appointment_block.notes
  ) AS `Reason for Change`
FROM
  (
    SELECT
      o.person_id,
      GROUP_CONCAT(
        DISTINCT (COALESCE(coded_fscn.name, coded_scn.name))
      ) AS 'value',
      pp.date_completed,
      e.encounter_id
    FROM
      obs o
      JOIN patient_program pp ON o.person_id = pp.patient_id
      AND pp.voided = 0
      INNER JOIN encounter e ON e.encounter_id = o.encounter_id
      AND o.voided IS FALSE
      AND e.voided IS FALSE
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name IN (
        'POMDT, Proposed management plan',
        'POMDT, Conservative surgery type',
        'PTMDT, Proposed management plan',
        'PTMDT, Conservative surgery type'
      )
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_scn ON coded_scn.concept_id = o.value_coded
      AND coded_scn.concept_name_type = 'SHORT'
      AND coded_scn.voided IS FALSE
      INNER JOIN (
        SELECT
          o.person_id,
          MAX(e.encounter_datetime) AS encounter_datetime
        FROM
          obs o
          INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
          AND cn.name IN (
            'POMDT, Proposed management plan',
            'POMDT, Conservative surgery type',
            'PTMDT, Proposed management plan',
            'PTMDT, Conservative surgery type'
          )
          AND cn.concept_name_type = 'FULLY_SPECIFIED'
          AND cn.voided IS FALSE
          AND o.voided IS FALSE
          INNER JOIN encounter e ON e.encounter_id = o.encounter_id
          AND e.voided IS FALSE
        GROUP BY
          person_id
      ) latest_encounter ON latest_encounter.encounter_datetime = e.encounter_datetime
      AND latest_encounter.person_id = o.person_id
    WHERE
      (
        coded_fscn.name in ('Surgical Procedure', 'Cervical Conization')
        or coded_scn.name in ('Surgical Procedure', 'Cervical Conization')
      )
      and pp.date_completed IS NULL
    GROUP BY
      o.person_id
  ) obs_data
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
  LEFT OUTER JOIN (
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
      o.person_id,
      GROUP_CONCAT(
        DISTINCT (COALESCE(coded_fscn.name, coded_scn.name))
      ) AS 'value'
    FROM
      obs o
      INNER JOIN encounter e ON e.encounter_id = o.encounter_id
      AND o.voided IS FALSE
      AND e.voided IS FALSE
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'PTMDT, Clinical diagnosis'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_scn ON coded_scn.concept_id = o.value_coded
      AND coded_scn.concept_name_type = 'SHORT'
      AND coded_scn.voided IS FALSE
      INNER JOIN (
        SELECT
          o.person_id,
          MAX(e.encounter_datetime) AS encounter_datetime
        FROM
          obs o
          INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
          AND cn.name = 'PTMDT, Clinical diagnosis'
          AND cn.concept_name_type = 'FULLY_SPECIFIED'
          AND cn.voided IS FALSE
          AND o.voided IS FALSE
          INNER JOIN encounter e ON e.encounter_id = o.encounter_id
          AND e.voided IS FALSE
        GROUP BY
          person_id
      ) latest_encounter ON latest_encounter.encounter_datetime = e.encounter_datetime
      AND latest_encounter.person_id = o.person_id
    GROUP BY
      o.person_id
  ) clinical_diagnosis ON clinical_diagnosis.person_id = obs_data.person_id
  LEFT JOIN(
    SELECT
      o.person_id,
      GROUP_CONCAT(
        DISTINCT (COALESCE(coded_fscn.name, coded_scn.name))
      ) AS 'value',
      o.obs_datetime,
      latest_encounter.encounter_datetime,
      e.encounter_id
    FROM
      obs o
      INNER JOIN encounter e ON e.encounter_id = o.encounter_id
      AND o.voided IS FALSE
      AND e.voided IS FALSE
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'PTMDT, Surgical procedure type'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_scn ON coded_scn.concept_id = o.value_coded
      AND coded_scn.concept_name_type = 'SHORT'
      AND coded_scn.voided IS FALSE
      INNER JOIN (
        SELECT
          o.person_id,
          MAX(e.encounter_datetime) AS encounter_datetime
        FROM
          obs o
          INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
          AND cn.name = 'PTMDT, Surgical procedure type'
          AND cn.concept_name_type = 'FULLY_SPECIFIED'
          AND cn.voided IS FALSE
          AND o.voided IS FALSE
          INNER JOIN encounter e ON e.encounter_id = o.encounter_id
          AND e.voided IS FALSE
        GROUP BY
          person_id
      ) latest_encounter ON latest_encounter.encounter_datetime = e.encounter_datetime
      AND latest_encounter.person_id = o.person_id
    GROUP BY
      o.person_id
  ) pre_planned_Procedure ON pre_planned_Procedure.person_id = obs_data.person_id
  and pre_planned_Procedure.encounter_id = obs_data.encounter_id
  LEFT JOIN(
    SELECT
      o.person_id,
      GROUP_CONCAT(
        DISTINCT (COALESCE(coded_fscn.name, coded_scn.name))
      ) AS 'value',
      latest_encounter.encounter_datetime,
      e.encounter_id
    FROM
      obs o
      INNER JOIN encounter e ON e.encounter_id = o.encounter_id
      AND o.voided IS FALSE
      AND e.voided IS FALSE
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'POMDT, Surgical procedure type'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_scn ON coded_scn.concept_id = o.value_coded
      AND coded_scn.concept_name_type = 'SHORT'
      AND coded_scn.voided IS FALSE
      INNER JOIN (
        SELECT
          o.person_id,
          MAX(e.encounter_datetime) AS encounter_datetime
        FROM
          obs o
          INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
          AND cn.name = 'POMDT, Surgical procedure type'
          AND cn.concept_name_type = 'FULLY_SPECIFIED'
          AND cn.voided IS FALSE
          AND o.voided IS FALSE
          INNER JOIN encounter e ON e.encounter_id = o.encounter_id
          AND e.voided IS FALSE
        GROUP BY
          person_id
      ) latest_encounter ON latest_encounter.encounter_datetime = e.encounter_datetime
      AND latest_encounter.person_id = o.person_id
    GROUP BY
      o.person_id
  ) follow_planned_Procedure ON follow_planned_Procedure.person_id = obs_data.person_id
  and follow_planned_Procedure.encounter_id = obs_data.encounter_id
  LEFT JOIN(
    SELECT
      o.person_id,
      GROUP_CONCAT(
        DISTINCT (COALESCE(coded_fscn.name, coded_scn.name))
      ) AS 'value'
    FROM
      obs o
      INNER JOIN encounter e ON e.encounter_id = o.encounter_id
      AND o.voided IS FALSE
      AND e.voided IS FALSE
      INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
      AND cn.voided IS FALSE
      AND cn.concept_name_type = 'FULLY_SPECIFIED'
      AND cn.name = 'PH, Result of HIV test'
      LEFT OUTER JOIN concept_name coded_fscn ON coded_fscn.concept_id = o.value_coded
      AND coded_fscn.concept_name_type = 'FULLY_SPECIFIED'
      AND coded_fscn.voided IS FALSE
      LEFT OUTER JOIN concept_name coded_scn ON coded_scn.concept_id = o.value_coded
      AND coded_scn.concept_name_type = 'SHORT'
      AND coded_scn.voided IS FALSE
      INNER JOIN (
        SELECT
          o.person_id,
          MAX(e.encounter_datetime) AS encounter_datetime
        FROM
          obs o
          INNER JOIN concept_name cn ON cn.concept_id = o.concept_id
          AND cn.name = 'PH, Result of HIV test'
          AND cn.concept_name_type = 'FULLY_SPECIFIED'
          AND cn.voided IS FALSE
          AND o.voided IS FALSE
          INNER JOIN encounter e ON e.encounter_id = o.encounter_id
          AND e.voided IS FALSE
        GROUP BY
          person_id
      ) latest_encounter ON latest_encounter.encounter_datetime = e.encounter_datetime
      AND latest_encounter.person_id = o.person_id
    GROUP BY
      o.person_id
  ) result_of_hiv_test ON result_of_hiv_test.person_id = obs_data.person_id
  left join (
    SELECT
      date_changed,
      status,
      patient_id,
      notes
    FROM
      surgical_appointment
    where
      voided IS FALSE
    order by
      date_changed DESC
    limit
      1
  ) postponed on postponed.patient_id = obs_data.person_id
WHERE
  (
    appointment_block.status not in ('SCHEDULED', 'COMPLETED', 'CANCELLED')
    OR appointment_block.status is NULL
  )
  or (
    postponed.date_changed is not null
    and postponed.date_changed > appointment_block.date_created
    and postponed.status = 'POSTPONED'
  )
ORDER BY
  CASE
    WHEN pre_planned_Procedure.encounter_datetime IS NULL
    AND follow_planned_Procedure.encounter_datetime IS NULL THEN 1
    ELSE 0
  END ASC,
  CASE
    WHEN IFNULL(
      pre_planned_Procedure.encounter_datetime,
      '0000-00-00'
    ) >= IFNULL(
      follow_planned_Procedure.encounter_datetime,
      '0000-00-00'
    ) THEN pre_planned_Procedure.encounter_datetime
    ELSE follow_planned_Procedure.encounter_datetime
  END ASC;",
    'SQL for to be scheduled patient listing queues for OT module',
    @uuid
  );