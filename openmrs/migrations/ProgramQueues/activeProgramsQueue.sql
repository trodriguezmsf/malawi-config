DELETE
FROM global_property
where property = 'emrapi.sqlSearch.activePrograms';
select uuid()
into @uuid;
INSERT INTO global_property (`property`, `property_value`, `description`, `uuid`)
VALUES ('emrapi.sqlSearch.activePrograms', "select patientIdentifier.identifier   as 'ID',
       concat(personName.given_name, ' ', ifnull(personName.family_name, '')) as 'Name',
       DATE_FORMAT(programstate.birthdate, '%d %b %Y')        as 'DOB',
       DATE_FORMAT(programstate.date_created, '%d %b %Y')     as 'Date of Registration',
       Oncogynae.oncogynaeName                                as 'Oncogynae Program State',
       Palliative.palliativeName                              as 'Palliative Program State',
       concat('', programstate.uuid)                          as uuid
from patient_program patientprogram
    #Block to fetch the values for 'Oncogynae program state' column
         LEFT OUTER JOIN
            (select cn.name as 'oncogynaeName', patientprogram.patient_id from patient_program patientprogram
               join patient_state programstate on patientprogram.patient_program_id = programstate.patient_program_id and programstate.voided is false and programstate.end_date is null
               join program_workflow_state programWorkFlowState on programstate.state = programWorkFlowState.program_workflow_state_id
               join program_workflow programWorkFlow on programWorkFlow.program_workflow_id = programWorkFlowState.program_workflow_id
               join concept_name cn on programWorkFlowState.concept_id = cn.concept_id
               where patientprogram.program_id =
               (select program_id from program join concept_name conceptname on program.concept_id = conceptname.concept_id where conceptname.name = 'Oncogynae'
                 and conceptname.locale = 'en' and conceptname.concept_name_type = 'FULLY_SPECIFIED'
               )
               and patientprogram.outcome_concept_id is null and patientprogram.voided is false and patientprogram.date_voided is null
            )Oncogynae on Oncogynae.patient_id = patientprogram.patient_id
    #Block to fetch the values for 'Palliative program state' column
         LEFT OUTER JOIN
            (select cn.name as 'palliativeName', patientprogram.patient_id from patient_program patientprogram
               join patient_state programstate on patientprogram.patient_program_id = programstate.patient_program_id and programstate.voided is false and programstate.end_date is null
               join program_workflow_state programWorkFlowState on programstate.state = programWorkFlowState.program_workflow_state_id
               join program_workflow programWorkFlow on programWorkFlow.program_workflow_id = programWorkFlowState.program_workflow_id
               join concept_name cn on programWorkFlowState.concept_id = cn.concept_id
               where patientprogram.program_id =
                 (select program_id from program join concept_name conceptname on program.concept_id = conceptname.concept_id where conceptname.name = 'Palliative Care'
                  and conceptname.locale = 'en' and conceptname.concept_name_type = 'FULLY_SPECIFIED'
                 )and patientprogram.outcome_concept_id is null and patientprogram.voided is false and patientprogram.date_voided is null
               group by patientprogram.patient_id
            ) Palliative on Palliative.patient_id = patientprogram.patient_id
    #Block to fetch the
         left outer join patient_identifier patientIdentifier on patientprogram.patient_id = patientIdentifier.patient_id
    #Joining patient table for columns 'ID'
         left outer join patient on patientIdentifier.patient_id = patient.patient_id
    #Joining person table for columns 'Date of Birth' and 'Date of Registration'
         left outer join person programstate on programstate.person_id = patientIdentifier.patient_id
    #Joining personname table for columns 'Name'
         left outer join person_name personName on programstate.person_id = personName.person_id
    #Block to fetch the 'Bed Number' and 'Bed Management' values
        left outer join
            (select b.bed_number, bpam.patient_id from bed_patient_assignment_map bpam
               join bed b on bpam.bed_id = b.bed_id AND bpam.date_stopped IS NULL group by bpam.patient_id
            ) bednumber on bednumber.patient_id = patientprogram.patient_id
where patientprogram.voided = 0 and patientprogram.outcome_concept_id is NULL group by patientprogram.patient_id, programstate.date_created order by programstate.date_created desc;" ,
        'Active Programs',
        @uuid);
