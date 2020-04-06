set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

# Add Numeric Question concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, BMI","BMI","Numeric","Computed",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Capillary Refill","Capillary Refill","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Diastolic Blood Pressure","Diastolic Blood Pressure","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Height","Height","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, O2 Flow","O2 Flow","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Pain","Pain","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Pulse","Pulse","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Respiratory Rate","Respiratory Rate","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, SpO2","SpO2","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Systolic Blood Pressure","Systolic Blood Pressure","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Temperature","Temperature","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Urine output","Urine output","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Urine output in 24 hours","Urine output in 24 hours","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Weight","Weight","Numeric","Misc",false);

INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Height" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"cm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Weight" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"kg",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, BMI" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"kg/m²",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Respiratory Rate" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,20,NULL,NULL,13,"/min",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, SpO2" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,100,NULL,NULL,93,"%",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, O2 Flow" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"l/min",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Capillary Refill" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,2,NULL,NULL,0,"secs",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Pulse" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,120,NULL,NULL,60,"min",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Systolic Blood Pressure" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,140,NULL,NULL,90,"mmHg",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Diastolic Blood Pressure" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,90,NULL,NULL,60,"mmHg",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Temperature" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,38,NULL,NULL,36,"C°",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Pain" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),10,NULL,0,0,NULL,0,"VAS",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Urine output" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"ml",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Urine output in 24 hours" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"ml",1,1);

#Add date concept
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Date and time","Date & time","Datetime","Misc",false);

#Add coded concept
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, AVPU Level of Consciousness","AVPU Level of Consciousness","Coded","Question",false);

#Add child concepts

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Awake","Awake","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pain","Pain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unresponsive","Unresponsive","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Verbal","Verbal","N/A","Misc",false);

#Add Concept Description
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VS, BMI" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),
        'Normal Range:- 18-25','en',1,now(),NULL,NULL,uuid());
