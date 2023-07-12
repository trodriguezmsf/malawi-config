set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Discharge date","Discharge date","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Date of Foley catheter removal","Date of Foley catheter removal","Date","Misc",false);

#Add Date/time Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Date/Time recorded","Date/Time recorded","Datetime","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, VAS score","VAS score","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Post-void residual","Post-void residual","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "IPDA, VAS score" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),10,NULL,NULL,-0.0000000001,NULL,NULL,"",0,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "IPDA, Post-void residual" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),999,NULL,NULL,-0.0000000001,NULL,NULL,"ml",0,1);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Main Complain","Main Complain","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Neurological examination","Neurological examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Cardiac examination","Cardiac examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Urogenital examination","Urogenital examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Extremities examination","Extremities examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Skin examination","Skin examination","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Complication (non coded)","Complication (non coded)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Complication comment","Complication comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Treatment plan","Treatment plan","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Next appointment to be scheduled","Next appointment to be scheduled","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Comment on process of discharge","Comment on process of discharge","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Respiratory system","Respiratory system","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Abdominal examination","Abdominal examination","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Wound site","Wound site","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Surgical wound status","Surgical wound status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Patient complication","Patient complication","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Clavien Dindo classification","Clavien Dindo classification","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Transfusion","Transfusion","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Level of infection","Level of infection","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, SSI treatment","SSI treatment","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Antibiotic adverse reaction description","Antibiotic adverse reaction description","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Anaesthetic complication description","Anaesthetic complication description","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Pressure ulcer description","Pressure ulcer description","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, NYHA Heart failure classification","NYHA Heart failure classification","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Fistula descripton","Fistula descripton","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Patient condition","Patient condition","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Discharged","Discharged","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Exit status","Exit status","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPDA, Insertion of Foley catheter","Insertion of Foley catheter","Coded","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"1.Anemia due to acute blood loss","1.Anemia due to acute blood loss","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"2.Flap Necrosis","2.Flap Necrosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"3.Surgical Site Infection","3.Surgical Site Infection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"4.Antibiotic Adverse Reaction","4.Antibiotic Adverse Reaction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"5.Pressure Ulcer","5.Pressure Ulcer","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"6.Evisceration","6.Evisceration","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"7.Wound Dehiscence","7.Wound Dehiscence","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"8.Fistula","8.Fistula","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"9.Heart failure","9.Heart failure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"10.Cardiac Oedema","10.Cardiac Oedema","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"11.Cardiac Arrhythmia","11.Cardiac Arrhythmia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"12.Acute pulmonary edema","12.Acute pulmonary edema","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"13.Acute renal failure","13.Acute renal failure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"14.Unanticipated Return to Surgery","14.Unanticipated Return to Surgery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"15.Acute respiratory distress","15.Acute respiratory distress","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"16.Acute respiratory failure","16.Acute respiratory failure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"17.Anesthetic complication","17.Anesthetic complication","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"18.Acute Kidney Injury","18.Acute Kidney Injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"19.Cellulitis","19.Cellulitis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"20.Cardiac arrest","20.Cardiac arrest","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"21.Cardiogenic pulmonary edema","21.Cardiogenic pulmonary edema","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"22.Cardiogenic shock","22.Cardiogenic shock","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"23.Catheter related bloodstream infection","23.Catheter related bloodstream infection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"24.Central catheter complication","24.Central catheter complication","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"25.Acute Cholecystitis","25.Acute Cholecystitis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"26.Confusion","26.Confusion","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"27.Convulsions","27.Convulsions","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"28.Death","28.Death","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"29.Deep Venous Thrombosis","29.Deep Venous Thrombosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"30.Dehydration","30.Dehydration","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"31.Diabetes with ketoacidosis","31.Diabetes with ketoacidosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"32.Hyperosmolar hyperglicemic state","32.Hyperosmolar hyperglicemic state","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"33.Hematoma (surgical site)","33.Hematoma (surgical site)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"34.Implanted port complication","34.Implanted port complication","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"35.Catheter associated urinary infection","35.Catheter associated urinary infection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"36.Implant Removal unintended","36.Implant Removal unintended","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"37.Nerve Injury","37.Nerve Injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"38.Neuropraxia","38.Neuropraxia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"39.PICC line Occlusion","39.PICC line Occlusion","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"40.PICC-related DVT","40.PICC-related DVT","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"41.PICC-related Thrombophlebitis","41.PICC-related Thrombophlebitis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"42.Pneumonia","42.Pneumonia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"43.Pulmonary Embolus","43.Pulmonary Embolus","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"44.Stress Ulcer","44.Stress Ulcer","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"45.Stroke","45.Stroke","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"46.Venous thrombosis due to PICC","46.Venous thrombosis due to PICC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"47.Vascular Injury","47.Vascular Injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"48.Post-operative nerve impairment","48.Post-operative nerve impairment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"49.Other","49.Other","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stage 1","Stage 1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stage 2","Stage 2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stage 3","Stage 3","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stage 4","Stage 4","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade I","Grade I","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade II","Grade II","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade IIIa","Grade IIIa","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade IIIb","Grade IIIb","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade IVa","Grade IVa","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade IVb","Grade IVb","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade V","Grade V","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Acute kidney injury","Acute kidney injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bowel sounds","Bowel sounds","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Antibiotic therapy","Antibiotic therapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Urogenital fistula","Urogenital fistula","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Improved","Improved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Drainage","Drainage","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Deep Incisional","Deep Incisional","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stable","Stable","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Clean","Clean","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Debridement","Debridement","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Febrile reaction","Febrile reaction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hermatomegaly","Hermatomegaly","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Superficial Incisional","Superficial Incisional","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Abdominal scars","Abdominal scars","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anaphylaxis","Anaphylaxis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Removal of material","Removal of material","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rash","Rash","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Tenderness","Tenderness","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Contaminated","Contaminated","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Clean-contaminated","Clean-contaminated","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Organ Space Infection","Organ Space Infection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dirty infected","Dirty infected","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Graft","Graft","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Severe nausea and vomiting","Severe nausea and vomiting","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rectal fistula","Rectal fistula","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Worse","Worse","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Discharged home","Discharged home","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Discharged against medical advice","Discharged against medical advice","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Referred","Referred","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "IPDA, Clavien Dindo classification" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Grade I - No treatment, Grade II - Requiring drug treatment,  Grade IIIa - Interventions with local anaesthesia, Grade IIIb - Interventions under general anaesthesia, Grade IVa - Single-organ dysfunction, Grade IVb - Multi-organ dysfunction, Grade V - Death of patient","en",1,now(),NULL,NULL,uuid());
