SELECT uuid() INTO @uuid;
INSERT INTO global_property (`property`, `property_value`, `description`, `uuid`)
VALUES('emrapi.sqlGet.allWardsListDetails',
       "SELECT DISTINCT pi.identifier                                                                     AS 'Identifier',
                CONCAT(pn.given_name, ' ', pn.family_name)                                        AS 'Name',
                bed.bed_number                                                                    AS 'Bed Number',
                DATE_FORMAT(latestAdmissionEncounter.admission_datetime,
                            '%d %b %y %l:%i %p')                                                  AS 'Date of Admission',
                BEDINFO.bed_tags                                                                  AS 'Bed Tag',
                DATE_FORMAT(latestFutureDateofProcedure.dateofProcedure,
                            '%d %b %y')                                                  AS 'Date of Procedure',
                ' '                                                                               AS 'Procedure',
                DATE_FORMAT(expected_date_of_discharge.date, '%d %b %y')                          AS 'Expected Date of Discharge',
                ' '                                                                               AS 'Next Appointment date'
from bed
         INNER JOIN bed_location_map blm ON blm.bed_id = bed.bed_id
         INNER JOIN location l ON l.location_id = blm.location_id AND l.name = ${location_name} AND l.retired IS FALSE
         LEFT OUTER JOIN bed_patient_assignment_map bpam ON bpam.bed_id = bed.bed_id AND bpam.date_stopped IS NULL
         LEFT OUTER JOIN person p ON p.person_id = bpam.patient_id AND p.voided IS FALSE
         LEFT OUTER JOIN person_name pn ON pn.person_id = p.person_id AND pn.voided IS FALSE
         LEFT OUTER JOIN patient_identifier pi ON pi.patient_id = p.person_id AND pi.voided IS FALSE
         # Block to fetch the date of Admission
         LEFT OUTER JOIN ( SELECT e.patient_id, MAX(e.encounter_datetime) AS admission_datetime FROM encounter e
                           INNER JOIN encounter_type et ON et.encounter_type_id = e.encounter_type AND et.name = 'ADMISSION' GROUP BY e.patient_id
                         ) latestAdmissionEncounter ON p.person_id = latestAdmissionEncounter.patient_id
         # Block to fetch bed tags
         LEFT OUTER JOIN ( SELECT bpam.patient_id,bd.bed_number,GROUP_CONCAT(DISTINCT bt.name ORDER BY bt.name) AS 'bed_tags' from bed bd
                            INNER JOIN bed_patient_assignment_map bpam on bd.bed_id = bpam.bed_id and bpam.voided is false
                            LEFT OUTER JOIN bed_tag_map btm on bd.bed_id = btm.bed_id and btm.voided is false
                            LEFT OUTER JOIN bed_tag bt on btm.bed_tag_id = bt.bed_tag_id and bt.voided is false WHERE bpam.date_stopped is NULL and bd.voided is false GROUP BY bpam.patient_id
                         )  BEDINFO ON BEDINFO.patient_id = pi.patient_id
         # Block to fetch expected date of discharge
         LEFT OUTER JOIN ( SELECT o.value_datetime AS 'date', o.person_id FROM obs o
                            INNER JOIN concept_name cn ON o.concept_id = cn.concept_id AND cn.name = 'Expected Date of Discharge' AND cn.concept_name_type = 'FULLY_SPECIFIED' AND o.voided IS FALSE
                            INNER JOIN (SELECT MAX(parentObs.obs_id) AS 'obs_id', parentObs.person_id FROM obs parentObs
                            INNER JOIN encounter e  ON e.encounter_id = parentObs.encounter_id AND e.voided IS FALSE
                            INNER JOIN visit ON visit.visit_id = e.visit_id AND visit.voided IS FALSE
                            INNER JOIN concept_name cn ON cn.concept_id = parentObs.concept_id AND cn.name = 'IPD Expected DD' AND cn.concept_name_type = 'FULLY_SPECIFIED' AND parentObs.voided IS FALSE
                            INNER JOIN (SELECT v.patient_id, MAX(v.date_started) AS date_started FROM visit v GROUP BY v.patient_id
                                       ) latest_visit ON latest_visit.patient_id = parentObs.person_id AND latest_visit.date_started = visit.date_started GROUP BY parentObs.person_id
                                       ) ipd_expected_dd ON ipd_expected_dd.person_id = o.person_id AND ipd_expected_dd.obs_id = o.obs_group_id
                           ) expected_date_of_discharge ON expected_date_of_discharge.person_id = p.person_id
         # Block to fetch Date of procedure
         LEFT OUTER JOIN ( select DISTINCT sa.patient_id, MIN(sb.start_datetime) as 'dateofProcedure' from surgical_appointment sa
                           INNER JOIN surgical_block sb ON sa.surgical_block_id = sb.surgical_block_id WHERE sb.start_datetime >= CURDATE() and sa.status = 'SCHEDULED' group by sa.patient_id
                          ) latestFutureDateofProcedure on latestFutureDateofProcedure.patient_id = p.person_id
                         Order by ABS(bed.bed_number);",'SQL query to get list of bed details in ward',@uuid);