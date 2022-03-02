set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Date recorded","Date recorded","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Date of next appointment","Date of next appointment","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Name of guardian","Name of guardian","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Name of attendant","Name of attendant","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Comment related to patient disease understanding","Comment related to patient disease understanding","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Comment related to guardian disease understanding","Comment related to guardian disease understanding","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Rectal examination comment","Rectal examination comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Cardiac examination","Cardiac examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Respiratory system examination","Respiratory system examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Oedema comment","Oedema comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Bed sore comment","Bed sore comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Other skin disorder","Other skin disorder","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Comment related to physical examination","Comment related to physical examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Problems list","Problems list","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Action plan","Action plan","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Patient education and information","Patient education and information","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Patient education and information for next session","Patient education and information for next session","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Other reason for referral","Other reason for referral","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Location of next appointment, other","Location of next appointment, other","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Type of visit","Type of visit","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Location of assessment","Location of assessment","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Attendant","Attendant","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Patient understands their disease and prognosis","Patient understands their disease and prognosis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Guardian understands disease and prognosis of the patient","Guardian understands disease and prognosis of the patient","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, WHO Performance status (ECOG)","WHO Performance status (ECOG)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Feeling nervous, anxious or on edge","Feeling nervous, anxious or on edge","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Not being able to stop or control worrying","Not being able to stop or control worrying","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Little interest or pleasure in doing things","Little interest or pleasure in doing things","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Feeling down, depressed, or hopeless","Feeling down, depressed, or hopeless","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Mental health status","Mental health status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Urogenital exam findings","Urogenital exam findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Grade of Ascites","Grade of Ascites","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Rectal exam findings","Rectal exam findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Oral examination","Oral examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Skin disorder","Skin disorder","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Bed sore grade","Bed sore grade","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Reason for referral","Reason for referral","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, 48 hour phone follow-up","48 hour phone follow-up","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Location of next appointment","Location of next appointment","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, PHQ 4 score","PHQ 4 score","Numeric","Computed",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, GSC Score","GSC Score","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Bedside Oral Exam (BOE) score","Bedside Oral Exam (BOE) score","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Norton score","Norton score","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PCA, PHQ 4 score" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PCA, GSC Score" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),15,NULL,NULL,-0.0000000001,NULL,NULL,"",0,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PCA, Bedside Oral Exam (BOE) score" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",0,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PCA, Norton score" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pressure ulcer stage 4","Pressure ulcer stage 4","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pressure ulcer stage 3","Pressure ulcer stage 3","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mucositis","Mucositis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"2=More than half the days","2=More than half the days","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"1=Several days","1=Several days","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade 2","Grade 2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rapid Assessment","Rapid Assessment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"0=Not at all","0=Not at all","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient came with guardian","Patient came with guardian","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Phone","Phone","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vesico-vaginal fistula","Vesico-vaginal fistula","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thrush","Thrush","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Psychosocial Counselling","Psychosocial Counselling","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade 3","Grade 3","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Agitation","Agitation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Inpatient department","Inpatient department","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Delirium","Delirium","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Retention of urine","Retention of urine","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"pressure ulcer stage 2","pressure ulcer stage 2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dry","Dry","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pressure ulcer stage 1","Pressure ulcer stage 1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"3=Nearly every day","3=Nearly every day","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient came alone","Patient came alone","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade 1","Grade 1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Outpatient department","Outpatient department","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Home-based care","Home-based care","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pallor","Pallor","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Oedema","Oedema","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Faecal impaction","Faecal impaction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rectovesical Fistula","Rectovesical Fistula","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PCA, WHO Performance status (ECOG)" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"0: Fully active, able to carry on all pre-disease performance without restriction      1: Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature     2: Ambulatory and capable of all self-care but unable to carry out any work activities. Up and about more than 50% of waking hours
3: Capable of only limited self-care, confined to bed or chair more than 50% of waking hours      4: Completely disabled. Cannot carry out any selfcare; totally confined to bed or chair      5: Dead","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PCA, PHQ 4 score" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"if > 6 = refer to the counsellor","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PCA, GSC Score" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"The Glasgow Coma Scale","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PCA, Grade of Ascites" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Mild, Grade 2: Moderate, Grade 3: Abundant","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PCA, Bedside Oral Exam (BOE) score" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"<8 is considered normal, Between 9-16 is considered moderate, 17-24 is considered severe","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PCA, Norton score" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"<10 very high risk; 10-14 high risk; 15-18 medium risk; >18 low risk","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PCA, Comment related to physical examination" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"If patient is facing social, spiritual or sexual issues, specify here","en",1,now(),NULL,NULL,uuid());
