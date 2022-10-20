set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Precancerous lesions, other","Precancerous lesions, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Abnormal findings, other","Abnormal findings, other","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Treatment type","Treatment type","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Chemotherapy follow up","Chemotherapy follow up","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post Operative Diagnosis","Post Operative Diagnosis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Precancerous lesions","Precancerous lesions","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Abnormal findings","Abnormal findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Confirmed malignancy","Confirmed malignancy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post operative topography of the tumour","Post operative topography of the tumour","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post-operative FIGO staging for cancer of the vulva","Post-operative FIGO staging for cancer of the vulva","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post-operative FIGO staging for cancer of the vagina","Post-operative FIGO staging for cancer of the vagina","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post-operative FIGO staging for cancer of the cervix","Post-operative FIGO staging for cancer of the cervix","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post-operative FIGO staging for cancer of the uterus","Post-operative FIGO staging for cancer of the uterus","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post-operative FIGO staging for cancer of the ovary","Post-operative FIGO staging for cancer of the ovary","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Chemotherapy response","Chemotherapy response","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post-chemo FIGO staging for cancer of the vulva","Post-chemo FIGO staging for cancer of the vulva","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post-chemo FIGO staging for cancer of the vagina","Post-chemo FIGO staging for cancer of the vagina","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post-chemo FIGO staging for cancer of the cervix","Post-chemo FIGO staging for cancer of the cervix","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post-chemo FIGO staging for cancer of the uterus","Post-chemo FIGO staging for cancer of the uterus","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POMDT, Post-chemo FIGO staging for cancer of the ovary","Post-chemo FIGO staging for cancer of the ovary","Coded","Misc",false);


#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Complete response","Complete response","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,">= 30% partial response",">= 30% partial response","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"<= 30% partial response","<= 30% partial response","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stable disease","Stable disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Progressive disease","Progressive disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Surgery","Surgery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chemotherapy follow up","Chemotherapy follow up","N/A","Misc",false);








