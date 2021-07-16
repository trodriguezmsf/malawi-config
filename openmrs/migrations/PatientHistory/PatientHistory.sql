set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Date concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Assessment Date","Assessment Date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Date of Histopathology","Date of Histopathology","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Date of last CD4 count","Date of last CD4 count","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Date of positive result","Date of positive result","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, HIV status, HIV(-)","HIV status, HIV(-)","Date","Misc",false);

#Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Allergies, Other","Allergies, Other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Cancer, comment","Cancer, comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Cardiovascular, Disease of heart","Cardiovascular, Disease of heart","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Current ART regimen, Other","Current ART regimen, Other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Current medication, including herbal/traditional remedies","Current medication, including herbal/traditional remedies","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Diabetes, comment","Diabetes, comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Hypertension, comment","Hypertension, comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Mastercard ID","Mastercard ID","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Other health issues","Other health issues","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Pregnancy/Delivery complications","Pregnancy/Delivery complications","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Psychiatric, Other (specify)","Psychiatric, Other (specify)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Reason for referral, Other","Reason for referral, Other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Referring Facility, Other","Referring Facility, Other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Surgery, Major Accident (specify)","Surgery, Major Accident (specify)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Surgery, Other (specify)","Surgery, Other (specify)","Text","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Caesareans","Caesareans","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Last CD4 count","Last CD4 count","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Living children","Living children","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Oncology ID","Oncology ID","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Pregnancies","Pregnancies","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, VIA screening ID","VIA screening ID","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Vaginal deliveries","Vaginal deliveries","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Alcohol, units/day","Alcohol, units/day","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Smoking, Cigarettes/day","Smoking, Cigarettes/day","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Total","Total","Numeric","Computed",false);

#Add concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Caesareans" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Last CD4 count" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Living children" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Oncology ID" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Pregnancies" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, VIA screening ID" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Vaginal deliveries" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Alcohol, units/day" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Smoking, Cigarettes/day" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Total" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Abdominal","Abdominal","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Alcohol","Alcohol","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Allergies","Allergies","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Cardiovascular","Cardiovascular","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Consent form","Consent form","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Covid Test","Covid Test","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Current ART regimen","Current ART regimen","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Current marital status","Current marital status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Diseased immediate family member (Ex, Mother, Sister)","Diseased immediate family member (Ex, Mother, Sister)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Endocrine","Endocrine","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Feeling down, depressed, or hopeless","Feeling down, depressed, or hopeless","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Feeling nervous, anxious or on edge","Feeling nervous, anxious or on edge","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Fertility intentions","Fertility intentions","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, HIV Status","HIV Status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, HIV Status, HIV(Plus)","HIV Status , HIV(+)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, HIV Status, Unknown","HIV Status, Unknown","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, HPV","HPV","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Histopathology","Histopathology","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Initial Health Education","Initial Health Education","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Little interest or pleasure in doing things","Little interest or pleasure in doing things","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Lung","Lung","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Neurologic","Neurologic","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Not being able to stop or control worrying","Not being able to stop or control worrying","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Psychiatric","Psychiatric","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Reason for referral","Reason for referral","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Recreational drug use (marijuana, cocaine, heroin)","Recreational drug use (marijuana, cocaine, heroin)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Referring Facility","Referring Facility","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Referring Facility, MSF VIA center","Referring Facility, MSF VIA center","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Referring Facility, NGO's VIA center","Referring Facility, NGO's VIA center","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Smoking","Smoking","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Surgery","Surgery","Coded","Misc",false);

#Add Child Concepts

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"0","0","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"1","1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"2","2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"3","3","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ABC 600 / 3TC 300 + DTG 50","ABC 600 / 3TC 300 + DTG 50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ABC 600 / 3TC 300 + EFV 600","ABC 600 / 3TC 300 + EFV 600","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ABC 600 / 3TC 300 + LPV/r 200/50","ABC 600 / 3TC 300 + LPV/r 200/50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ABC 600 / 3TC 300 + RAL 400","ABC 600 / 3TC 300 + RAL 400","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AZT 300 / 3TC 150 + ATV/r 300/100","AZT 300 / 3TC 150 + ATV/r 300/100","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AZT 300 / 3TC 150 + DTG 50","AZT 300 / 3TC 150 + DTG 50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AZT 300 / 3TC 150 + EFV 600","AZT 300 / 3TC 150 + EFV 600","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AZT 300 / 3TC 150 + LPV/ 200/50","AZT 300 / 3TC 150 + LPV/ 200/50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Accepted/ Referral for testing","Accepted/ Referral for testing","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anemia (low blood count)","Anemia (low blood count)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anxiety disorder","Anxiety disorder","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Asthma","Asthma","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bangwe","Bangwe","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Blood clots in legs/lungs","Blood clots in legs/lungs","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CHAI","CHAI","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer","Cancer","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer follow-up","Cancer follow-up","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer suspect (for diagnosis)","Cancer suspect (for diagnosis)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer treatment","Cancer treatment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chilomoni","Chilomoni","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DHO/Chiradzulu","DHO/Chiradzulu","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DREAM","DREAM","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Doesn't want children","Doesn't want children","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Doesn't know","Doesn't know","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DRV 600 + r 100 + DTG 50 (± NRTIs)","DRV 600 + r 100 + DTG 50 (± NRTIs)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Declined","Declined","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Depression","Depression","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diabetes","Diabetes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Disease of heart","Disease of heart","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Divorced","Divorced","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Drugs","Drugs","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"EGPAF","EGPAF","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Food","Food","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Frequent headaches","Frequent headaches","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HIV (+)","HIV (+)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HIV (-)","HIV (-)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Heavy","Heavy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"High blood pressure","High blood pressure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypertension","Hypertension","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kidney disease","Kidney disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Limbe","Limbe","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Liver disease","Liver disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSF VIA center","MSF VIA center","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"NGO's VIA center","NGO's VIA center","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Major accident","Major accident","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Married","Married","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Milepa","Milepa","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namadzi","Namadzi","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namitambo","Namitambo","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ndirande","Ndirande","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Negative","Negative","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not done","Not done","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not on ART","Not on ART","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Occasional","Occasional","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"On ART","On ART","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Positive","Positive","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Positive VIA results","Positive VIA results","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Referral for testing","Referral for testing","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Regular","Regular","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Schizophrenia","Schizophrenia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Seizure","Seizure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Single","Single","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Supportive services","Supportive services","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TDF 300 / 3TC 300 + ATV/r 300/100","TDF 300 / 3TC 300 + ATV/r 300/100","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TDF 300 / 3TC 300 + LPV/r 200/50","TDF 300 / 3TC 300 + LPV/r 200/50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TDF 300 / 3TC 300 / DTG 50","TDF 300 / 3TC 300 / DTG 50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TDF 300 / 3TC 300 / EFV 600","TDF 300 / 3TC 300 / EFV 600","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thyroid problem","Thyroid problem","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Tuberculosis","Tuberculosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unknown","Unknown","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Wants children","Wants children","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Widow","Widow","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Yes","Yes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No","No","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PH, Feeling nervous, anxious or on edge" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),"0 = Not at all, 1 = Several days, 2 = More than half the days, 3 = Nearly every day",'en',1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PH, Not being able to stop or control worrying" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),"0 = Not at all, 1 = Several days, 2 = More than half the days, 3 = Nearly every day",'en',1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PH, Little interest or pleasure in doing things" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),"0 = Not at all, 1 = Several days, 2 = More than half the days, 3 = Nearly every day",'en',1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PH, Feeling down, depressed, or hopeless" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),"0 = Not at all, 1 = Several days, 2 = More than half the days, 3 = Nearly every day",'en',1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PH, Total" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),"if > 6 = refer to the counselor",'en',1,now(),NULL,NULL,uuid());
