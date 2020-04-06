set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

# Adding coded answers
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, ASA Score","ASA Score","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Adverse reaction to anaesthesia","Adverse reaction to anaesthesia","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Did an incident occur during previous blood transfusion","Did an incident occur during previous blood transfusion","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, I discussed the risks and benefits of anaesthesia and answered all questions","I discussed the risks and benefits of anaesthesia and answered all questions","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Is the patient allergic to any drugs/medications?","Is the patient allergic to any drugs/medications?","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Mallampati Class","Mallampati Class","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Outcome of initial anaesthesia assessment","Outcome of initial anaesthesia assessment","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Past medical history","Past medical history","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Personal History of Blood Transfusion","Personal History of Blood Transfusion","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Planned Anaesthesia technique","Planned Anaesthesia technique","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Previous Anaesthesia history","Previous Anaesthesia history","Coded","Question",false);

# Adding Date concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Date of Consultation","Date of Consultation","Date","Misc",false);

# Add Numeric concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Mouth opening","Mouth opening","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Specify number of times receiving anaesthesia","Specify number of times receiving anaesthesia","Numeric","Misc",false);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)VALUES ((select concept_id from concept_name where name = "IAA, Specify number of times receiving anaesthesia" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)VALUES ((select concept_id from concept_name where name = "IAA, Mouth opening" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);

# Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Comments about adverse reaction","Comments about adverse reaction","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Outcome of initial anaesthesia assessment, comments","Outcome of initial anaesthesia assessment, comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Past medical history, other","Past medical history, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Previous blood transfusion incident, describe","Previous blood transfusion incident, describe","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Remarks - anaesthetist","Remarks - anaesthetist","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"IAA, Type of medication allergy","Type of medication allergy","Text","Misc",false);

#Add Helptext to concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "IAA, Planned Anaesthesia technique" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),"GAI: GA with intubation/GAO: GA with nothing or facial mask; GAL: GA with laryngeal mask; RSA: Spinal; RPX: Plexic or Troncular (Axillary/Femoral/Sciatic); RTA: Transverse Abdominal Plane Bloc; RAO: Other Regional Technique; LOA: Local anaesthesia; SED: Sedation; INF: Infiltration by surgeon",'en',1,now(),NULL,NULL,uuid());


# Add child concepts to openmrs
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Abnormal blood clotting","Abnormal blood clotting","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Asthma","Asthma","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Congenital disorders of the nervous system","Congenital disorders of the nervous system","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Congenital heart disease","Congenital heart disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Congenital lung disease","Congenital lung disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Congenital renal disease","Congenital renal disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cough or cold (present time)","Cough or cold (present time)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diabetes","Diabetes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Emphysema","Emphysema","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Epilepsy or seizure","Epilepsy or seizure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"CVA - TIA","CVA - TIA","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MI","MI","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rheumatic fever","Rheumatic fever","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anaemia","Anaemia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Blood disorder","Blood disorder","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer","Cancer","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cirrhosis","Cirrhosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Corticosteroid drugs","Corticosteroid drugs","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Frequent bleeding","Frequent bleeding","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Heart problems (within last six months)","Heart problems (within last six months)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hepatitis","Hepatitis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypertension","Hypertension","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Jaundice","Jaundice","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Palpitations","Palpitations","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Renal failure","Renal failure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Renal infection","Renal infection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Renal stones","Renal stones","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Upper GI bleeding","Upper GI bleeding","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Valve disease","Valve disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"None","None","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Sleep apnoea","Sleep apnoea","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Spinal cord disease","Spinal cord disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thyroid hormone diseases","Thyroid hormone diseases","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA I","ASA I","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA II","ASA II","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA III","ASA III","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA IV","ASA IV","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA V","ASA V","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ASA VI","ASA VI","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Admission to ICU","Admission to ICU","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Class I","Class I","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Class II","Class II","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Class III","Class III","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Class IV","Class IV","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Delayed recovery","Delayed recovery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Difficult intubation","Difficult intubation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"General","General","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Local","Local","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Postpone surgery","Postpone surgery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ready for surgery","Ready for surgery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Regional","Regional","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suffocation or cyanosis","Suffocation or cyanosis","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unfit for surgery - cancellation","Unfit for surgery - cancellation","N/A","Misc",false);
