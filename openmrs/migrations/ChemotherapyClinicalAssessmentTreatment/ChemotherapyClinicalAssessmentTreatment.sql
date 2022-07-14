set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, ONCO ID","ONCO ID","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Other chemotherapy regimen","Other chemotherapy regimen","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Other complications during the infusion","Other complications during the infusion","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Other serious adverse events","Other serious adverse events","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Other complications","Other complications","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Diarrhea frequency","Diarrhea frequency","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Other side effects","Other side effects","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Reason for delay","Reason for delay","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Reason for stopping chemotherapy","Reason for stopping chemotherapy","Text","Misc",false);

#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Date recorded","Date recorded","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Date chemotherapy was stopped","Date chemotherapy was stopped","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Next appointment","Next appointment","Date","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Chemotherapy regimen","Chemotherapy regimen","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Chemotherapy treatment line","Chemotherapy treatment line","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Medication delivered","Medication delivered","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Complications during the infusion","Complications during the infusion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Serious adverse events","Serious adverse events","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Complications","Complications","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Infection severity","Infection severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Malnutrition severity","Malnutrition severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Side effects","Side effects","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Anaemia severity","Anaemia severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Leukopenia severity","Leukopenia severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Thrombocytopenia severity","Thrombocytopenia severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Loss of appetite severity","Loss of appetite severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Nausea severity","Nausea severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Vomiting severity","Vomiting severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Weight loss severity","Weight loss severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Thrush severity","Thrush severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Change of taste severity","Change of taste severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Abdominal pain severity","Abdominal pain severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Renal failure severity","Renal failure severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Mucositis severity","Mucositis severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Neuropathy severity","Neuropathy severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Neuropathy location","Neuropathy location","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Constipation severity","Constipation severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Assessment outcome","Assessment outcome","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Cycle number","Cycle number","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "CCAT, Cycle number" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",0,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diarrhea","Diarrhea","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malnutrition","Malnutrition","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thrombocytopenia","Thrombocytopenia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other allergic reaction","Other allergic reaction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stop chemotherapy","Stop chemotherapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Second-line","Second-line","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Feet","Feet","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Premedication","Premedication","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Leukopenia","Leukopenia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Change of taste","Change of taste","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dose adjustment","Dose adjustment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Loss of consciousness","Loss of consciousness","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chemotherapy extravasation","Chemotherapy extravasation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Weight loss","Weight loss","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Difficulty breathing","Difficulty breathing","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Change in blood pressure","Change in blood pressure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"First-line","First-line","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Abdominal pain","Abdominal pain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Loss of appetite","Loss of appetite","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"post medication","post medication","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade 4","Grade 4","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Infection","Infection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Neuropathy","Neuropathy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Delay chemotherapy","Delay chemotherapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dizziness","Dizziness","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Skin flushing and itching","Skin flushing and itching","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Fourth-line","Fourth-line","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Renal failure","Renal failure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Serious adverse events","Serious adverse events","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Third-line","Third-line","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Fifth-line","Fifth-line","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hands","Hands","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Swelling of body region","Swelling of body region","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade 5","Grade 5","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TPF (Cisplatin/Docetaxel/5FU)","TPF (Cisplatin/Docetaxel/5FU)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Angiodema","Angiodema","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Anaemia severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Leukopenia severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Thrombocytopenia severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Loss of appetite severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Nausea severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Vomiting severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Diarrhea frequency" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Number of stools per day","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Weight loss severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Thrush severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Change of taste severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Abdominal pain severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Renal failure severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Mucositis severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Neuropathy severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CCAT, Constipation severity" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade 1: Asymptomatic or mild symptoms; Grade 2: Moderate; minimal, local or noninvasive intervention indicated;  Grade 3 Severe or medically significant but not immediately life-threatening; hospitalization or prolongation of hospitalization indicated; Grade 4 Life-threatening consequences; urgent intervention indicated. Grade 5 Death related to adverse events","en",1,now(),NULL,NULL,uuid());
