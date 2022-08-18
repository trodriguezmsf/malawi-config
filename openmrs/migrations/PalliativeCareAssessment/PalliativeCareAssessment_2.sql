set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Referred to MoH/NGO, Other","Referred to MoH/NGO, Other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Next appointment","Next appointment","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PCA, Referred to MOH/NGO","Referred to MOH/NGO","Coded","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Monkey Bay","Monkey Bay","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namwera","Namwera","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chilepa","Chilepa","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Makanjira","Makanjira","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kawinga","Kawinga","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ngokwe","Ngokwe","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namanja","Namanja","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mpiri","Mpiri","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thyolo DHO","Thyolo DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Techelani","Techelani","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malamulo","Malamulo","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Zowa","Zowa","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Utale 1","Utale 1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ulongwe","Ulongwe","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mbiza","Mbiza","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Muloza","Muloza","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thutchila","Thutchila","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mulomba","Mulomba","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Matawale","Matawale","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Domasi","Domasi","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chipini","Chipini","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Likangala","Likangala","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thondwe","Thondwe","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Masawa","Masawa","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thambani","Thambani","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lisungwe","Lisungwe","N/A","Misc",false);