set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;


#Add Parent Concepts
#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Cardiac examination comments","Cardiac examination comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CBA, Respiratory system examination comments","Respiratory system examination comments","Text","Misc",false);