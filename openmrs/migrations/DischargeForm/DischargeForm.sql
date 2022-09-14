set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Date of discharge","Date of discharge","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Other session location","Other session location","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Other monitoring and screening tools used","Other monitoring and screening tools used","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Important patient information to share with the medical team","Important patient information to share with the medical team","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Discharge status","Discharge status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Reason for discharge","Reason for discharge","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Reason for lost to follow up","Reason for lost to follow up","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Session Location","Session Location","Coded","Misc",false);
call add_concept(@concept_id,@concept_sd,@concept_full_id,"DF, CGI-improvement score at discharge","CGI-improvement score at discharge","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, CGI-I outcome","CGI-I outcome","Coded","Misc",false);

#Add Numeric Conceptshort_id,@concept_full_id,"DF, Did you have problem performing daily activities, such as cooking, bathing, or chores outside the household?","Did you have problem performing daily activities, such as cooking, bathing, or chores outside the household?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Did you have problems getting along with family or friends?","Did you have problems getting along with family or friends?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Did you have any problems sleeping, such as sleeping too much or not enough?","Did you have any problems sleeping, such as sleeping too much or not enough?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Have you been bothered by unpleasant thoughts, worries or ideas?","Have you been bothered by unpleasant thoughts, worries or ideas?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Have you felt sad or nervous?","Have you felt sad or nervous?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, Have you been suffering?","Have you been suffering?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, CGI-severity score at discharge","CGI-severity score at discharge","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_i
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DF, MHOS score at discharge","MHOS score at discharge","Numeric","Computed",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "DF, MHOS score at discharge" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Discharged","Discharged","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"End of psychological care","End of psychological care","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No change","No change","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Deceased","Deceased","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient moved","Patient moved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient improved","Patient improved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"1=Not at all","1=Not at all","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Worsening of symptoms","Worsening of symptoms","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dissatisfied/Other expectations","Dissatisfied/Other expectations","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lost to follow-up","Lost to follow-up","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Transferred","Transferred","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No information from patient","No information from patient","N/A","Misc",false);
