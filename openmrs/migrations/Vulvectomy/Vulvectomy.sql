set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Date of surgery","Date of surgery","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Foley removal date","Foley removal date","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Surgeon","Surgeon","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Anesthetist","Anesthetist","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Nursing team","Nursing team","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Indiction of surgery","Indiction of surgery","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Procedure planned,other","Procedure planned,other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Procedure performed, other","Procedure performed, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Procedure details","Procedure details","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Site of drain","Site of drain","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Intraoperative complication,other","Intraoperative complication,other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Comments","Comments","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, ECOG Performance Status","ECOG Performance Status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Type of tumor","Type of tumor","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Procedure planned","Procedure planned","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Vulva exploration findings","Vulva exploration findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Laterality","Laterality","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Procedure performed","Procedure performed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Preservation of saphenous vein","Preservation of saphenous vein","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Classification of stoma","Classification of stoma","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Device in place","Device in place","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Intraoperative complication","Intraoperative complication","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Transfusion","Transfusion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Surgical count","Surgical count","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Missing element","Missing element","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Vulva closure","Vulva closure","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Estimated blood loss","Estimated blood loss","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Extent of resection","Extent of resection","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VU, Estimated blood loss" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"L",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "VU, Extent of resection" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"mm",1,1);

#Add Datetime Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, Start time of operation","Start time of operation","Datetime","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"VU, End time of operation","End time of operation","Datetime","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Recurrent tumor","Recurrent tumor","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nasogastric tube","Nasogastric tube","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Foley catheter","Foley catheter","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"V-Y Flap","V-Y Flap","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Passive drain","Passive drain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Gauze","Gauze","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vascular Injury","Vascular Injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Primary tumor","Primary tumor","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Labium majus involvement","Labium majus involvement","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Labius minus involvement","Labius minus involvement","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Wide local excision","Wide local excision","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ileostomy","Ileostomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suction drain","Suction drain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Intraoperative death","Intraoperative death","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Incorrect","Incorrect","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Digestive injury","Digestive injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chest tube","Chest tube","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Urethral resection","Urethral resection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lotus petal flap","Lotus petal flap","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cardiac Arrhythmia","Cardiac Arrhythmia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Endotracheal tube","Endotracheal tube","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Definitive","Definitive","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Instrument","Instrument","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Breach of sterility","Breach of sterility","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Needle","Needle","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nerve injury","Nerve injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rhomboid flap","Rhomboid flap","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anesthetic complication in OT","Anesthetic complication in OT","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rectal mucosa involvement","Rectal mucosa involvement","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Correct","Correct","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Primary closure","Primary closure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Clitoris involvement","Clitoris involvement","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bartholin gland involvement","Bartholin gland involvement","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Groin lymphnode dissection","Groin lymphnode dissection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Jejunostomy","Jejunostomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ipsilateral groin lymphnode dissection","Ipsilateral groin lymphnode dissection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anemia due to acute blood loss","Anemia due to acute blood loss","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ureter injury","Ureter injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Temporary","Temporary","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Gastrostomy","Gastrostomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Peri-operative myocardial infarction","Peri-operative myocardial infarction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bladder injury","Bladder injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Colostomy","Colostomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Urethra invovlement","Urethra invovlement","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lymph node involvement","Lymph node involvement","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "VU, ECOG Performance Status" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"0: Fully active, able to carry on all pre-disease performance without restriction 1: Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, 2: Ambulatory and capable of all self-care but unable to carry out any work activities. Up and about more than 50% of waking hours
3: Capable of only limited self-care, confined to bed or chair more than 50% of waking hours 4: Completely disabled. Cannot carry out any selfcare; totally confined to bed or chair  5: Dead","en",1,now(),NULL,NULL,uuid());
