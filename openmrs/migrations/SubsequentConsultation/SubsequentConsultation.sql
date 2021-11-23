set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Date recorded","Date recorded","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Other reason","Other reason","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Comments","Comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Neurological exam","Neurological exam","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Other","Other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Vulva and vagina examination comment","Vulva and vagina examination comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Digital vaginal examination","Digital vaginal examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Diagnosis Comments","Diagnosis Comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Benign, other","Benign, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Abnormal findings, other","Abnormal findings, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Treatment phase, other","Treatment phase, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Other findings","Other findings","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Treatment proposed (MDT)","Treatment proposed (MDT)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Reason for refusal of treatment","Reason for refusal of treatment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Disclosure limitations, specify","Disclosure limitations, specify","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Patient concerns expectation and wishes","Patient concerns expectation and wishes","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Consultation for palliative care, comments","Consultation for palliative care, comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Patient support, other","Patient support, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Appointment scheduling, note","Appointment scheduling, note","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Reason for visit","Reason for visit","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Time","Time","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Cardiac examination","Cardiac examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, NYHA Heart failure classification","NYHA Heart failure classification","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Respiratory system exam","Respiratory system exam","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Abdominal examination","Abdominal examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Retention of urine","Retention of urine","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Skin disorder","Skin disorder","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Lymph node exam, detailed","Lymph node exam, detailed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Laterality","Laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, ECOG performance status","ECOG performance status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Vulva and vagina examination","Vulva and vagina examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Procedure performed","Procedure performed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Digital rectal examination","Digital rectal examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Parametrial invasion","Parametrial invasion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Clinical diagnosis","Clinical diagnosis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Confirmed malignancy diagnosis","Confirmed malignancy diagnosis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Topography of the Tumour (confirmed)","Topography of the Tumour (confirmed)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Topography of the Tumour (suspected)","Topography of the Tumour (suspected)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Clinical FIGO staging for cancer of the vulva","Clinical FIGO staging for cancer of the vulva","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Clinical FIGO staging for cancer of the vagina","Clinical FIGO staging for cancer of the vagina","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Clinical FIGO staging for cancer of the cervix","Clinical FIGO staging for cancer of the cervix","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Clinical FIGO staging for cancer of the uterus","Clinical FIGO staging for cancer of the uterus","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Clinical FIGO staging for cancer of the ovary","Clinical FIGO staging for cancer of the ovary","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Benign","Benign","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Abnormal findings","Abnormal findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Treatment phase","Treatment phase","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Ultrasound exam","Ultrasound exam","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Cancer disease status","Cancer disease status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Patient decision on treatment","Patient decision on treatment","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Informed consent","Informed consent","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Disclosure limitations","Disclosure limitations","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Resuscitation status","Resuscitation status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Pharmacy prescription","Pharmacy prescription","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Reason for referral","Reason for referral","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Patient support appointment type","Patient support appointment type","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Appointment needed","Appointment needed","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Uterine cervix diameter in cm","Uterine cervix diameter in cm","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SC, Next appointment","Next appointment","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "SC, Uterine cervix diameter in cm" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "SC, Next appointment" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"weeks",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Post Neoadjuvant Chemotherapy (NAC)","Post Neoadjuvant Chemotherapy (NAC)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diagnosis Disclosure","Diagnosis Disclosure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Post Three dimensional conformal radiation therapy (CRT)","Post Three dimensional conformal radiation therapy (CRT)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No recurrence","No recurrence","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"2 years","2 years","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Treatment","Treatment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Declined","Declined","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"6 months","6 months","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Postoperative state","Postoperative state","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Metastatically recurrent tumour","Metastatically recurrent tumour","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Accepted","Accepted","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"In remission","In remission","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Follow-up care after treatment","Follow-up care after treatment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"After treatment","After treatment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stable but not improving","Stable but not improving","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Worsening","Worsening","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Locally recurrent tumour","Locally recurrent tumour","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Signs and symptoms","Signs and symptoms","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pre-treatment/Not started","Pre-treatment/Not started","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Improving","Improving","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"1 year","1 year","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"3 years","3 years","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kaposi's sarcoma","Kaposi's sarcoma","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "SC, ECOG performance status" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"0: Fully active, able to carry on all pre-disease performance without restriction
 1: Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature
 2: Ambulatory and capable of all self-care but unable to carry out any work activities. Up and about more than 50% of waking hours
 3: Capable of only limited self-care, confined to bed or chair more than 50% of waking hours
 4: Completely disabled. Cannot carry out any selfcare; totally confined to bed or chair
 5: Dead","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "SC, Informed consent" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Documentation that someone has given informed consent.  Select yes, if the consent form was signed by the patient","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "SC, Pharmacy prescription" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Use form CC-PHARM-1","en",1,now(),NULL,NULL,uuid());
