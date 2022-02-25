set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Date and time recorded","Date and time recorded","DateTime","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Type of assessment","Type of assessment","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Type of pain","Type of pain","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Site of pain","Site of pain","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Pain scale, Initial","Pain scale","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Pain course","Pain course","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, 24 hour pattern","24 hour pattern","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Neuropathic pain evaluation questionnaire (DN4)","Neuropathic pain evaluation questionnaire (DN4)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Characteristics of pain","Characteristics of pain","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Was medication for breakthrough pain provided?","Was medication for breakthrough pain provided?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Impact","Impact","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Further assessment","Further assessment","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Algoplus pain assessment","Algoplus pain assessment","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Pain scale, Follow up","Pain scale","Coded","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Onset of pain","Onset of pain","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Site of pain, other","Site of pain, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Presumed cause","Presumed cause","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Comments","Comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Radiating/referred pain sites","Radiating/referred pain sites","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Pain description and management plan","Pain description and management plan","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Aggravating Factors","Aggravating Factors","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Alleviating Factors","Alleviating Factors","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Response to medication","Response to medication","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Physical and social functioning comment","Physical and social functioning comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Sleep disorder comment","Sleep disorder comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Mood disorder comment","Mood disorder comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Provoking factors","Provoking factors","Text","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Current pain score, Initial","Current pain score","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Maximum pain score, Initial","Maximum pain score","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Minimum pain score, Initial","Minimum pain score","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, DN4 Score","DN4 Score","Numeric","Computed",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Score at rest","Score at rest","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Score on exam","Score on exam","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Current pain score, Follow up","Current pain score","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Maximum pain score, Follow up","Maximum pain score","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PA, Minimum pain score, Follow up","Minimum pain score","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PA, Current pain score, Initial" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,-0.1,NULL,NULL,"",0,0);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PA, Maximum pain score, Initial" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,-0.1,NULL,NULL,"",0,0);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PA, Minimum pain score, Initial" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,-0.1,NULL,NULL,"",0,0);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PA, DN4 Score" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",0,0);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PA, Score at rest" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,-0.1,NULL,NULL,"",0,0);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PA, Score on exam" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,-0.1,NULL,NULL,"",0,0);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PA, Current pain score, Follow up" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,-0.1,NULL,NULL,"",0,0);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PA, Maximum pain score, Follow up" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,-0.1,NULL,NULL,"",0,0);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PA, Minimum pain score, Follow up" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,-0.1,NULL,NULL,"",0,0);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Initial","Initial","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Inflammatory","Inflammatory","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Abdomen","Abdomen","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Foot","Foot","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Femur","Femur","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mood disorder","Mood disorder","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Background pain","Background pain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lower leg","Lower leg","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Gluteal region","Gluteal region","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient Health Questionnaire (PHQ-4)","Patient Health Questionnaire (PHQ-4)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pinprick hypoesthesia","Pinprick hypoesthesia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Tingling","Tingling","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Atypical behaviour","Atypical behaviour","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Painful cold","Painful cold","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ankle","Ankle","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Light brushing","Light brushing","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pins and needles","Pins and needles","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Follow up","Follow up","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Verbal Rating Scale (VRS)","Verbal Rating Scale (VRS)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"McGill pain questionnaire","McGill pain questionnaire","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Neuropathic","Neuropathic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Facial expression","Facial expression","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Look","Look","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pelvis","Pelvis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Burning","Burning","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mechanical","Mechanical","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Body position","Body position","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Algoplus Scale","Algoplus Scale","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nociceptive","Nociceptive","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Itching","Itching","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Physical and social functioning","Physical and social functioning","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hip","Hip","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thigh","Thigh","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lower back","Lower back","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Visual Analogue Scale (VAS)","Visual Analogue Scale (VAS)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Numbness","Numbness","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Sleep disorder","Sleep disorder","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Electric shocks","Electric shocks","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Knee","Knee","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Toe","Toe","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Numerical Rating Scale (NRS)","Numerical Rating Scale (NRS)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chronic","Chronic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Iliac","Iliac","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Complaints","Complaints","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Background and breakthrough pain","Background and breakthrough pain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Breakthrough pain","Breakthrough pain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Acute","Acute","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Touch hypoesthesia","Touch hypoesthesia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unknown (non typical)","Unknown (non typical)","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PA, Type of pain" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Acute <3 months, chronic > 3 months","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PA, Onset of pain" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"To be recorded in months","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PA, Presumed cause" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"if relevant: e.g. surgical wound, CIPN, tumour involvement","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PA, Pain course" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Background pain is persistent, breakthrough pain is intermittent.","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PA, Response to medication" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"This score measures the level of pain after administration of medication for breakthrough pain","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "PA, Algoplus pain assessment" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Facial expression (frowning, grimacing, wincing, clenched tetther, inexpression), Look (inattentive, blank stare, distant or imploring, tear-eyed, closed eyes),  Complaints ('ow-ouch', 'that' hurts', groaning, screaming), Body position (withdrawn, guarded, refuses to move, frozen posture), Atypical behaviour (agitation, aggressivity, grabbing onto something or someone)","en",1,now(),NULL,NULL,uuid());
