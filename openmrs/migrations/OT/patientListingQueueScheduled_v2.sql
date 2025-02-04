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
  bed_info.bedNumber AS `Bed #`,
  clinical_diagnosis.value AS `Diagnosis`,
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
  INNER JOIN patient_program pp ON pp.patient_id = sa.patient_id
  AND pp.voided IS FALSE
  AND pp.date_completed IS NULL
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
  ) clinical_diagnosis ON clinical_diagnosis.person_id = sa.patient_id
  LEFT JOIN(
    SELECT
      o.person_id,
      GROUP_CONCAT(
        DISTINCT (COALESCE(coded_fscn.name, coded_scn.name))
      ) AS 'value',
      latest_encounter.encounter_datetime
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
  ) pre_planned_Procedure ON pre_planned_Procedure.person_id = sa.patient_id
  LEFT JOIN(
    SELECT
      o.person_id,
      GROUP_CONCAT(
        DISTINCT (COALESCE(coded_fscn.name, coded_scn.name))
      ) AS 'value',
      latest_encounter.encounter_datetime
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
  ) follow_planned_Procedure ON follow_planned_Procedure.person_id = sa.patient_id
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
  ) result_of_hiv_test ON result_of_hiv_test.person_id = sa.patient_id
GROUP BY
  sa.surgical_appointment_id
ORDER BY
  sb.start_datetime ASC;",
    'SQL for scheduled patient listing queues for OT module',
    @uuid
  );