set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Datetime Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Date/Time recorded","Date/Time recorded","Datetime","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Level of consciousness","AVPU (awake, voice, pain, unresponsive)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Bowel continence status","Bowel continence status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Appearance of stool","Appearance of stool","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Flatulence","Flatulence","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Frequency of observation","Frequency of observation","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Height","Height","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Weight","Weight","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Body mass index","BMI","Numeric","Computed",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Body surface area","BSA","Numeric","Computed",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Respiratory rate","Respiratory rate","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Arterial blood oxygen saturation","SpO2","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Delivered oxygen flow rate","O2 flow","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Capillary filling time","Capillary filling time","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Pulse","Heart rate","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Systolic blood pressure","Systolic blood pressure","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Diastolic blood pressure","Diastolic blood pressure","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Temperature","Temperature","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VS, Total urine output","Total urine output","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Frequency of observation" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"/h",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Height" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"cm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Weight" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"kg",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Body mass index" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,25,NULL,NULL,18,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Body surface area" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Respiratory rate" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,20,NULL,NULL,13,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Arterial blood oxygen saturation" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,100,NULL,NULL,93,"pulse oximeter",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Delivered oxygen flow rate" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"L/m",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Capillary filling time" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,2,NULL,NULL,0,"sec",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Pulse" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,120,NULL,NULL,60,"min",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Systolic blood pressure" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,140,NULL,NULL,90,"mmHg",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Diastolic blood pressure" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,90,NULL,NULL,60,"mmHg",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Temperature" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,38,NULL,NULL,36,"C",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VS, Total urine output" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"ml",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Responds to voice","Responds to voice","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pasty stool","Pasty stool","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Awake","Awake","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Staring or unresponsive to stimuli","Staring or unresponsive to stimuli","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Constipation","Constipation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not applicable","Not applicable","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Incontinence of Faeces","Incontinence of Faeces","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Semi-liquid stool","Semi-liquid stool","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Loose stool","Loose stool","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Normal","Normal","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Responds to pain","Responds to pain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Solid Stool","Solid Stool","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VS, Body mass index" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal Range: 18-25","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VS, Respiratory rate" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal Range: 13-20","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VS, Arterial blood oxygen saturation" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal Range: 93-100","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VS, Capillary filling time" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal Range: 0-2","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VS, Pulse" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal Range: 60-120","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VS, Systolic blood pressure" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal Range: 90-140","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VS, Diastolic blood pressure" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal Range: 60-90","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VS, Temperature" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal Range: 36-38","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VS, Total urine output" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Urine output since last documented.","en",1,now(),NULL,NULL,uuid());
