set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Date/time recorded","Date recorded","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Reason for presentation","Reason for presentation","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Other/Description Vulva and Vagina examination, comment","Other/Description Vulva & Vagina examination, comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Aceto-white areas, Localisation","Aceto-white areas, Localisation","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Aceto-white areas, Description","Aceto-white areas, Description","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Other lesion, Localisation","Other lesion, Localisation","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Other lesion, Description","Other lesion, Description","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Biopsy localisation detail","Biopsy localisation detail","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Aceto-white areas, Size","Aceto-white areas, Size","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Other lesion, Size","Other lesion, Size","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Vulva and Vagina examination","Vulva & Vagina examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Cervix visibility","Cervix visibility","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Colposcopic findings","Colposcopic findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Colposcopy impression","Colposcopy impression","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Procedure performed","Procedure performed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Biopsy localisation","Biopsy localisation","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Biopsies, Number of specimen(s) collected","Biopsies, Number of specimen(s) collected","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CS, Date of appointment for results in","Date of appointment for results in","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "CS, Biopsies, Number of specimen(s) collected" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "CS, Date of appointment for results in" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"weeks",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other lesion","Other lesion","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HSIL","HSIL","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vulva condyloma acuminata","Vulva condyloma acuminata","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Biopsy of cervix","Biopsy of cervix","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Curettage of endocervix","Curettage of endocervix","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vaginal condyloma acuminata","Vaginal condyloma acuminata","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Biopsy of endocervix","Biopsy of endocervix","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer suspected","Cancer suspected","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not fully visualised","Not fully visualised","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Benign","Benign","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LSIL","LSIL","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Aceto-white areas","Aceto-white areas","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Fully visualised","Fully visualised","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"At lesion","At lesion","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"At SCJ","At SCJ","N/A","Misc",false);
