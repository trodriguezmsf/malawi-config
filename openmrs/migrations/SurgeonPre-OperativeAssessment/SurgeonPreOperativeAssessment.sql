set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Yes","Yes",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No","No",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SPOA, Date recorded","Date recorded",'Date','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SPOA, MDT Validation","MDT Validation",'Coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SPOA, MDT Validation, comments","MDT Validation, comments",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SPOA, Consent form completed","Consent form completed",'Coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SPOA, Planned operation in OT","Planned operation in OT",'Coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SPOA, Clinical exam","Clinical exam",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SPOA, Surgeon validation","Surgeon validation",'Coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SPOA, Surgeon validation, comments","Surgeon validation, comments",'Text','Misc',false);


call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radical abdominal hysterectomy","Radical abdominal hysterectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radical vaginal hysterectomy","Radical vaginal hysterectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Total abdominal hysterectomy","Total abdominal hysterectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Total vaginal hysterectomy","Total vaginal hysterectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radical trachelectomy","Radical trachelectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Conisation","Conisation",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Partial vulvectomy","Partial vulvectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Total vulvectomy","Total vulvectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Colpectomy","Colpectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Partial colpectomy","Partial colpectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Adnexal surgery","Adnexal surgery",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Gynaecological examination","Gynaecological examination",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Exploratory laparotomy","Exploratory laparotomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other surgery","Other surgery",'N/A','Misc',false);

