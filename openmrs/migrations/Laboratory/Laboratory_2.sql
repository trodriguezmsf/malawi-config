set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Location, Other","Location, Other","Text","Misc",false);


#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Location","Location","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, White blood cell","WBC","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Platelet","Plt","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Neutrophil","NEUT","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Potassium","Potassium","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, White blood cell" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,8.86,NULL,NULL,3.39,"x10^3/µl ",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Platelet" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,450,NULL,NULL,150,"x10^3/µl ",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Neutrophil" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,71.4,NULL,NULL,40.2,"%",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Potassium" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,5,NULL,NULL,3.5,"mmol/L",1,1);


#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, White blood cell" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 3.39 - 8.86","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Platelet" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 150 - 450","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Neutrophil" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 40.2 - 71.4","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Potassium" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 3.5 - 5","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Serum glutamic-oxaloacetic transaminase" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 0 - 50","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Serum glutamic-pyruvic transaminase" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 0 - 37","en",1,now(),NULL,NULL,uuid());
