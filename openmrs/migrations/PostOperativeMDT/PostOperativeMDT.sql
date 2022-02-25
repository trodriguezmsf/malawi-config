set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Date recorded","Date recorded","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Other type of  surgical procedure","Other type of  surgical procedure","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Other management plan","Other management plan","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Comments","Comments","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Surgery outcome","Surgery outcome","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Follow-up visit","Follow-up visit","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Proposed management plan","Proposed management plan","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Surgical procedure type","Surgical procedure type","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Q-M classification on the right side","Q-M classification on the right side","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Q-M classification on the left side","Q-M classification on the left side","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Type of Chemotherapy","Type of Chemotherapy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Should palliative chemotherapy be considered?","Should palliative chemotherapy be considered?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Chemotherapy regimen","Chemotherapy regimen","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Referred to radiation therapy","Referred to radiation therapy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Referred to palliative care","Referred to palliative care","Coded","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unsatisfactory","Unsatisfactory","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Satisfactory","Satisfactory","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"12 months","12 months","N/A","Misc",false);
