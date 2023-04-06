set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Date of surgery","Date of surgery","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Date of suture removal","Date of suture removal","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Foley removal date","Foley removal date","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Surgeon","Surgeon","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Anesthetist","Anesthetist","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Nursing team","Nursing team","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Procedure planned,other","Procedure planned,other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Frozen section diagnosis","Frozen section diagnosis","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Tumor involvement, other","Tumor involvement, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Procedure performed, other","Procedure performed, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Site of drain","Site of drain","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Intraoperative complication,other","Intraoperative complication,other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Comments","Comments","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, ECOG Performance Status","ECOG Performance Status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Type of tumor","Type of tumor","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Indiction of surgery","Indiction of surgery","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Procedure planned","Procedure planned","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Surgical approach","Surgical approach","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Abdominal exploration","Abdominal exploration","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Volume of ascites","Volume of ascites","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Tumor involvement","Tumor involvement","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Central","Pre-surgery Central","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Right upper","Pre-surgery Right upper","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Epigastrium","Pre-surgery Epigastrium","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Left upper","Pre-surgery Left upper","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Left blank","Pre-surgery Left blank","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Left lower","Pre-surgery Left lower","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Pelvis","Pre-surgery Pelvis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Right lower","Pre-surgery Right lower","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Right flank","Pre-surgery Right flank","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Upper jejunum","Pre-surgery Upper jejunum","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery lower jejunum","Pre-surgery lower jejunum","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Upper ileum","Pre-surgery Upper ileum","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Lower ileum","Pre-surgery Lower ileum","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Interaortocava","Pre-surgery Interaortocava","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Porta hepatis","Pre-surgery Porta hepatis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Celiac axis","Pre-surgery Celiac axis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Suprarenal/Splenic","Pre-surgery Suprarenal/Splenic","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Left aortic","Pre-surgery Left aortic","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Left external iliac","Pre-surgery Left external iliac","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Left inguinal","Pre-surgery Left inguinal","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Right inguinal","Pre-surgery Right inguinal","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Right external iliac","Pre-surgery Right external iliac","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Right common iliac","Pre-surgery Right common iliac","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Pre-paracava","Pre-surgery Pre-paracava","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Right cardio phrenic","Pre-surgery Right cardio phrenic","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery Left cardio phrenic","Pre-surgery Left cardio phrenic","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Procedure performed","Procedure performed","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Classification of stoma","Classification of stoma","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Residual disease","Residual disease","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Location of residual disease","Location of residual disease","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Central","Post-surgery Central","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Right upper","Post-surgery Right upper","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Epigastrium","Post-surgery Epigastrium","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Left upper","Post-surgery Left upper","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Left blank","Post-surgery Left blank","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Left lower","Post-surgery Left lower","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Pelvis","Post-surgery Pelvis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Right lower","Post-surgery Right lower","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Right flank","Post-surgery Right flank","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Upper jejunum","Post-surgery Upper jejunum","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Upper ileum","Post-surgery Upper ileum","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Lower ileum","Post-surgery Lower ileum","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Interaortocava","Post-surgery Interaortocava","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Porta hepatis","Post-surgery Porta hepatis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Celiac axis","Post-surgery Celiac axis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Suprarenal/Splenic","Post-surgery Suprarenal/Splenic","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Left aortic","Post-surgery Left aortic","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Left external iliac","Post-surgery Left external iliac","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Left inguinal","Post-surgery Left inguinal","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Right inguinal","Post-surgery Right inguinal","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Right external iliac","Post-surgery Right external iliac","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Right common iliac","Post-surgery Right common iliac","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Pre-paracava","Post-surgery Pre-paracava","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Right cardio phrenic","Post-surgery Right cardio phrenic","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery Left cardio phrenic","Post-surgery Left cardio phrenic","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Device in place","Device in place","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Intraoperative complication","Intraoperative complication","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Transfusion","Transfusion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Surgical count","Surgical count","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Missing element","Missing element","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Abdominal wall closure","Abdominal wall closure","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Ca-125 UI/ml at surgery","Ca-125 UI/ml at surgery","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Pre-surgery PCI","Pre-surgery PCI","Numeric","Computed",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Number of anastomoses","Number of anastomoses","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Residual small bowel","Residual small bowel","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Post-surgery PCI","Post-surgery PCI","Numeric","Computed",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Estimated blood loss","Estimated blood loss","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "OV, Ca-125 UI/ml at surgery" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "OV, Pre-surgery PCI" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "OV, Number of anastomoses" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),5,NULL,NULL,-0.1,NULL,NULL,"",0,0);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "OV, Residual small bowel" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"cm",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery PCI" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "OV, Estimated blood loss" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"L",1,1);

#Add Time Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, Start time of operation","Start time of operation","Datetime","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OV, End time of operation","End time of operation","Datetime","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Tumor up to 0.5cm = 1","Tumor up to 0.5cm = 1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bladder","Bladder","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diffuse serosal","Diffuse serosal","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anesthetic complication in OT","Anesthetic complication in OT","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Less than 500ml","Less than 500ml","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Partial pancreatectomy","Partial pancreatectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pelvic peritonectomy","Pelvic peritonectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Temporary","Temporary","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Appendicectomy","Appendicectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anemia due to acute blood loss","Anemia due to acute blood loss","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lesser omentum","Lesser omentum","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vascular Injury","Vascular Injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Left tube","Left tube","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No tumor seen = 0","No tumor seen = 0","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radical omentectomy","Radical omentectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Large bowel resection","Large bowel resection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Right tube","Right tube","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"2ry debulking","2ry debulking","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Uterus","Uterus","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Recto-vaginal septum","Recto-vaginal septum","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Right gutter","Right gutter","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cardiac Arrhythmia","Cardiac Arrhythmia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nasogastric tube","Nasogastric tube","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Foley catheter","Foley catheter","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hysterectomy","Hysterectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Liver parenchymal","Liver parenchymal","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Tumor > 5cm or confluence = 3","Tumor > 5cm or confluence = 3","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chest tube","Chest tube","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"More than 500ml","More than 500ml","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Staging","Staging","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Small bowel","Small bowel","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Abdominal wall","Abdominal wall","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Liver","Liver","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Primary tumor","Primary tumor","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Redebulking after recent primary surgery","Redebulking after recent primary surgery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Laparoscopy","Laparoscopy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cholecystectomy","Cholecystectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Paraaortic nodes","Paraaortic nodes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stomach","Stomach","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Partial hepatectomy","Partial hepatectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Gastrostomy","Gastrostomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Incorrect","Incorrect","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Right ovary","Right ovary","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Peritonectomy gutters","Peritonectomy gutters","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Left ovary","Left ovary","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bladder injury","Bladder injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nerve injury","Nerve injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Residual disease=R+","Residual disease=R+","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diagnostic procedure-biopsies","Diagnostic procedure-biopsies","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Celiac nodes","Celiac nodes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Omentum","Omentum","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Palliative","Palliative","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hepatic hilum","Hepatic hilum","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diaphragmatic resection","Diaphragmatic resection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Definitive","Definitive","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Splenectomy","Splenectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Tumor up to 5cm = 2","Tumor up to 5cm = 2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Spleen","Spleen","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"3rd debulking","3rd debulking","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Small bowel resection","Small bowel resection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Digestive injury","Digestive injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Colostomy","Colostomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Large bowel mesentery","Large bowel mesentery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Skin","Skin","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unilateral salpingo-oophorectomy","Unilateral salpingo-oophorectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diagnosis","Diagnosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Gauze","Gauze","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Laparotomy","Laparotomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Endotracheal tube","Endotracheal tube","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Large bowel","Large bowel","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Peritonectomy Morrison","Peritonectomy Morrison","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ureter injury","Ureter injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Absorbable running suture","Absorbable running suture","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Colorectal resection","Colorectal resection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Inguinal nodes","Inguinal nodes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Emergency","Emergency","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suspicion","Suspicion","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Infracolic omentectomy","Infracolic omentectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Correct","Correct","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Non absorbable interrupted suture","Non absorbable interrupted suture","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pancreas","Pancreas","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Supradiaphragmatic","Supradiaphragmatic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"4th debulking","4th debulking","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Needle","Needle","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Left diaphragm","Left diaphragm","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hepatic hilum nodes","Hepatic hilum nodes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"0.1-0.5cm","0.1-0.5cm","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No residual disease=R0","No residual disease=R0","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Recurrent tumor","Recurrent tumor","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Left gutter","Left gutter","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Resection lesser omentum","Resection lesser omentum","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Intraoperative death","Intraoperative death","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"0.6-1cm","0.6-1cm","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Liver capsule resection","Liver capsule resection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Atypical liver resection","Atypical liver resection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Partial gastrectomy","Partial gastrectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Celiac axis","Celiac axis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Instrument","Instrument","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Breach of sterility","Breach of sterility","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Liver surface","Liver surface","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Interval debulking surgery after NACT","Interval debulking surgery after NACT","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No macroscopic","No macroscopic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pelvic nodes","Pelvic nodes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pelvic wall","Pelvic wall","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Metastases","Metastases","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Small bowel mesentery","Small bowel mesentery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"more than 1cm","more than 1cm","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ureteral resection","Ureteral resection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Jejunostomy","Jejunostomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suction drain","Suction drain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Passive drain","Passive drain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Sigmoid-rectum","Sigmoid-rectum","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Primary surgical staging","Primary surgical staging","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Peri-operative myocardial infarction","Peri-operative myocardial infarction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Appendix","Appendix","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Primary debulking","Primary debulking","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Partial cystectomy","Partial cystectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ileostomy","Ileostomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pericardiophrenic nodes","Pericardiophrenic nodes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Douglas","Douglas","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Right diaphragm","Right diaphragm","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cytoreduction","Cytoreduction","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, ECOG Performance Status" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0), 
"0: Fully active, able to carry on all pre-disease performance without restriction 1: Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, 2: Ambulatory and capable of all self-care but unable to carry out any work activities. Up and about more than 50% of waking hours 3: Capable of only limited self-care, confined to bed or chair more than 50% of waking hours 4: Completely disabled. Cannot carry out any selfcare; totally confined to bed or chair 5: Dead","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Interaortocava" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Porta hepatis" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Celiac axis" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Suprarenal/Splenic" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Left aortic" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Left external iliac" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Left inguinal" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Right inguinal" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Right external iliac" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Right common iliac" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Pre-paracava" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Right cardio phrenic" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "OV, Post-surgery Left cardio phrenic" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"R+ = Residual disease, R0 = No residual disease","en",1,now(),NULL,NULL,uuid());
