set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Gynaecological consultation date","Gynaecological consultation date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, MDT date","MDT date","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Other reason for referral","Other reason for referral","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Type of chemotherapy","Type of chemotherapy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Fatigue severity","Fatigue severity","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CCAT, Reason for referral","Reason for referral","Coded","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Fatigue","Fatigue","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Allergic reaction","Allergic reaction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypotension","Hypotension","N/A","Misc",false);

