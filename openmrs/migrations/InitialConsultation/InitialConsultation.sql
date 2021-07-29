set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, History of presenting illness","History of presenting illness","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Chemotherapy, name of facility","Chemotherapy, name of facility","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Chemotherapy, modality","Chemotherapy, modality","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Radiation therapy, name of facility","Radiation therapy, name of facility","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Radiation therapy, modality","Radiation therapy, modality","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Surgery, name of facility","Surgery, name of facility","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Surgery, modality, other","Surgery, modality, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other, treatment, name of facility","Other, treatment, name of facility","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other treatment modality, Other","Other treatment modality, Other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Central nervous system","Central nervous system","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other","Other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, If no, describe","If no, describe","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Digital vaginal examination","Digital vaginal examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Rectal examination, Comment","Rectal examination, Comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Diagnosis, benign","Diagnosis, benign","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Advance decision to refuse treatment & resuscitation status, specify","Advance decision to refuse treatment & resuscitation status, specify","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Management Plan","Management Plan","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Referral, Rapid palliative assessment, main reason","Referral, Rapid palliative assessment, main reason","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Patient support, other","Patient support, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Appointment scheduling, Note","Appointment scheduling, Note","Text","Misc",false);

#Date concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Chemotherapy, start date","Chemotherapy, start date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Assessment Date","Assessment Date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Date of Next Appointment","Date of Next Appointment","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, MDT needed, date","MDT needed, date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other treatment, start date","Other treatment, start date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Radiation therapy, start date","Radiation therapy, start date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Surgery, start date","Surgery, start date","Date","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Next appointment, in weeks","Next appointment, in weeks","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Speculum examination (Main diameter of cervix in cm)","Speculum examination (Main diameter of cervix in cm)","Numeric","Misc",false);

#Add concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "IC, Next appointment, in weeks" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "IC, Speculum examination (Main diameter of cervix in cm)" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Abdomen","Abdomen","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Advance decision to refuse treatment & resuscitation status","Advance decision to refuse treatment & resuscitation status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Appointment scheduling","Appointment scheduling","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Biopsy","Biopsy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Cardiovascular","Cardiovascular","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Cervical condyloma acuminata","Cervical condyloma acuminata","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Colposcopy","Colposcopy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Cytology","Cytology","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Cytology, Type","Cytology, Type","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Diagnosis","Diagnosis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Diagnosis, suspected malignancy, Clinical FIGO staging","Diagnosis, suspected malignancy, Clinical FIGO staging","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Diagnosis, suspected malignancy, Topography of the tumor","Diagnosis, suspected malignancy, Topography of the tumor","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Digital rectal examination performed","Digital rectal examination performed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, External condyloma acuminata","External condyloma acuminata","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Has the cancer been disclosed?","Has the cancer been disclosed?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Inguinal Lymph node","Inguinal Lymph node","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Left supra clavicular lymph node","Left supra clavicular lymph node","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, MDT needed?","MDT needed?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Normal appearance","Normal appearance","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Other treatment, modality","Other treatment, modality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Patient support, specify","Patient support, specify","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Pharmacy prescription","Pharmacy prescription","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Rectal examination performed, Parametrium involved","Rectal examination performed, Parametrium involved","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Referral","Referral","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Respiratory","Respiratory","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Skin","Skin","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Surgery, modality","Surgery, modality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Treatment","Treatment","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Ultrasound exam","Ultrasound exam","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Urology","Urology","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, Vaginal condyloma acuminata","Vaginal condyloma acuminata","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC, WHO Performance status (ECOG)","WHO Performance status (ECOG)","Coded","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"4","4","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"5","5","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ascetis","Ascetis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ascites","Ascites","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bed Sore","Bed Sore","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Benign","Benign","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cervix Uteri","Cervix Uteri","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chemotherapy","Chemotherapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Conization","Conization","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Corpus Uteri","Corpus Uteri","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Counseling","Counseling","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Crackle","Crackle","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cytobrush","Cytobrush","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dyspnea","Dyspnea","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Edema","Edema","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Elevated JVP","Elevated JVP","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hepatomegaly","Hepatomegaly","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hernia","Hernia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IA1","IA1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IA2","IA2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IB1","IB1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IB2","IB2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IB3","IB3","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIA1","IIA1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIA2","IIA2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIB","IIB","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIA","IIIA","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIB","IIIB","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIC1","IIIC1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIC2","IIIC2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IVA","IVA","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IVB","IVB","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Irregular HR","Irregular HR","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Jaundice","Jaundice","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kaposi Sarcoma","Kaposi Sarcoma","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LEEP","LEEP","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Laboratory","Laboratory","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Left","Left","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"NYHA [ I II III IV ]","NYHA [ I II III IV ]","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Next appointment","Next appointment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No appointment needed","No appointment needed","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other (specify)","Other (specify)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other genital organs","Other genital organs","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ovary","Ovary","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pap Smear","Pap Smear","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient Support","Patient Support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pipelle","Pipelle","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pre-Treatment patient education","Pre-Treatment patient education","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radiation Therapy","Radiation Therapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radical Hysterectomy","Radical Hysterectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rapid palliative assessment","Rapid palliative assessment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Right","Right","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Scars","Scars","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Splenomegaly","Splenomegaly","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stridor","Stridor","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Surgery","Surgery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suspected malignancy","Suspected malignancy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TVH/TAH","TVH/TAH","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thermocoagulation/cryotherapy","Thermocoagulation/cryotherapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Urine retention","Urine retention","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VVF","VVF","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vagina","Vagina","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Valvular","Valvular","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vulva","Vulva","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Wheeze","Wheeze","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "IC, WHO Performance status (ECOG)" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),"0: Fully active, able to carry on all pre-disease performance without restriction, 1: Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, 2: Ambulatory and capable of all self-care but unable to carry out any work activities. Up and about more than 50% of waking hours
, 3: Capable of only limited self-care, confined to bed or chair more than 50% of waking hours, 4: Completely disabled. Cannot carry out any selfcare; totally confined to bed or chair",'en',1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "IC, Pharmacy prescription" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),"if Yes, go to the Pharmacy (drugs)",'en',1,now(),NULL,NULL,uuid());
