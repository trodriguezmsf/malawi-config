set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Date/time recorded","Date recorded","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, HIV test date","HIV test date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Last CD4 count date","Last CD4 count date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Date test resulted","Date of positive result","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Date of last histopathology exam result","Date of last histopathology exam result","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Last viral load date","Last viral load date","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, VIA screening ID","VIA screening ID","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Oncology ID","Oncology ID","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Mastercard ID","Mastercard ID","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Reason for referral, text","Reason for referral, text","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Referring facility, other","Referring facility, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Antiretroviral treatment comment","Current ART regimen, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Past medical history, comment","Past medical history, comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, History of surgery","History of surgery","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, History of obstetrical complication","History of obstetrical complication","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Other medical problems","Other medical problems","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Current medication, including herbal/traditional remedies","Current medication, including herbal/traditional remedies","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Family history comment","Family history comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Comments about allergy","Comments about allergy","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, NGO's VIA centre name, other","NGO's VIA centre name, other","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Reason for referral","Reason for referral","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Source of initial patient referral","Referral facility","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, MSF VIA centre name","MSF VIA centre name","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, NGO's VIA centre name","NGO's VIA centre name","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Civil status","Current marital status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Informed consent","Informed consent","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Covid-19 test result","Covid-19 test result","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Initial Health Education received","Initial Health Education received","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Result of HIV test","Result of HIV test","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, On antiretroviral therapy","On antiretroviral therapy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Current antiretroviral drugs used for treatment","Current antiretroviral drugs used","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Referral for testing","Referral for testing","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Past medical history diagnosis","Past medical history diagnosis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Fertility intentions","Fertility intentions","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, HPV status","HPV status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Histopathology/ Last histopathology exam result","Histopathology/ Last histopathology exam result","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Family history diagnosis","Family history diagnosis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, History of allergy","History of allergy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Smoker","Smoker","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Alcohol consumption","Alcohol consumption","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Illicit drug use, specified","Illicit drug use, specified","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, MOH health facility name","MOH health facility name","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Last CD4 count","Last CD4 count","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Gravida","Number of previous pregnancies (including current if applicable)","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Number of vaginal deliveries","Number of vaginal deliveries","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Number of previous caesarean sections","Number of previous caesarean sections","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Total number of living children","Total number of living children","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Number of tobacco cigarettes smoked per day","Number of tobacco cigarettes smoked per day","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Litres of alcohol consumed per day","Litres of alcohol consumed per day","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Last viral load","Last viral load","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Last CD4 count" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Gravida" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Number of vaginal deliveries" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Number of previous caesarean sections" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Total number of living children" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Number of tobacco cigarettes smoked per day" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Litres of alcohol consumed per day" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Last viral load" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AZT 300 / 3TC 150 + EFV 600","AZT 300 / 3TC 150 + EFV 600","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AZT 300 / 3TC 150 + ATV/r 300/100","AZT 300 / 3TC 150 + ATV/r 300/100","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Divorced","Divorced","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Epilepsy","Epilepsy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Drugs","Drugs","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Heart disease","Heart disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Depression","Depression","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TDF 300 / 3TC 300 + ATV/r 300/100","TDF 300 / 3TC 300 + ATV/r 300/100","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Married","Married","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Marijuana use","Marijuana use","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Crack cocaine use","Crack cocaine use","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TDF 300 / 3TC 300 / DTG 50","TDF 300 / 3TC 300 / DTG 50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Milepa","Milepa","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AZT 300 / 3TC 150 + DTG 50","AZT 300 / 3TC 150 + DTG 50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TDF 300 / 3TC 300 + LPV/r 200/50","TDF 300 / 3TC 300 + LPV/r 200/50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other pathology","Other pathology","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chronic kidney disease","Chronic kidney disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DREAM","DREAM","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Never married","Never married","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Asthma","Asthma","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namitambo","Namitambo","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unknown","Unknown","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namadzi","Namadzi","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ndirande","Ndirande","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thyroid disease","Thyroid disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chronic headache disorder","Chronic headache disorder","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Yes","Yes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Living with partner","Living with partner","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ABC 600 / 3TC 300 + RAL 400","ABC 600 / 3TC 300 + RAL 400","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AZT 300 / 3TC 150 + LPV/ 200/50","AZT 300 / 3TC 150 + LPV/ 200/50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Positive VIA results","Positive VIA results","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Tuberculosis","Tuberculosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DRV 600 + r 100 + DTG 50 (+/- NRTIs)","DRV 600 + r 100 + DTG 50 (+/- NRTIs)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"EGPAF","EGPAF","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Intravenous drug user","Intravenous drug user","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TDF 300 / 3TC 300 / EFV 600","TDF 300 / 3TC 300 / EFV 600","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Limbe","Limbe","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lives alone","Lives alone","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Family History of Malignant Neoplasm","Family History of Malignant Neoplasm","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Occasional","Occasional","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient wishes to get pregnant","Patient wishes to get pregnant","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Does not know","Does not know","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer treatment","Cancer treatment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"NGO's VIA centre","NGO's VIA centre","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chilomoni","Chilomoni","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer follow-up","Cancer follow-up","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Positive","Positive","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ABC 600 / 3TC 300 + EFV 600","ABC 600 / 3TC 300 + EFV 600","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ABC 600 / 3TC 300 + DTG 50","ABC 600 / 3TC 300 + DTG 50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bangwe","Bangwe","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Widow","Widow","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ABC 600 / 3TC 300 + LPV/r 200/50","ABC 600 / 3TC 300 + LPV/r 200/50","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anaemia","Anaemia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No","No","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anxiety disorder","Anxiety disorder","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Phlebitis and thrombophlebitis","Phlebitis and thrombophlebitis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Supportive services","Supportive services","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient does not wish to get pregnant","Patient does not wish to get pregnant","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Family History of Diabetes Mellitus","Family History of Diabetes Mellitus","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Separated","Separated","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Regular","Regular","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Schizophrenia","Schizophrenia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypertension","Hypertension","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer suspect","Cancer suspect","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diabetes mellitus","Diabetes mellitus","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Negative","Negative","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other health facility","Other health facility","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Food","Food","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"None","None","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mental disorder","Mental disorder","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CHAI","CHAI","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Convulsion","Convulsion","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DHO/Chiradzulu","DHO/Chiradzulu","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Family History of Hypertension","Family History of Hypertension","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not Done","Not Done","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Heavy","Heavy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pulmonary embolism","Pulmonary embolism","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSF VIA centre","MSF VIA centre","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Denied","Denied","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Approved","Approved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSF Mobile Truck","MSF Mobile Truck","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MACRO","MACRO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BLM","BLM","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Light House","Light House","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Balaka DHO","Balaka DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mbera HC","Mbera HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Makhetha HC","Makhetha HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malamulo Clinic","Malamulo Clinic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mdeka HC","Mdeka HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"QECH","QECH","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Zingwangwa HC","Zingwangwa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mulambe Mission Hospital","Mulambe Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mwaiwathu Private Hospital","Mwaiwathu Private Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Blantyre Adventist Hospital","Blantyre Adventist Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chileka HC","Chileka HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mlambe Mission Hospital","Mlambe Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mpemba HC","Mpemba HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bangwe HC","Bangwe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chichiri prison","Chichiri prison","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Limbe HC","Limbe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ndirande HC","Ndirande HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"South Lunzu","South Lunzu","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Makata HC","Makata HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Soche Maternity","Soche Maternity","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mbayani HC","Mbayani HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chirimba HC","Chirimba HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chabvala HC","Chabvala HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chikowa HC","Chikowa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chimembe HC","Chimembe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dziwe HC","Dziwe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lirangwe HC","Lirangwe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lundu HC","Lundu HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Madziabango HC","Madziabango HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namikoko HC","Namikoko HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pensulo HC","Pensulo HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mpingo Maternity","Mpingo Maternity","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"St Vincent HC","St Vincent HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kadidi HC","Kadidi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chikwawa DHO","Chikwawa DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ngabu HC","Ngabu HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"St Montfort Mission Hospital","St Montfort Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chitera HC","Chitera HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nguludi HC","Nguludi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Boma DHO","Boma DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Milepa HC","Milepa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namadzi HC","Namadzi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namitambo HC","Namitambo HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thumbwe HC","Thumbwe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malavi HC","Malavi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chimwawa HC","Chimwawa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bilal HC","Bilal HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mauwa HC","Mauwa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nkalo HC","Nkalo HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PIM HC","PIM HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mbulumbudzi HC","Mbulumbudzi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ndunde HC","Ndunde HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kachere HC","Kachere HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mua Mission","Mua Mission","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bwaila Fistula Care Hospital","Bwaila Fistula Care Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kamuzu Central Hospital","Kamuzu Central Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Umoyo Clinic","Umoyo Clinic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Liwonde","Liwonde","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Machinga DHO","Machinga DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nyambi HC","Nyambi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Makanjira HC","Makanjira HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mangochi DHO","Mangochi DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Monkeybay Rural Hospital","Monkeybay Rural Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malindi Mission Hospital","Malindi Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mulibwanji Mission Hospital","Mulibwanji Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Katuli Clinic","Katuli Clinic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mulanje DHO","Mulanje DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mulanje Mission Hospital","Mulanje Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mwanza DHO","Mwanza DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lisungwi Hospital","Lisungwi Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nsanje DHO","Nsanje DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Trinity Mission Hospital","Trinity Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ntaja HC","Ntaja HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ntcheu DHO","Ntcheu DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chiteketsa HC","Chiteketsa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Holly Familly Hospital","Holly Familly Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Migowi HC","Migowi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nkhulambe Clinic","Nkhulambe Clinic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nkhwayi HC","Nkhwayi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Phalombe DHO","Phalombe DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Salima DHO","Salima DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malamulo Adventist Hospital","Malamulo Adventist Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Matiya HC","Matiya HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pilimiti HC","Pilimiti HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Zomba Central Hospita","Zomba Central Hospita","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"St Luke's Mission Hospita","St Luke's Mission Hospita","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PH, Informed consent" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Informed consent on data collection and use. Select yes, if the consent form was signed by the patient","en",1,now(),NULL,NULL,uuid());
