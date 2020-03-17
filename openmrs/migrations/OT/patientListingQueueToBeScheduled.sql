DELETE
FROM global_property
WHERE property = 'emrapi.sqlSearch.otToBeScheduledQueue';
SELECT uuid()
INTO @uuid;

INSERT INTO global_property (`property`, `property_value`, `description`, `uuid`)
VALUES ('emrapi.sqlSearch.otToBeScheduledQueue',
        "SELECT
            pi.identifier                              AS PATIENT_LISTING_QUEUES_HEADER_IDENTIFIER,
            CONCAT(pn.given_name, ' ', pn.family_name) AS PATIENT_LISTING_QUEUES_HEADER_NAME,
            ' '                          AS `Diagnosis`,
            ' '                  AS `Planned Procedure`,
            ' '                         AS `HIV Status`,
            DATE_FORMAT(sb.start_datetime, '%d/%m/%Y') AS `Date of Surgery`,
            sa.status                                  AS `Status`,
            appointment_block.notes		 			   AS  `Reason for Change`
        FROM surgical_block sb
          INNER JOIN surgical_appointment sa ON sb.surgical_block_id = sa.surgical_block_id
                                                AND sb.voided IS FALSE
                                                AND sa.voided IS FALSE
                                                AND sa.status = 'POSTPONED'
          INNER JOIN person p ON p.person_id = sa.patient_id AND p.voided IS FALSE
          INNER JOIN person_name pn ON pn.person_id = sa.patient_id
                                       AND pn.voided IS FALSE
          INNER JOIN patient_identifier pi ON pi.patient_id = pn.person_id AND pi.voided IS FALSE
          LEFT OUTER JOIN (
                            SELECT
                              l.name          AS locationName,
                              bpam.patient_id AS patient_id,
                              b.bed_number    AS bedNumber
                            FROM
                              bed_patient_assignment_map bpam
                              INNER JOIN bed b ON bpam.bed_id = b.bed_id AND b.voided IS FALSE
                                                  AND bpam.voided IS FALSE
                                                  AND bpam.date_stopped IS NULL
                              INNER JOIN bed_location_map blm ON blm.bed_id = b.bed_id
                              INNER JOIN location l ON l.location_id = blm.location_id AND l.retired IS FALSE
                          ) bed_info ON bed_info.patient_id = sa.patient_id
            LEFT OUTER JOIN (
            SELECT
              p.patient_id,
              appoinment.date_created,
              appoinment.status,
              appoinment.notes
            FROM patient p
              LEFT OUTER JOIN (
                                SELECT
                                  sa.patient_id,
                                  sa.date_created,
                                  sa.status,
                                  sa.notes
                                FROM
                                  surgical_appointment sa
                                  INNER JOIN (SELECT
                                                sa.patient_id        AS patient_id,
                                                MAX(sa.date_created) AS date_created
                                              FROM surgical_appointment sa
                                              WHERE sa.voided IS FALSE
                                              GROUP BY sa.patient_id
                                             ) latest_appointment ON latest_appointment.patient_id = sa.patient_id
                                                                     AND latest_appointment.date_created = sa.date_created
                                                                     AND sa.voided IS FALSE) appoinment
                ON appoinment.patient_id = p.patient_id AND p.voided IS FALSE
          ) appointment_block ON appointment_block.patient_id = sa.patient_id
          ORDER BY sb.start_datetime DESC;"
           , 'SQL for to be scheduled patient listing queues for OT module', @uuid);