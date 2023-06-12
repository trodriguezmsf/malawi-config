set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Date recorded","Date recorded","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Date of procedure","Date of procedure","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Previous procedure performed","Previous procedure performed","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Complication of procedure","Complication of procedure","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Adverse reaction to anesthesia","Adverse reaction to anesthesia","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Complication of Transfusion","Complication of Transfusion","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Medical history","Medical history","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Current medication","Current medication","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Dental examination","Dental examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Outcome of initial anesthesia assessment, comments","Outcome of initial anesthesia assessment, comments","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Previous anesthesia history","Previous anesthesia history","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, History of transfusion","History of transfusion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Lumbar column exam","Lumbar column exam","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Mallampati class","Mallampati class","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, ASA score","ASA score","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Planned anesthesia technique","Planned anesthesia technique","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Outcome of initial anesthesia assessment","Outcome of initial anesthesia assessment","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Planned transfusion volume","Planned transfusion volume","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "AAPREOP, Planned transfusion volume" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"UI/ml",1,1);

#Add Date/time Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Fasting (food) start time","Fasting (food) start time","Datetime","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Fasting (water) start time","Fasting (water) start time","Datetime","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Fasting (orange juice) start time","Fasting (orange juice) start time","Datetime","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AAPREOP, Breastfeeding end time","Breastfeeding end time","Datetime","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Postpone surgery","Postpone surgery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Risk of difficult procedure","Risk of difficult procedure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA VI","ASA VI","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Sedation","Sedation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA III","ASA III","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA IV","ASA IV","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IV","IV","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA II","ASA II","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Local anesthesia","Local anesthesia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"General anesthesia","General anesthesia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"General","General","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Spinal anesthesia/Regional","Spinal anesthesia/Regional","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Local","Local","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA V","ASA V","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Regional anesthesia","Regional anesthesia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unfit for surgery - cancellation","Unfit for surgery - cancellation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ready for surgery","Ready for surgery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA I","ASA I","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "AAPREOP, Mallampati class" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"I: soft palate, uvula, and pillars are visible, II: soft palate and uvula are visible, III: only the soft palate and base of the uvula are visible, IV: only the hard palate is visible.","en",1,now(),NULL,NULL,uuid());
