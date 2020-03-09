set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

# Add Coded Question concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Type of Anaesthesia used","Type of Anaesthesia used",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Topography of the tumor","Topography of the tumor",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Morphology","Morphology",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Operation performed in the OT","Operation performed in the OT",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Lymphovascular space invasion","Lymphovascular space invasion",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Surgical Approach","Surgical Approach",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Abdominal exploration","Abdominal exploration",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Lymph node dissection","Lymph node dissection",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Ovaries Removal","Ovaries Removal",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Ureters","Ureters",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Bladder","Bladder",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Rectum","Rectum",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Lateral parametrium","Lateral parametrium",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Ventral parametrium","Ventral parametrium",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Dorsal parametrium","Dorsal parametrium",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Type of hysterectomy on right side","Type of hysterectomy on right side",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Type of hysterectomy on left side","Type of hysterectomy on left side",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Abdominal wall closure","Abdominal wall closure",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Exact gauze count","Exact gauze count",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Does the patient have a drain?","Does the patient have a drain?",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Specimen sent to lab","Specimen sent to lab",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Blood transfusion","Blood transfusion",'coded','Question',false);

# Add Date Question concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Time started","Time started",'DateTime','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Time ended","Time ended",'DateTime','Misc',false);

# Add Text Question concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Surgeon","Surgeon",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Surgeon assistant","Surgeon assistant",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Second surgeon assistant","Second surgeon assistant",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Scrub nurse","Scrub nurse",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Anaesthetist","Anaesthetist",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Anaesthesia technician","Anaesthesia technician",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Topography of the tumor, other","Topography of the tumor, other",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Morphology, other","Morphology, other",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, FIGO Staging","FIGO Staging",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Surgical Approach, other","Surgical Approach, other",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Metastasis, comments","Metastasis, comments",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Name of procedure","Name of procedure",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Indication","Indication",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Findings and technique","Findings and technique",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Operation details","Operation details",'Text','Misc',false);

# Add Numeric Question concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Estimated blood loss","Estimated blood loss",'Numeric','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Number of units","Number of units",'Numeric','Misc',false);


INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "OR, Estimated blood loss" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"ml",1,1);

INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "OR, Number of units" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);

# Add Answer concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"GAI","GAI",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"GAO","GAO",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"GAL","GAL",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"RSA","RSA",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"RPX","RPX",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"RTA","RTA",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"RAO","RAO",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SED","SED",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"INF","INF",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"LOA","LOA",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"C51 vulva","C51 vulva",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"C52 vagina","C52 vagina",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"C53 cervix uteri","C53 cervix uteri",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"C54 corpus uteri","C54 corpus uteri",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"C56 ovary","C56 ovary",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"C57 other female genital organs","C57 other female genital organs",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"C58.9 placenta","C58.9 placenta",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"C48 retroperitoneum and peritoneum","C48 retroperitoneum and peritoneum",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Squamous cell carcinoma","Squamous cell carcinoma",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Adenocarcinoma","Adenocarcinoma",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Adenosquamous carcinoma","Adenosquamous carcinoma",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unknown","Unknown",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Transverse laparotomy","Transverse laparotomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Midline laparotomy","Midline laparotomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Transvaginal hysterectomy","Transvaginal hysterectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Normal","Normal",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suspected pelvic involvement","Suspected pelvic involvement",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unequivocal pelvic involvement","Unequivocal pelvic involvement",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suspect para-aortic involvement","Suspect para-aortic involvement",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unequivocal para-aortic involvement","Unequivocal para-aortic involvement",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Carcinomatosis","Carcinomatosis",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Metastasis","Metastasis",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pelvic lymphadenectomy","Pelvic lymphadenectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Para-aortic lymphadenectomy","Para-aortic lymphadenectomy",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not mobilized","Not mobilized",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Opening of the ureteric tunnel only","Opening of the ureteric tunnel only",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Full mobilization","Full mobilization",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilized to base of the cervix","Mobilized to base of the cervix",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilized to upper vagina","Mobilized to upper vagina",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilized to middle vagina","Mobilized to middle vagina",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilized below cervix","Mobilized below cervix",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mobilized below middle vagina","Mobilized below middle vagina",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Half way between cervix and ureter","Half way between cervix and ureter",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"At the level of the ureteral bed","At the level of the ureteral bed",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"At iliac vessels with nerve preservation","At iliac vessels with nerve preservation",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"At iliac vessels without nerve preservation","At iliac vessels without nerve preservation",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Partial excision of the vesico-uterine ligament","Partial excision of the vesico-uterine ligament",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Complete excision of the vesico-uterine ligament","Complete excision of the vesico-uterine ligament",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Excision of the vesico-vaginal ligament with nerve sparing","Excision of the vesico-vaginal ligament with nerve sparing",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Excision of the vesico-vaginal ligament without nerve sparing","Excision of the vesico-vaginal ligament without nerve sparing",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Minimal excision","Minimal excision",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Partial resection of the rectouterine-rectovaginal ligament and uterosacral peritoneal fold","Partial resection of the rectouterine-rectovaginal ligament and uterosacral peritoneal fold",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"At the rectum, nerve spared","At the rectum, nerve spared",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"At the rectum, without nerve sparing","At the rectum, without nerve sparing",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Type A","Type A",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Type B1","Type B1",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Type B2","Type B2",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Type C1","Type C1",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Type C2","Type C2",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Absorbable running suture","Absorbable running suture",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Interrupted sutures","Interrupted sutures",'N/A','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Image Upload","Image Upload",'Complex','Image',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OR, Video Upload","Video Upload",'Complex','Video',false);



# Add description to the concepts (help text)

INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES
((select concept_id from concept_name where name = "OR, Type of Anaesthesia used" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),
 'GAI: GA with intubation/GAO: GA with nothing or facial mask/GAL: GA with laryngeal mask/RSA: Spinal/RPX: Plexic or Troncular (Axillary/Femoral/Sciatic) / RTA: Transverse Abdominal Plane Bloc/ RAO: Other Regional Technique/  SED: Sedation/INF: Inflitration by surgeon/ LOA: Local anesthesia','en',1,now(),NULL,NULL,uuid());

INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES
((select concept_id from concept_name where name = "OR, Topography of the tumor" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),
 'Location of the tumor','en',1,now(),NULL,NULL,uuid());

INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES
((select concept_id from concept_name where name = "OR, Morphology" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),
 'Type of histology','en',1,now(),NULL,NULL,uuid());

INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES
((select concept_id from concept_name where name = "OR, FIGO Staging" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),
 '2018 FIGO Staging criteria, clinical + ultrasound assessment','en',1,now(),NULL,NULL,uuid());
