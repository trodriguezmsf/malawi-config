DELETE
FROM global_property
where property = 'emrapi.sqlSearch.activePatients';
select uuid()
into @uuid;
INSERT INTO global_property (`property`, `property_value`, `description`, `uuid`)
VALUES ('emrapi.sqlSearch.activePatients', "select distinct
                                                  pi.identifier                                          as identifier,
                                                  concat(pn.given_name, ' ', ifnull(pn.family_name, '')) as name,
                                                  concat('', p.uuid)                                     as uuid,
                                                  concat('', v.uuid)                                     as activeVisitUuid,
                                                  IF(va.value_reference = 'Admitted', 'true', 'false')   as hasBeenAdmitted,
                                                  pr.name                                                as PATIENT_LISTING_PROGRAM_NAME,
                                                  cn.name                                                as PATIENT_LISTING_PROGRAM_STATE
                                           from visit v
                                                    join person_name pn on v.patient_id = pn.person_id and pn.voided = 0
                                                    join patient_identifier pi on v.patient_id = pi.patient_id
                                                    join patient_identifier_type pit on pi.identifier_type = pit.patient_identifier_type_id
                                                    join global_property gp on gp.property = 'bahmni.primaryIdentifierType' and gp.property_value = pit.uuid
                                                    join person p on p.person_id = v.patient_id
                                                    join location l on l.uuid = ${visit_location_uuid} and v.location_id = l.location_id and v.date_stopped is null and v.voided = 0
                                                    left outer join visit_attribute va on va.visit_id = v.visit_id and va.voided = 0  and va.attribute_type_id = (
                                               select visit_attribute_type_id from visit_attribute_type where name = 'Admission Status'
                                           )
                                                     left outer join ((select patientProgram.patient_id,
                                                                             voided,
                                                                             date_completed,
                                                                             program_id,
                                                                             patient_program_id,
                                                                             date_created
                                                                      from patient_program patientProgram
                                                                               join (select max(date_created) as datecreated, patient_id
                                                                                                from patient_program
                                                                                                where date_completed is null
                                                                                                group by patient_id) as maxdate
                                                                                               on maxdate.patient_id = patientProgram.patient_id and
                                                                                                  maxdate.datecreated = patientProgram.date_created)) as pp
                                                                    on pp.patient_id = p.person_id AND pp.date_completed IS NULL
                                                    left outer join program pr on pp.program_id = pr.program_id
                                                    left outer join (select patientState.patient_program_id,
                                                                            state
                                                                     from patient_state patientState
                                                                              join (select max(date_created) as datecreated, patient_program_id
                                                                                               from patient_state
                                                                                               group by patient_program_id) maxdate
                                                                                              on maxdate.patient_program_id = patientState.patient_program_id and
                                                                                                 maxdate.datecreated = patientState.date_created and voided = 0) ps
                                                                    on ps.patient_program_id = pp.patient_program_id
                                                    left outer join program_workflow_state pws on pws.program_workflow_state_id = ps.state
                                                    left outer join program_workflow pw on pw.program_workflow_id = pws.program_workflow_id
                                                    left outer join concept_name cn on cn.concept_id = pws.concept_id group by pi.patient_id order by pi.patient_id",
        'Active Patients',
        @uuid);
