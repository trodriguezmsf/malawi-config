set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Date recorded","Date recorded","Date","Misc",false);

#Add Datetime Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Time for removal of tampon","Time for removal of tampon","Datetime","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Other LEEP indication, specify","Other LEEP indication, specify","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Localisation of passes","Localisation of passes","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Bleeding control technique, other","Bleeding control technique, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Complication of procedure (text)","Complication of procedure","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Instructions","Instructions","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Prescription, other","Prescription, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Other conization indication, specify","Other conization indication, specify","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Comments","Comments","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, LEEP Indication","LEEP Indication","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Urine Pregnancy Test","Urine Pregnancy Test","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Informed consent","Informed consent","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Cervix examination","Cervix examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Drug injected for local anaesthesia","Drug injected for local anaesthesia","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Type of pass","Type of pass","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Endocervical curettage performed","Endocervical curettage performed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Specimen marked at 12 o’clock (suture)","Specimen marked at 12 o’clock (suture)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Bleeding control technique","Bleeding control technique","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Complication of procedure","Complication of procedure","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Warning signs explained","Warning signs explained","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Prescription","Prescription","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Conization indication","Conization indication","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Insertion of tampon into vagina","Insertion of tampon into vagina","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Administered dose","Administered dose","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Number of passes","Number of passes","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Estimated blood loss","Estimated blood loss","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LP, Appointment needed","Appointment needed","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LP, Administered dose" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"ml",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LP, Number of passes" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LP, Estimated blood loss" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "LP, Appointment needed" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"weeks",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ibuprofen 400 mg tid for three days","Ibuprofen 400 mg tid for three days","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Single Pass","Single Pass","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Full extent of lesion seen","Full extent of lesion seen","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suture of cervix","Suture of cervix","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suspected HSIL with SCJ not fully visualized","Suspected HSIL with SCJ not fully visualized","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other indication","Other indication","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lidocaine 2 percentage/Epinephrine","Lidocaine 2%/Epinephrine","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suspected HSIL with lesion extending into cervical canal","Suspected HSIL with lesion extending into cervical canal","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lesion extending into the endocervical canal","Lesion extending into the endocervical canal","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ball electrode","Ball electrode","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suspected HSIL with lesion > 75 percentage of cervical surface","Suspected HSIL with lesion > 75% of cervical surface","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Monsel's solution","Monsel's solution","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lidocaine 1 percentage","Lidocaine 1%","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Multiple Pass","Multiple Pass","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CIN II","CIN II","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CIN III","CIN III","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "LP, Informed consent" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Risk of procedure and alternatives have been explained to the patient, and the patient has signed the LEEP/Conization consent form","en",1,now(),NULL,NULL,uuid());
