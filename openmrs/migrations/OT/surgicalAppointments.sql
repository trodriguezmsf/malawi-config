DELETE FROM global_property WHERE property = 'bahmni.sqlGet.otSurgicalAppointments';
SELECT uuid() INTO @uuid;

INSERT INTO global_property (property, property_value, description, uuid)
 VALUES ('bahmni.sqlGet.otSurgicalAppointments',
"SELECT
    DATE_FORMAT(sb.start_datetime, '%d/%m/%Y')                          AS 'Date of Surgery',
    surgical_appointment_surgeon_name.value                             AS `Name of Surgeon`,
    surgical_appointment_procedure.value                                AS `Procedure`,
    sa.status                                                           AS `Status`

FROM surgical_block sb
         INNER JOIN surgical_appointment sa ON sa.surgical_block_id = sb.surgical_block_id
    AND sa.voided IS FALSE
         INNER JOIN person person ON person.person_id = sa.patient_id
    AND person.uuid = ${patientUuid}
    AND person.voided IS FALSE
         INNER JOIN provider p ON p.provider_id = sb.primary_provider_id
    AND p.retired IS FALSE
         INNER JOIN person_name pn ON pn.person_id = p.person_id
    AND pn.voided IS FALSE
         LEFT OUTER JOIN (
    SELECT
        surgical_appointment_id AS surgical_appointment_id,
        value                   AS value
    FROM surgical_appointment_attribute saa
             INNER JOIN surgical_appointment_attribute_type saat
                        ON saat.surgical_appointment_attribute_type_id =
                           saa.surgical_appointment_attribute_type_id AND saat.name = 'Surgeon Name'
                            AND saat.retired IS FALSE AND saa.voided IS FALSE
) surgical_appointment_surgeon_name
                         ON surgical_appointment_surgeon_name.surgical_appointment_id = sa.surgical_appointment_id
         LEFT OUTER JOIN (
    SELECT
        surgical_appointment_id AS surgical_appointment_id,
        value                   AS value
    FROM surgical_appointment_attribute saa
             INNER JOIN surgical_appointment_attribute_type saat
                        ON saat.surgical_appointment_attribute_type_id =
                           saa.surgical_appointment_attribute_type_id AND saat.name = 'procedure'
                            AND saat.retired IS FALSE AND saa.voided IS FALSE
) surgical_appointment_procedure
                         ON surgical_appointment_procedure.surgical_appointment_id = sa.surgical_appointment_id
WHERE sa.status in ('COMPLETED', 'SCHEDULED')
ORDER BY sb.start_datetime DESC;"
, 'Surgical Appointments for patient', @uuid);
