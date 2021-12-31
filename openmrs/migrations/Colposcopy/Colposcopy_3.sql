set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Aceto-white areas, Size Num","Aceto-white areas, Size","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Other lesion, Size Num","Other lesion, Size","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "CS, Other lesion, Size Num" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "CS, Aceto-white areas, Size Num" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",1,1);
