set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Anaesthesia start time","Anaesthesia start time",'DateTime','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Anaesthesia end time","Anaesthesia end time",'DateTime','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Primary type of anaesthesia administered","Primary type of Anaesthesia administered",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Secondary type of anaesthesia administered","Secondary type of Anaesthesia administered",'coded','Question',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Special drugs used during surgery","Special drugs used during surgery",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Complication of anaesthesia","Complication of Anaesthesia",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Allergic reaction","Allergic Reaction",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bronchospasm","Bronchospasm",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cardiac dysrhythmia","Cardiac dysrhythmia",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Damage to teeth","Damage to teeth",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypotension","Hypotension",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypothermia <35C","Hypothermia <35C",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hyperthermia >39C","Hyperthermia >39C",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Patient position injuries","Patient position injuries",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pulmonary aspiration","Pulmonary aspiration",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unanticipated bleeding","Unanticipated bleeding",'N/A','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Description of complication","Description of complication",'Text','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Fluid intake (ml)","Fluid intake (ml)",'Numeric','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Blood transfusion","Blood transfusion",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Intra-operative blood products","Intra-operative blood products",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"None","None",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Whole blood","Whole blood",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PRBC","PRBC",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"FFP","FFP",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Platelets","Platelets",'N/A','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Intra-operative blood products, other","Intra-operative blood products, other",'Text','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Number of units given","Number of units given",'Numeric','Misc',false);


call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Intra-operative transfusion related reaction","Intra-operative transfusion related reaction",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"ABO incompatibility","ABO incompatibility",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anaphylaxis","Anaphylaxis",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Fever","Fever",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Haemolysis","Haemolysis",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Rash","Rash",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Urticaria","Urticaria",'N/A','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Intra-operative transfusion related reaction, comment","Intra-operative transfusion related reaction, comment",'Text','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Haemoglobin (g/dl)","Haemoglobin (g/dl)",'Numeric','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Blood sugar (mg/dl)","Blood sugar (mg/dl)",'Numeric','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Other intra-operative lab","Other intra-operative lab",'Text','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Blood loss (ml)","Blood loss (ml)",'Numeric','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Urine output (ml)","Urine output (ml)",'Numeric','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Devices present","Devices present",'coded','Question',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Foley Catheter","Foley Catheter",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Peripheral IV","Peripheral IV",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Suprapubic Catheter","Suprapubic Catheter",'N/A','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Drain","Drain",'N/A','Misc',false);

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Devices present, describe","Devices present, describe",'Text','Misc',false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"POAN, Anaesthetic post-operative notes","Anaesthetic post-operative notes",'Text','Misc',false);