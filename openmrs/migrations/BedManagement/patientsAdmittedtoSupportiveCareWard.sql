DELETE FROM global_property WHERE property = 'emrapi.sqlSearch.patientsAdmittedToSupportiveCareWard';
SELECT uuid() INTO @uuid;
INSERT INTO global_property (`property`, `property_value`, `description`, `uuid`)
VALUES ('emrapi.sqlSearch.patientsAdmittedToSupportiveCareWard',
"select distinct
          concat(pn.given_name,' ', ifnull(pn.family_name,'')) as name,
          pi.identifier as identifier,
          concat('',p.uuid) as uuid,
          concat('',v.uuid) as activeVisitUuid,
          IF(va.value_reference = 'Admitted', 'true', 'false') as hasBeenAdmitted
from bed
         INNER JOIN bed_location_map blm ON blm.bed_id = bed.bed_id AND bed.status ='OCCUPIED'
         INNER JOIN location l ON l.location_id = blm.location_id  AND l.name in ('Supportive Care Ward') AND l.retired IS FALSE
         LEFT OUTER JOIN bed_patient_assignment_map bpam ON bpam.bed_id = bed.bed_id AND bpam.date_stopped IS NULL
         LEFT OUTER JOIN person p ON p.person_id = bpam.patient_id AND p.voided IS FALSE
         LEFT OUTER JOIN person_name pn ON pn.person_id = p.person_id AND pn.voided IS FALSE
         LEFT OUTER JOIN patient_identifier pi ON pi.patient_id = p.person_id AND pi.voided IS FALSE
         LEFT OUTER JOIN visit v ON v.patient_id = pn.person_id and pn.voided = 0
         LEFT OUTER JOIN visit_attribute va on va.visit_id = v.visit_id and va.attribute_type_id = (
          select visit_attribute_type_id from visit_attribute_type where name='Admission Status'
        ) and va.voided = 0
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
        GROUP BY pi.identifier
        ORDER BY bpam.date_started DESC;",'Admitted to Supportive Care Ward',uuid());