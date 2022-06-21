set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Date recorded","Date recorded","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Next appointment date","Next appointment date","Date","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Session location","Session location","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Relationship to head of household","Relationship to head of household","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Head of household occupation","Head of household occupation","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Patient living condition","Patient living condition","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Patient owns house","Patient owns house","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, In the last week, did the patient go an entire day without eating because of lack of food available?","In the last week, did the patient go an entire day without eating because of lack of food available?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Patient education level","Patient education level","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Patient understands their disease","Patient understands their disease","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Guardian understands patient's disease","Guardian understands patient's disease","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Feeling nervous, anxious or on edge","Feeling nervous, anxious or on edge","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Not being able to stop or control worrying","Not being able to stop or control worrying","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Little interest or pleasure in doing things","Little interest or pleasure in doing things","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Feeling down, depressed, or hopeless","Feeling down, depressed, or hopeless","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Follow-up planned","Follow-up planned","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Format of consultation","Format of consultation","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, MSF Referral","MSF Referral","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Referral outside MSF","Referral outside MSF","Coded","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Other session location","Other session location","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Other head of household","Other head of household","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Head of household other occupation","Head of household other occupation","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Other key figures in the household","Other key figures in the household","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Living Situation- Comments","Living Situation- Comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Social Information- Comments","Social Information- Comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Financial situation","Financial situation","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Common food eaten during last week","Common food eaten during last week","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Comment","Comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Other relevant psychosocial information","Other relevant psychosocial information","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Directions to the house","Directions to the house","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Reason for referral","Reason for referral","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Other referral outside MSF","Other referral outside MSF","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Important patient information to share with the medical team","Important patient information to share with the medical team","Text","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Number of dependent children","Number of dependent children","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Age of children","Age of children","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Number of other dependents","Number of other dependents","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Age of dependent","Age of dependent","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, Number of meals per day","Number of meals per day","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSA, PHQ 4 score","PHQ 4 score","Numeric","Computed",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "MSA, Number of dependent children" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",0,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "MSA, Age of children" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "MSA, Number of other dependents" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",0,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "MSA, Age of dependent" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "MSA, Number of meals per day" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",0,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "MSA, PHQ 4 score" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unstable accommodation","Unstable accommodation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Social Welfare NGO","Social Welfare NGO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Legal aid","Legal aid","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Primary school","Primary school","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lives at relatives/friends' place","Lives at relatives/friends' place","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stable accommodation","Stable accommodation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Home visit","Home visit","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"High school","High school","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other medical facility","Other medical facility","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Phone call","Phone call","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Farmer","Farmer","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Phone support","Phone support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"On the move","On the move","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Psychiatric care","Psychiatric care","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Small business owner","Small business owner","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Homeless","Homeless","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Institution","Institution","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Illiterate","Illiterate","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Charcoal seller","Charcoal seller","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"College/University","College/University","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Fisherman","Fisherman","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Employee","Employee","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"0= Not at all","0= Not at all","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSF OPD","MSF OPD","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Land ownership","Land ownership","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Sexual and gender based violence","Sexual and gender based violence","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Husband","Husband","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vegetable seller","Vegetable seller","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Therapeutic patient education","Therapeutic patient education","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "MSA, Patient education level" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Primary (standard 1 to 8), High school (from 1 to 4)","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "MSA, PHQ 4 score" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"if > 6 = refer to the counsellor","en",1,now(),NULL,NULL,uuid());
