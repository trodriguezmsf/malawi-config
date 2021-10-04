set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Date recorded","Date recorded","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Other type of visit","Other type of visit","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Other test performed","Other test performed","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Type of visit","Type of visit","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Rapid test for malaria","RDT Malaria","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Urine pregnancy test","Urine pregnancy test","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Urine protein (dip stick)","Urine protein (dip stick)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Urine dipstick for blood","Urine dipstick for blood","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Urine nitrite test","Urine nitrite test","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Urine leukocyte esterase test","Urine leukocyte esterase test","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Glucose measurement, qualitative, urine","Urine glucose dipstick","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Urine ketone test","Urine ketone test","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Bilirubin total presence in urine by test strip","Bilirubin dipstick test","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Urobilinogen","Urobilinogen","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Blood culture result","Blood culture result","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Blood typing","Blood group","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, HIV enzyme immunoassay, qualitative","HIV test","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Haemoglobin","Haemoglobin","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Mean cell haemoglobin concentration","MCHC","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Serum creatinine","Creatinine","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Fasting blood glucose measurement","Fasting blood glucose","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, CD4 count","CD4 count","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Serum glutamic-oxaloacetic transaminase","AST","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Serum glutamic-pyruvic transaminase","ALT","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Alkaline phosphatase","Alk phos","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Creatinine clearance test","Creatinine clearance test","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Serum sodium","Sodium","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, Serum albumin","Serum albumin","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LB, HIV viral load","HIV viral load","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Haemoglobin" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,15,NULL,NULL,11.1,"g/dl",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Mean cell haemoglobin concentration" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,36,NULL,NULL,33,"g/dl",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Serum creatinine" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,1.4,NULL,NULL,0.1,"mg/dl",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Fasting blood glucose measurement" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,110,NULL,NULL,70,"mg/dl",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, CD4 count" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,1500,NULL,NULL,500,"cells/µL",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Serum glutamic-oxaloacetic transaminase" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,34,NULL,NULL,6,"U/L",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Serum glutamic-pyruvic transaminase" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,40,NULL,NULL,10,"U/L",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Alkaline phosphatase" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,126,NULL,NULL,30,"IU/L",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Creatinine clearance test" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,18,NULL,NULL,9,"mm/24",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Serum sodium" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,145,NULL,NULL,135,"mmol/L",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, Serum albumin" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,5.5,NULL,NULL,3.5,"mg/dL",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LB, HIV viral load" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"A-","A-","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"B-","B-","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"O-","O-","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Baseline","Baseline","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"A+","A+","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Trace","Trace","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"1+","1+","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"O+","O+","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AB-","AB-","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"B+","B+","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"4+","4+","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Regular follow up visit","Regular follow up visit","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AB+","AB+","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"3+","3+","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"2+","2+","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Growth","Growth","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No Growth","No Growth","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Haemoglobin" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 11.1 - 15","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Mean cell haemoglobin concentration" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 33 - 36","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Serum creatinine" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 0.1 - 1.4","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Fasting blood glucose measurement" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 70 - 110","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Serum glutamic-oxaloacetic transaminase" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 6 - 34","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Serum glutamic-pyruvic transaminase" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 10 - 40","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Alkaline phosphatase" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 30 - 126","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Creatinine clearance test" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 9 - 18","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Serum sodium" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 135 - 145","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LB, Serum albumin" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal range: 3.5 -5.5","en",1,now(),NULL,NULL,uuid());
