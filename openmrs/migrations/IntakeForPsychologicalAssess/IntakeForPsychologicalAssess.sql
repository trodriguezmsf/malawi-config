set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Date recorded","Date recorded","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Next appointment","Next appointment","Date","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Referred from","Referred from","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Session Location","Session Location","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Treatment phase","Treatment phase","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Previous mental health care received","Previous mental health care received","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Provider type","Provider type","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Stressors","Stressors","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Medical condition","Medical condition","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Social condition","Social condition","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Relational situation","Relational situation","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Violence condition","Violence condition","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Cancer","Cancer","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Did you have problem performing daily activities, such as cooking, bathing, or chores outside the household?","Did you have problem performing daily activities, such as cooking, bathing, or chores outside the household?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Did you have problems getting along with family or friends?","Did you have problems getting along with family or friends?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Did you have any problems sleeping, such as sleeping too much or not enough?","Did you have any problems sleeping, such as sleeping too much or not enough?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Have you been bothered by unpleasant thoughts, worries or ideas?","Have you been bothered by unpleasant thoughts, worries or ideas?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Have you felt sad or nervous?","Have you felt sad or nervous?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, CGI-severity score","CGI-severity score","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Patient's main syndrome","Patient's main syndrome","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Coping mechanism","Coping mechanism","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Follow-up planned","Follow-up planned","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Format of consultation","Format of consultation","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, MSF Referral","MSF Referral","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Referral outside MSF","Referral outside MSF","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Have you been suffering?","Have you been suffering?","Coded","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Other session location","Other session location","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Comments","Comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Mental health risk factors","Mental health risk factors","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Other syndrome","Other syndrome","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Additional syndrome","Additional syndrome","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Other coping mechanism","Other coping mechanism","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Reason for referral","Reason for referral","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Other referral outside MSF","Other referral outside MSF","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Important patient information to share with the medical team","Important patient information to share with the medical team","Text","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, MHOS score","MHOS score","Numeric","Computed",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPA, Suffering scale","Suffering scale","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "IPA, MHOS score" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "IPA, Suffering scale" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,1,NULL,NULL,"",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer","Cancer","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hobbies","Hobbies","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Extreme poverty/Financial crisis","Extreme poverty/Financial crisis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Impact of the treatment on the physical integrity","Impact of the treatment on the physical integrity","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"3=Some","3=Some","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Social condition","Social condition","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Social worker","Social worker","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Fear of death","Fear of death","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"6=Severely ill","6=Severely ill","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Relatives support","Relatives support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Neurocognitive problem","Neurocognitive problem","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"4=Fair amount","4=Fair amount","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Behavioural/Substance-related","Behavioural/Substance-related","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Trauma related","Trauma related","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Clinical professional","Clinical professional","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"1= Not at all","1= Not at all","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient suffering from medical condition not related to conflict","Patient suffering from medical condition not related to conflict","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"5=A lot","5=A lot","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Social exclusion","Social exclusion","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Traditional/religious healer","Traditional/religious healer","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Friends support","Friends support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Direct witness of violence","Direct witness of violence","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"4=Moderately ill","4=Moderately ill","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"House destroyed","House destroyed","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"2=Bordeline mentally ill","2=Bordeline mentally ill","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Close relative with medical disease","Close relative with medical disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient suffering from a previous Mental Health disorder","Patient suffering from a previous Mental Health disorder","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Neglect","Neglect","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Spiritual support","Spiritual support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MoH Chemotherapy IPD","MoH Chemotherapy IPD","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSF IPD","MSF IPD","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Medical condition","Medical condition","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Psychosis","Psychosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Victim of sexual violence","Victim of sexual violence","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Husband support","Husband support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Community support","Community support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"3=Midly ill","3=Midly ill","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Support from other patients","Support from other patients","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Direct victim of violence","Direct victim of violence","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"1=Normal","1=Normal","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Loss or excessive social role","Loss or excessive social role","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"2=A little","2=A little","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Siblings support","Siblings support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Relational Condition","Relational Condition","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"5=Markedly ill","5=Markedly ill","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Spouse conflict as a result of cancer condition","Spouse conflict as a result of cancer condition","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"7=Among the most extremely ill","7=Among the most extremely ill","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Close relative detained/died/missed/injured","Close relative detained/died/missed/injured","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Children support","Children support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Intra-family related problem","Intra-family related problem","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Violence condition","Violence condition","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "IPA, Stressors" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Choose maximum 3","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "IPA, Violence condition" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Other example of violence condition include war, torture, conflict, death, injury, harassment.                                                    Sexual violence can also take place while being detained, during sequestration, imprisonment, displacement, migration","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "IPA, Cancer" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Spouse conflict can include divorce and separation","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "IPA, Mental health risk factors" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Describe risk factors: suicidal risk, self-harm, acute symptoms.","en",1,now(),NULL,NULL,uuid());
