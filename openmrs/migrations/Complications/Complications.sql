set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

# Adding coded answers
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Anaesthetic complication in OT, description","Anaesthetic complication in OT, description","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Anemia due to acute blood loss, description","Anemia due to acute blood loss, description","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Antibiotic","Antibiotic","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Antibiotic adverse reaction, description","Antibiotic adverse reaction, description","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Any intervention(s) or surgeries prior to initial MSF surgery?","Any intervention(s) or surgeries prior to initial MSF surgery?","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Cardiac arrhythmia, description","Cardiac arrhythmia, description","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Delay between surgery and initial signs","Delay between surgery and initial signs","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Did SSI develop while under MSF medical care?","Did SSI develop while under MSF medical care?","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, During hospitalization or after discharge?","During hospitalization or after discharge?","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Flap necrosis, description","Flap necrosis, description","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Grade of complication","Grade of complication","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Level of infection","Level of infection","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Outcome of complication","Outcome of complication","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Patient complication","Patient complication","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Preparation","Preparation","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, SSI, Surgical treatment","SSI, Surgical treatment","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Specimen sent to lab?","Specimen sent to lab?","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Stress ulcer, description","Stress ulcer, description","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Treatment","Treatment","Coded","Question",false);

# Adding date concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, End date of complication","End date of complication","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Start date of complication","Start date of complication","Date","Misc",false);

# Adding Text concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Additional comments, complications","Additional comments, complications","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Anaesthetic complication in OT, other","Anaesthetic complication in OT, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Antibiotic adverse reaction, other","Antibiotic adverse reaction, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Cardiac arrhythmia, other","Cardiac arrhythmia, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Description of complication","Description of complication","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Intervention(s) or surgeries prior to initial MSF surgery, describe","Intervention(s) or surgeries prior to initial MSF surgery, describe","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Patient complication, other","Patient complication, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Specimen, other","Specimen, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CM, Surgical treatment, describe","Surgical treatment, describe","Text","Misc",false);


#Add Helptext to concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "CM, Grade of complication" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),"Clavien-Dindo System:  Grade I: Any deviation from the normal post-operative course not requiring surgical, endoscopic or radiological intervention. This includes the need for certain drugs (e.g. antiemetics, antipyretics, analgesics, diuretics and electrolytes), treatment with physiotherapy and wound infections that are opened at the bedside.  Grade II:  Complications requiring drug treatments other than those allowed for Grade I complications; this includes blood transfusion and total parenteral nutrition (TPN).  Grade IIIa:  Complications requiring surgical, endoscopic or radiological intervention not under general anaesthesia.  Grade IIIb:  Complications requiring surgical, endoscopic or radiological intervention under general anaesthesia.  Grade IVa:  Single organ dysfunction, life-threatening complications; this includes CNS complications (e.g. brain haemorrhage, ischaemic stroke, subarachnoid haemorrhage) which require intensive care, but excludes transient ischaemic attacks (TIAs).  Grade IVb: Multi-organ dysfunction, life-threatening complications; this includes CNS complications (e.g. brain haemorrhage, ischaemic stroke, subarachnoid haemorrhage) which require intensive care, but excludes transient ischaemic attacks (TIAs).  Grade V: Death of patient.",'en',1,now(),NULL,NULL,uuid());


#Add child concepts

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"< 6h","< 6h","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"> 6h","> 6h","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ATB prophylaxis","ATB prophylaxis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Acute kidney injury","Acute kidney injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"After discharge","After discharge","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anaesthetic complication in OT","Anaesthetic complication in OT","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anemia due to acute blood loss","Anemia due to acute blood loss","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Antibiotic adverse reaction","Antibiotic adverse reaction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Aspiration","Aspiration","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Atrial fibrillation","Atrial fibrillation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bladder Injury","Bladder Injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Blood culture","Blood culture","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bone","Bone","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bowel Injury","Bowel Injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cardiac Arrhythmia","Cardiac Arrhythmia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Catheter","Catheter","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cellulitis","Cellulitis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Deep","Deep","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Deep Venous Thrombosis","Deep Venous Thrombosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Deep infection","Deep infection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"During hospitalization","During hospitalization","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Febrile reaction","Febrile reaction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Flap necrosis","Flap necrosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Full-thickness","Full-thickness","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade I - No treatment","Grade I - No treatment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade II - Requiring drug treatment","Grade II - Requiring drug treatment","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade IIIa - Interventions with local anaesthesia","Grade IIIa - Interventions with local anaesthesia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade IIIb - Interventions under general anaesthesia","Grade IIIb - Interventions under general anaesthesia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade IVa - Single-organ dysfunction","Grade IVa - Single-organ dysfunction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade IVb - Multi-organ dysfunction","Grade IVb - Multi-organ dysfunction","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Grade V - Death of patient","Grade V - Death of patient","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Heart Failure","Heart Failure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hematoma, surgical site","Hematoma, surgical site","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypoxia","Hypoxia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IPD","IPD","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Myocardial infarction, peri-operative","Myocardial infarction, peri-operative","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nerve injury","Nerve injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Neutropenia","Neutropenia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No transfusion","No transfusion","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not applicable","Not applicable","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"OPD","OPD","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pneumonia","Pneumonia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pneumonia, post-operative","Pneumonia, post-operative","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pre operative shower","Pre operative shower","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pulmonary Embolus","Pulmonary Embolus","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Recto-fistula","Recto-fistula","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Resolved","Resolved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not Resolved","Not Resolved","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"SVT","SVT","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Severe nausea and vomiting","Severe nausea and vomiting","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Skin graft failure","Skin graft failure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Skin preparation in the OT","Skin preparation in the OT","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Spinal headache","Spinal headache","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stage 1","Stage 1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stage 2","Stage 2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stage 3","Stage 3","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stage 4","Stage 4","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stool","Stool","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stress ulcer","Stress ulcer","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Stroke","Stroke","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Superficial","Superficial","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Superficial incisional infection","Superficial incisional infection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Surgical Site Infection","Surgical Site Infection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thrombocytopenia","Thrombocytopenia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Tissue","Tissue","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Transfusion required","Transfusion required","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Treatment initiated based on culture and sensitivity","Treatment initiated based on culture and sensitivity","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Treatment initiated empirically","Treatment initiated empirically","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unanticipated return to surgery within 3 days","Unanticipated return to surgery within 3 days","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unanticipated return to surgery within 30 days","Unanticipated return to surgery within 30 days","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ureter Injury","Ureter Injury","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Urine","Urine","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Urological fistula","Urological fistula","N/A","Misc",false);


