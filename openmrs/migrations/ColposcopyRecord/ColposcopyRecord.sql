set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Assessment Date","Assessment Date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Date of appointment for results (3 weeks)","Date of appointment for results (3 weeks)","Date","Misc",false);

#Add DateTime Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Lesion Time","Lesion Time","Datetime","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, SCJ Time","SCJ Time","Datetime","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Aceto-white areas, Description","Aceto-white areas, Description","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Aceto-white areas, Location","Aceto-white areas, Location","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Cause of presentation","Cause of presentation","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Other lesion(s) present, Description","Other lesion(s) present, Description","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Other lesion(s) present, Location","Other lesion(s) present, Location","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Other/Description","Other/Description","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Aceto-white areas","Aceto-white areas","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, At SCJ","At SCJ","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, At lesion","At lesion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Cervix visibility","Cervix visibility","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Colposcopic impression","Colposcopic impression","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Endocervical biopsy","Endocervical biopsy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Endocervical curettage","Endocervical curettage","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, External condyloma acuminata","External condyloma acuminata","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Normal","Normal","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Other lesion(s) present","Other lesion(s) present","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Vaginal condyloma acuminata","Vaginal condyloma acuminata","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Aceto-white areas, Size","Aceto-white areas, Size","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Biopsies, Number","Biopsies, Number","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CR, Other lesion(s) present, Size","Other lesion(s) present, Size","Numeric","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Benign","Benign","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Fully visualized","Fully visualized","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HSIL","HSIL","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LSIL","LSIL","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Normal","Normal","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not fully visualized","Not fully visualized","N/A","Misc",false);

#Add concepts to Numeric table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)VALUES ((select concept_id from concept_name where name = "CR, Aceto-white areas, Size" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)VALUES ((select concept_id from concept_name where name = "CR, Biopsies, Number" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)VALUES ((select concept_id from concept_name where name = "CR, Other lesion(s) present, Size" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);