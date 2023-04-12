set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Date of surgery","Date of surgery","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Foley removal date","Foley removal date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Date of suture removal","Date of suture removal","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Surgeon","Surgeon","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Anesthetist","Anesthetist","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Nursing team","Nursing team","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Indiction of surgery","Indiction of surgery","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Procedure planned, other","Procedure planned, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Location of metastases","Location of metastases","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Procedure perfomed,other","Procedure perfomed,other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Procedure details","Procedure details","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Site of drain","Site of drain","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Intraoperative complication, other","Intraoperative complication, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Comments","Comments","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, ECOG Performance Status","ECOG Performance Status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Type of tumor","Type of tumor","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Procedure planned","Procedure planned","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Surgical approach","Surgical approach","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Abdominal exploration findings","Abdominal exploration findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Procedure performed","Procedure performed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Q-M classification on the right side","Q-M classification on the right side","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Q-M classification on the left side","Q-M classification on the left side","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Lateral parametrium extent of resection","Lateral parametrium extent of resection","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Ventral parametrium extent of resection","Ventral parametrium extent of resection","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Dorsal parametrium extent of resection","Dorsal parametrium extent of resection","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Mobilization","Mobilization","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Device in place","Device in place","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Intraoperative complication","Intraoperative complication","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Transfusion","Transfusion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Surgical count","Surgical count","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Missing element","Missing element","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Abdominal wall closure","Abdominal wall closure","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Estimated blood loss","Estimated blood loss","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "HY, Estimated blood loss" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"L",1,1);

#Add Time Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, Start time of operation","Start time of operation","Datetime","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"HY, End time of operation","End time of operation","Datetime","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilization of rectum to below middle vagina","Mobilization of rectum to below middle vagina","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ureteral bed","Ureteral bed","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Partial excision of the vesico-uterine ligament","Partial excision of the vesico-uterine ligament","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bilateral oophorectomy","Bilateral oophorectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vertical laparotomy","Vertical laparotomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Minimal","Minimal","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Partial excision of rectouterine-rectovaginal ligament","Partial excision of rectouterine-rectovaginal ligament","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bladder with nerve sparing","Bladder with nerve sparing","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rectum with nerve sparing","Rectum with nerve sparing","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lateral parametrium excision","Lateral parametrium excision","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilization of bladder to upper vagina","Mobilization of bladder to upper vagina","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pelvic lymphadenectomy","Pelvic lymphadenectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Half way between cervix and ureter","Half way between cervix and ureter","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Peritoneal carcinomatosis","Peritoneal carcinomatosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Iliac vessels","Iliac vessels","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ventral parametrium excision","Ventral parametrium excision","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Right pelvic nodes","Right pelvic nodes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilization of ureter through broad ligament","Mobilization of ureter through broad ligament","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Paracaval nodes","Paracaval nodes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Left pelvic nodes","Left pelvic nodes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilization of rectum to below the cervix","Mobilization of rectum to below the cervix","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilization of bladder to middle vagina","Mobilization of bladder to middle vagina","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lomboaortic lymphadenectomy","Lomboaortic lymphadenectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Right oophorectomy","Right oophorectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilization of bladder to base of the cervix","Mobilization of bladder to base of the cervix","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Iliac vessels transversally and caudally preserved","Iliac vessels transversally and caudally preserved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dorsal parametrium excision","Dorsal parametrium excision","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Transverse laparotomy","Transverse laparotomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Left oophorectomy","Left oophorectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rectum without nerve sparing","Rectum without nerve sparing","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bladder without nerve sparing","Bladder without nerve sparing","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Transvaginal","Transvaginal","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "HY, ECOG Performance Status" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"0: Fully active, able to carry on all pre-disease performance without restriction                                                                                                                 1: Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature,                                                                            2: Ambulatory and capable of all self-care but unable to carry out any work activities. Up and about more than 50% of waking hours
3: Capable of only limited self-care, confined to bed or chair more than 50% of waking hours                                                                              4: Completely disabled. Cannot carry out any selfcare; totally confined to bed or chair                                                                                            5: Dead","en",1,now(),NULL,NULL,uuid());
