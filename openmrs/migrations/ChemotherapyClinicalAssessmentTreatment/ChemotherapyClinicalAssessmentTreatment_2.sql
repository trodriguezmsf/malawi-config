set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Reason for Dose Adjustment","Reason for Dose Adjustment","Text","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Neutropenia","Neutropenia","N/A","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Neutropenia severity","Neutropenia severity","Coded","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Neutropenia severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());