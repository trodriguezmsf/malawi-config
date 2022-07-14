set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Date recorded","Date recorded","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Gynaecological consultation date","Gynaecological consultation date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, MDT date","MDT date","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, ONCO ID","ONCO ID","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Other cardiac examination","Other cardiac examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Respiratory system examination, other","Respiratory system examination, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Abdominal examination, other","Abdominal examination, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Abdominal examination comment","Abdominal examination comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Neurological examination, Other","Neurological examination, Other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Neurological examination comments","Neurological examination comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Other skin disorder","Other skin disorder","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Other examination findings","Other examination findings","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, ECOG comments","ECOG comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Location of metastasis","Location of metastasis","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Other chemotherapy regimen","Other chemotherapy regimen","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Treatment plan","Treatment plan","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Reason for refusal","Reason for refusal","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Reason for palliative assessment","Reason for palliative assessment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Other reason for referral","Other reason for referral","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Appointment needed, other","Appointment needed, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Appointment scheduling, note","Appointment scheduling, note","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Cardiac examination","Cardiac examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, NYHA Heart failure classification","NYHA Heart failure classification","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Respiratory system examination","Respiratory system examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Reduced air entry laterality","Reduced air entry laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Dullness to percussion laterality","Dullness to percussion laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Crackles laterality","Crackles laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Abdominal examination","Abdominal examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Retention of urine","Retention of urine","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Neurological examination","Neurological examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Lower limb tenderness laterality","Lower limb tenderness laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Lower limb weakness laterality","Lower limb weakness laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Hemiplegia laterality","Hemiplegia laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Paraplegia laterality","Paraplegia laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Skin disorder","Skin disorder","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Lymph node examination","Lymph node examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Lymph node laterality","Lymph node laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Tests performed","Tests performed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Evidence of metastasis","Evidence of metastasis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Type of chemotherapy","Type of chemotherapy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Chemotherapy regimen","Chemotherapy regimen","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Refusal of treatment by patient","Refusal of treatment by patient","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Reason for referral","Reason for referral","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Appointment needed","Appointment needed","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, ECOG Performance Status","ECOG Performance Status","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "CBA, ECOG Performance Status" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,-0.0000000001,NULL,NULL,"",0,0);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lower limb weakness","Lower limb weakness","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mass","Mass","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rapid palliative assessment","Rapid palliative assessment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Crackles","Crackles","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Scoliosis","Scoliosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pre-treatment Therapeutic Patient Education (TPE)","Pre-treatment Therapeutic Patient Education (TPE)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chest X-ray","Chest X-ray","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dullness to percussion","Dullness to percussion","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Reduced air entry","Reduced air entry","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pulmonary oedema","Pulmonary oedema","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ultrasound","Ultrasound","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Paraplegia","Paraplegia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hemiplegia","Hemiplegia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cardiomegaly","Cardiomegaly","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pedal edema","Pedal edema","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lower limb tenderness","Lower limb tenderness","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TIP (Paclitaxel/Ifosfamide/Cisplatin)","TIP (Paclitaxel/Ifosfamide/Cisplatin)","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CBA, ECOG Performance Status" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"0: Fully active, able to carry on all pre-disease performance without restriction<br/>1: Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature<br/>2: Ambulatory and capable of all self-care but unable to carry out any work activities. Up and about more than 50% of waking hours<br/>3: Capable of only limited self-care, confined to bed or chair more than 50% of waking hours<br/>4: Completely disabled. Cannot carry out any selfcare; totally confined to bed or chair<br/>5: Dead","en",1,now(),NULL,NULL,uuid());
