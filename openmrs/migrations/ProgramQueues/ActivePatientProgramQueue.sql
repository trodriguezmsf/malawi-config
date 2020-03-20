DELETE
FROM global_property
where property = 'emrapi.sqlSearch.activePatients';
select uuid()
into @uuid;
INSERT INTO global_property (`property`, `property_value`, `description`, `uuid`)
VALUES ('emrapi.sqlSearch.activePatients', "select distinct pi.identifier                                          as identifier,
                concat(pn.given_name, ' ', ifnull(pn.family_name, '')) as name,
                concat('', p.uuid)                                     as uuid,
                concat('', v.uuid)                                     as activeVisitUuid,
                IF(va.value_reference = 'Admitted', 'true', 'false')   as hasBeenAdmitted,
                patient_program_updated.name                                                as PATIENT_LISTING_PROGRAM_NAME,
                cn.name                                                as PATIENT_LISTING_PROGRAM_STATE
from visit v
         join person_name pn on v.patient_id = pn.person_id and pn.voided = 0
         join patient_identifier pi on v.patient_id = pi.patient_id
         join patient_identifier_type pit on pi.identifier_type = pit.patient_identifier_type_id
         join global_property gp on gp.property = 'bahmni.primaryIdentifierType' and gp.property_value = pit.uuid
         join person p on p.person_id = v.patient_id
         join location l
              on l.uuid = ${visit_location_uuid} and v.location_id = l.location_id and v.date_stopped is null and
                 v.voided = 0
         left outer join visit_attribute va on va.visit_id = v.visit_id and va.voided = 0 and va.attribute_type_id = (
    select visit_attribute_type_id from visit_attribute_type where name = 'Admission Status'
)
    left outer join (
        select pp.patient_id, pr.name as name,pp.patient_program_id, pp.outcome_concept_id, pp.date_completed
        from patient_program pp
               inner join  program pr on pp.program_id = pr.program_id and pp.voided = 0
        where pr.name = 'Oncogynae' and pp.patient_id in (
            select pp.patient_id
            from patient_program pp
            where pp.voided = 0 and pp.outcome_concept_id is null
            group by pp.patient_id
            having count(pp.patient_program_id) > 1
        )
        UNION
        select  pp.patient_id, pr.name as name, pp.patient_program_id, pp.outcome_concept_id, pp.date_completed
        from patient_program pp
                 inner join program pr on pp.program_id = pr.program_id and pp.voided = 0 and pp.outcome_concept_id is null
        group by pp.patient_id
        having count(pp.patient_program_id) = 1
    ) as patient_program_updated on v.patient_id = patient_program_updated.patient_id and patient_program_updated.date_completed IS NULL
            left outer join (select patient_program_id,state from patient_state where voided = 0 and end_date is null) as ps
                    on ps.patient_program_id = patient_program_updated.patient_program_id
         left outer join program_workflow_state pws on pws.program_workflow_state_id = ps.state
         left outer join concept_name cn on cn.concept_id = pws.concept_id group by v.patient_id" ,
        'Active Patients',
        @uuid);
