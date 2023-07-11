set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Surgeon Assistant","Surgeon Assistant","Text","Misc",false);
