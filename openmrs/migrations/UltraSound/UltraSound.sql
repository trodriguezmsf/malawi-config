set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Date recorded","Date recorded","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Right ovary description","Right ovary description","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Right ovary, comments","Right ovary, comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Left ovary description","Left ovary description","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Left ovary, comments","Left ovary, comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Comments","Comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Other findings","Other findings","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Lymph node ultrasound findings, other","Lymph node ultrasound findings, other","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Tumour criteria","Tumour criteria","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Parametrial invasion","Parametrial invasion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Left ovary","Left ovary","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Right ovary","Right ovary","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Right ovary, B-features","Right ovary, B-features","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Right ovary, M-features","Right ovary, M-features","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Right ovary, IOTA-classification","Right ovary, IOTA-classification","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Left ovary, B-features","Left ovary, B-features","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Left ovary, M-features","Left ovary, M-features","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Left ovary, IOTA-classification","Left ovary, IOTA-classification","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Pelvic ascites (abdominal transducer)","Pelvic ascites (abdominal transducer)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Kidney position","Kidney position","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Renal ultrasound findings","Renal ultrasound findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Hydroureter laterality","Hydroureter laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Hydronephrosis laterality","Hydronephrosis laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Hydronephrosis grading","Hydronephrosis grading","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Lymph node ultrasound findings","Lymph node ultrasound findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Lymph node laterality","Lymph node laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Ultrasound FIGO staging","Ultrasound FIGO staging","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Parametrial invasion laterality","Parametrial invasion laterality","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Longitudinal diameter","Longitudinal diameter","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Anteroposterior (AP) diameter","Anteroposterior (AP) diameter","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Transversal diameter","Transversal diameter","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Endometrial thickness","Endometrial thickness","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Tumour largest diameter","Tumour largest diameter","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Right ovary length","Right ovary length","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Right ovary width","Right ovary width","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Right ovary thickness","Right ovary thickness","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Left ovary length","Left ovary length","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Left ovary width","Left ovary width","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Left ovary thickness","Left ovary thickness","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"UR, Ureter maximum diameter","Ureter maximum diameter","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Longitudinal diameter" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Anteroposterior (AP) diameter" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Transversal diameter" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Endometrial thickness" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Tumour largest diameter" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Right ovary length" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Right ovary width" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Right ovary thickness" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Left ovary length" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Left ovary width" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Left ovary thickness" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "UR, Ureter maximum diameter" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"mm",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IB1","IB1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"At least 4 papillary structures","At least 4 papillary structures","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hydroureter","Hydroureter","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IB2","IB2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIB","IIB","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IA","IA","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IVB","IVB","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IB","IB","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade 2 (mild)","Grade 2 (mild)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIC2","IIIC2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Smooth multilocular tumour with largest diameter >100 mm","Smooth multilocular tumour with largest diameter >100 mm","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"II","II","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Solid components with largest diameter less than 7 mm","Solid components with largest diameter < 7 mm","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Presence of acoustic shadows","Presence of acoustic shadows","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Solid","Solid","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IC","IC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIA2","IIA2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No blood flow","No blood flow","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IA1","IA1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIB","IIIB","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Smooth multilocular tumour with largest diameter less than 100 mm","Smooth multilocular tumour with largest diameter < 100 mm","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Very strong blood flow","Very strong blood flow","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIA","IIIA","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not involved","Not involved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Involved","Involved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Left pelvic lymphadenopathy","Left pelvic lymphadenopathy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade 4 (severe)","Grade 4 (severe)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade 3 (moderate)","Grade 3 (moderate)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIIC1","IIIC1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Inconclusive","Inconclusive","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Heterogenous","Heterogenous","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Para-aortic lymphadenopathy","Para-aortic lymphadenopathy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hydronephrosis","Hydronephrosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unicolar","Unicolar","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Right pelvic lymphadenopathy","Right pelvic lymphadenopathy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IVA","IVA","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"III","III","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bilateral pelvic lymphadenopathy","Bilateral pelvic lymphadenopathy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Presence of ascites","Presence of ascites","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Irregular solid tumour","Irregular solid tumour","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vascular","Vascular","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIA","IIA","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Left","Left","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade 1 (minimal)","Grade 1 (minimal)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypoechoic","Hypoechoic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Right","Right","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IA2","IA2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malignant","Malignant","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Abnormal","Abnormal","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IB3","IB3","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IIA1","IIA1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bilateral","Bilateral","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "UR, Right ovary, IOTA-classification" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Only B-features apply to benign, Only M-features apply to malignancy, No features apply or both B- and M-features apply to inconclusive","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "UR, Left ovary, IOTA-classification" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Only B-features apply to benign, Only M-features apply to malignancy, No features apply or both B- and M-features apply to inconclusive","en",1,now(),NULL,NULL,uuid());
