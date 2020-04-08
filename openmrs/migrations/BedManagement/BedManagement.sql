set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Admit to Surgical Ward","Admit to Surgical Ward",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Admit to Supportive Care Ward","Admit to Supportive Care Ward",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Movement to Surgical Ward","Movement to Surgical Ward",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Movement to Supportive Care Ward","Movement to Supportive Care Ward",'N/A','Misc',false);