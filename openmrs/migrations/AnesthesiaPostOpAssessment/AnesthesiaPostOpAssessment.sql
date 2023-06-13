set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Date recorded","Date recorded","Date","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Anesthesia technique","Anesthesia technique","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Procedure performed","Procedure performed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Complication","Complication","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Movement to","Movement to","Coded","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Anesthesia technique, other","Anesthesia technique, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Complication, other","Complication, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Comments","Comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Prescription comments","Prescription comments","Text","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, SpO2 at entry in RR","SpO2 at entry in RR","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "AAPOSTOP, SpO2 at entry in RR" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),100,NULL,NULL,93,NULL,NULL,"",0,0);

#Add Date/time Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Mobilization date/time","Mobilization date/time","Datetime","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Resume drinking time","Resume drinking time","Datetime","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Resume eating time","Resume eating time","Datetime","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPOSTOP, Movement time (hour)","Movement time (hour)","Datetime","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IV-Port-a-Cath","IV-Port-a-Cath","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bronchospasm","Bronchospasm","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ICU","ICU","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypothermia (<36)","Hypothermia (<36)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pneumonia","Pneumonia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IP-Port-a-Cath","IP-Port-a-Cath","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unanticipated movement to ICU","Unanticipated movement to ICU","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hyperthermia (>39)","Hyperthermia (>39)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Spinal headache","Spinal headache","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Aspiration","Aspiration","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypoxia","Hypoxia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HDU","HDU","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Local anesthesia systemic toxicity","Local anesthesia systemic toxicity","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nausea and vomiting","Nausea and vomiting","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cardiac arrest","Cardiac arrest","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "AAPOSTOP, SpO2 at entry in RR" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Normal Range: 93-100","en",1,now(),NULL,NULL,uuid());
