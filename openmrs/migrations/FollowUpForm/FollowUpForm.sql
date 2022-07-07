set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Date recorded","Date recorded","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Next appointment","Next appointment","Date","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Session number","Session number","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, MHOS score","MHOS score","Numeric","Computed",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Suffering scale","Suffering scale","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "FUF, Session number" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",0,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "FUF, MHOS score" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "FUF, Suffering scale" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,1,NULL,NULL,"",1,1);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Type of session","Type of session","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Session Location","Session Location","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Did you have problem performing daily activities, such as cooking, bathing, or chores outside the household?","Did you have problem performing daily activities, such as cooking, bathing, or chores outside the household?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Did you have problems getting along with family or friends?","Did you have problems getting along with family or friends?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Did you have any problems sleeping, such as sleeping too much or not enough?","Did you have any problems sleeping, such as sleeping too much or not enough?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Have you been bothered by unpleasant thoughts, worries or ideas?","Have you been bothered by unpleasant thoughts, worries or ideas?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Have you felt sad or nervous?","Have you felt sad or nervous?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Follow-up CGI-severity score","Follow-up CGI-severity score","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Follow-up CGI-improvement score","Follow-up CGI-improvement score","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Psychotherapeutic tools used","Psychotherapeutic tools used","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Relaxation, specify","Relaxation, specify","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Follow-up planned","Follow-up planned","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Format of consultation","Format of consultation","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, MSF Referral","MSF Referral","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Referral outside MSF","Referral outside MSF","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Have you been suffering?","Have you been suffering?","Coded","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Other session location","Other session location","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Reason for referral","Reason for referral","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Other referral outside MSF","Other referral outside MSF","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FUF, Important patient information to share with the medical team","Important patient information to share with the medical team","Text","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dyad","Dyad","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Safe place","Safe place","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"1=Very much improved","1=Very much improved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suffering scale","Suffering scale","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Tree of resources","Tree of resources","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Relaxation","Relaxation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"4=No change","4=No change","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"5=Minimally worse","5=Minimally worse","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Line of life","Line of life","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mindfulness","Mindfulness","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"6=Much worse","6=Much worse","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"7=Very much worse","7=Very much worse","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"2=Much improved","2=Much improved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"3=Minimally improved","3=Minimally improved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Family support","Family support","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Individual","Individual","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Breathing exercise","Breathing exercise","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "FUF, Follow-up planned" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"If “No” is selected, fill out the discharge form","en",1,now(),NULL,NULL,uuid());
