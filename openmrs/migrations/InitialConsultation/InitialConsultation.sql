set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Date recorded","Date recorded","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Previous chemotherapy start date","Previous chemotherapy start date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Previous radiation therapy start date","Previous radiation therapy start date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Previous oncosurgery start date","Previous oncosurgery start date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other treatment start date","Other treatment start date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, MDT date","MDT date","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, History of present illness","History of present illness","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Previous chemotherapy facility name","Previous chemotherapy facility name","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Previous chemotherapy regimen","Previous chemotherapy regimen","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Previous radiation therapy facility name","Previous radiation therapy facility name","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Previous radiation therapy regimen","Previous radiation therapy regimen","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Previous oncosurgery facility name","Previous oncosurgery facility name","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other procedure performed","Other procedure performed","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other treatment facility name","Other treatment facility name","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other treatment modality, other","Other treatment modality, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Neurological examination","Neurological examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other examination findings","Other examination findings","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Vulva and vagina examination, other","Vulva and vagina examination, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Vulva and vagina examination comment","Vulva and vagina examination comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Digital vaginal examination","Digital vaginal examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Rectal examination, comments","Rectal examination, comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Precancerous lesions, other","Precancerous lesions, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Abnormal findings, other","Abnormal findings, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Reason for refusal of treatment","Reason for refusal of treatment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Management plan","Management plan","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Consultation for palliative care, comments","Consultation for palliative care, comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Patient support, other","Patient support, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Appointment scheduling, note","Appointment scheduling, note","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Appointment needed, Other","Appointment needed, Other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Confirmed malignancy diagnosis, other","Confirmed malignancy diagnosis, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Topography of tumour (suspected), other female genital organs","Topography of tumour (suspected), other female genital organs","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Topography of tumour (confirmed), other female genital organs","Topography of tumour (confirmed), other female genital organs","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Previously received oncology treatment","Previously received oncology treatment","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Procedure performed","Procedure performed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other treatment modality","Other treatment modality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Cardiac examination","Cardiac examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, NYHA Heart failure classification","NYHA Heart failure classification","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Respiratory system examination","Respiratory system examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Abdominal examination","Abdominal examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Retention of urine","Retention of urine","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Skin disorder","Skin disorder","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Lymph node examination","Lymph node examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Laterality","Laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, ECOG performance status","ECOG performance status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Vulva and vagina examination","Vulva and vagina examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Digital rectal examination","Digital rectal examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Parametrial invasion","Parametrial invasion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Parametrial invasion, laterality","Parametrial invasion, laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Pelvic side wall invasion","Pelvic side wall invasion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Pelvic side wall invasion, laterality","Pelvic side wall invasion, laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Procedure performed, Gynaecological Exam","Procedure performed, Gynaecological Exam","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Ultrasound exam","Ultrasound exam","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Clinical diagnosis","Clinical diagnosis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Confirmed malignancy diagnosis","Confirmed malignancy diagnosis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Precancerous lesions","Precancerous lesions","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Abnormal findings","Abnormal findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Topography of the tumour (confirmed)","Topography of the tumour (confirmed)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Topography of the tumour (suspected)","Topography of the tumour (suspected)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Initial FIGO staging for cancer of the vulva","Initial FIGO staging for cancer of the vulva","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Initial FIGO staging for cancer of the vagina","Initial FIGO staging for cancer of the vagina","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Initial FIGO staging for cancer of the cervix","Initial FIGO staging for cancer of the cervix","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Initial FIGO staging for cancer of the uterus","Initial FIGO staging for cancer of the uterus","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Initial FIGO staging for cancer of the ovary","Initial FIGO staging for cancer of the ovary","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Clinical FIGO staging for cancer of the vulva","Clinical FIGO staging for cancer of the vulva","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Clinical FIGO staging for cancer of the vagina","Clinical FIGO staging for cancer of the vagina","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Clinical FIGO staging for cancer of the cervix","Clinical FIGO staging for cancer of the cervix","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Clinical FIGO staging for cancer of the uterus","Clinical FIGO staging for cancer of the uterus","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Clinical FIGO staging for cancer of the ovary","Clinical FIGO staging for cancer of the ovary","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Refusal of treatment by patient","Refusal of treatment by patient","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Resuscitation status","Resuscitation status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Cancer diagnosis disclosed to patient","Cancer diagnosis disclosed to patient","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Pharmacy prescription","Pharmacy prescription","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Reason for referral","Reason for referral","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Patient support appointment type","Patient support appointment type","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Appointment needed","Appointment needed","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Uterine cervix diameter in cm","Uterine cervix diameter in cm","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Gynaecological consultation","Gynaecological consultation","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "IC, Uterine cervix diameter in cm" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "IC, Gynaecological consultation" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"weeks",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pipelle","Pipelle","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chemotherapy","Chemotherapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"NYHA I","NYHA I","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LEEP","LEEP","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Total vaginal hysterectomy","Total vaginal hysterectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ascites","Ascites","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Wheeze","Wheeze","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Counselling","Counselling","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pap smear","Pap smear","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cervix Uteri","Cervix Uteri","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cervical conization","Cervical conization","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Crackle","Crackle","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"0","0","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radical hysterectomy","Radical hysterectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Scars","Scars","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Oncosurgery","Oncosurgery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vulva","Vulva","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stridor","Stridor","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Schistosomiasis","Schistosomiasis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Abnormal findings","Abnormal findings","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Heart failure","Heart failure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Perianal Condyloma Acuminata","Perianal Condyloma Acuminata","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cryotherapy","Cryotherapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radiation therapy","Radiation therapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Laboratory tests","Laboratory tests","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Splenomegaly","Splenomegaly","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pre-treatment","Pre-treatment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Adenocarcinoma","Adenocarcinoma","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cervicitis","Cervicitis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Virchow's Node","Virchow's Node","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Inguinal Lymph node","Inguinal Lymph node","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"3","3","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kaposi sarcoma","Kaposi sarcoma","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Condyloma Acuminatum of the Cervix","Condyloma Acuminatum of the Cervix","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Total abdominal hysterectomy","Total abdominal hysterectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Arrhythmia","Arrhythmia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Adenosquamous carcinoma","Adenosquamous carcinoma","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Consultation for palliative care","Consultation for palliative care","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"1","1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Confirmed malignancy","Confirmed malignancy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dyspnoea","Dyspnoea","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ovary","Ovary","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"2","2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"5","5","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MDT","MDT","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Abdominal hernia","Abdominal hernia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bed Sore","Bed Sore","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"NYHA IV","NYHA IV","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Valvular abnormalities","Valvular abnormalities","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Gynaecological consultation","Gynaecological consultation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vesicovaginal fistula (VVF) repair","Vesicovaginal fistula (VVF) repair","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not available","Not available","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ascitic fluid","Ascitic fluid","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Corpus Uteri","Corpus Uteri","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Squamous cell carcinoma","Squamous cell carcinoma","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"STI","STI","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"NYHA III","NYHA III","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thermocoagulation","Thermocoagulation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suspected malignancy","Suspected malignancy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CIN I","CIN I","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Do not attempt to resuscitate","Do not attempt to resuscitate","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient support","Patient support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Resuscitate","Resuscitate","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vagina","Vagina","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Therapeutic patient education (TPE)","Therapeutic patient education (TPE)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hepatomegaly","Hepatomegaly","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"NYHA II","NYHA II","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Elevated jugular venous pressure","Elevated jugular venous pressure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Colposcopy","Colposcopy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"4","4","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other female genital organs","Other female genital organs","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Jaundice","Jaundice","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cardiac Oedema","Cardiac Oedema","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Condyloma acuminata","Condyloma acuminata","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"I","I","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC2","IC2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIA2","IIIA2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIC","IIIC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC3","IC3","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC1","IC1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIA1","IIIA1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Precancerous lesions","Precancerous lesions","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "IC, ECOG performance status" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"0: Fully active, able to carry on all pre-disease performance without restriction
 1: Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature
 2: Ambulatory and capable of all self-care but unable to carry out any work activities. Up and about more than 50% of waking hours
 3: Capable of only limited self-care, confined to bed or chair more than 50% of waking hours
 4: Completely disabled. Cannot carry out any selfcare; totally confined to bed or chair
 5: Dead","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "IC, Pharmacy prescription" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Use form CC-PHARM-1","en",1,now(),NULL,NULL,uuid());
