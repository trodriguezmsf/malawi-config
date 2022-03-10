set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Date recorded","Date recorded","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Date of Death","Date of Death","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Other location of death","Other location of death","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Name of attendant","Name of attendant","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Reason for admission","Reason for admission","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Name of Facility","Name of Facility","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Reason for drug stockout","Reason for drug stockout","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Reason for call","Reason for call","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Reason for failure","Reason for failure","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Pain, Location (a week before death)","Pain, Location (a week before death)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Bed sore, Location (a week before death)","Bed sore, Location (a week before death)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Oedema, Location (a week before death)","Oedema, Location (a week before death)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Other symptoms, specify (a week before death)","Other symptoms, specify (a week before death)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Pain, Location (a day before death)","Pain, Location (a day before death)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Bed sore, Location (a day before death)","Bed sore, Location (a day before death)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Oedema, Location (a day before death)","Oedema, Location (a day before death)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Other symptoms, specify (a day before death)","Other symptoms, specify (a day before death)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Presumed cause of death","Presumed cause of death","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Based on the assessment and clinician judgement: are relatives at risk for complicated bereavement? Who? Why?","Based on the assessment and clinician judgement: are relatives at risk for complicated bereavement? Who? Why?","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Family coping: what are the plans for the patient's dependent(s)?","Family coping: what are the plans for the patient's dependent(s)?","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Social support comment","Social support comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Counselling comment","Counselling comment","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Other type of grief support provided","Other type of grief support provided","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Who needs counselling?","Who needs counselling?","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Location of Death","Location of Death","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Location of meeting","Location of meeting","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Attendant","Attendant","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Was the patient admitted to any health facility in the last 14 days before death","Was the patient admitted to any health facility in the last 14 days before death","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Has the patient lacked in stock of drugs in the last 14 days before death?","Has the patient lacked in stock of drugs in the last 14 days before death?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Has the patient or the guardian tried to contact the palliative care team in the last 14 days before death?","Has the patient or the guardian tried to contact the palliative care team in the last 14 days before death?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Was the death expected by the guardian?","Was the death expected by the guardian?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Would the guardian say that the patient died peacefully?","Would the guardian say that the patient died peacefully?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Would you say that you were tired from this experience?","Would you say that you were tired from this experience?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Would you say that you were stressed from this experience?","Would you say that you were stressed from this experience?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Would you say that this experience caused financial stress?","Would you say that this experience caused financial stress?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Would you say that the team gave you enough information about the patient's conditions?","Would you say that the team gave you enough information about the patient's conditions?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Would you say that the team has responded to your needs?","Would you say that the team has responded to your needs?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Would you say that the team has responded to the patient's needs?","Would you say that the team has responded to the patient's needs?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Patient condition a week before death","Patient condition a week before death","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Anxiety severity (a week before death)","Anxiety severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Anxiety severity (a day before death)","Anxiety severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, General suffering severity (a week before death)","General suffering severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Pain severity (a week before death)","Pain severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Bleeding severity (a week before death)","Bleeding severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Drowsiness severity (a week before death)","Drowsiness severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Delirium severity (a week before death)","Delirium severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Agitation severity (a week before death)","Agitation severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Nausea severity (a week before death)","Nausea severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Vomiting severity (a week before death)","Vomiting severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Shortness of breath severity (a week before death)","Shortness of breath severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Bed sore severity (a week before death)","Bed sore severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Oedema severity (a week before death)","Oedema severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Dysuria severity (a week before death)","Dysuria severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Urinary incontinence severity (a week before death)","Urinary incontinence severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Other symptoms severity (a week before death)","Other symptoms severity (a week before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Patient condition a day before death","Patient condition a day before death","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, General suffering severity (a day before death)","General suffering severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Pain severity (a day before death)","Pain severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Bleeding severity (a day before death)","Bleeding severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Drowsiness severity (a day before death)","Drowsiness severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Delirium severity (a day before death)","Delirium severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Agitation severity (a day before death)","Agitation severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Nausea severity (a day before death)","Nausea severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Vomiting severity (a day before death)","Vomiting severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Shortness of breath severity (a day before death)","Shortness of breath severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Bed sore severity (a day before death)","Bed sore severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Oedema severity (a day before death)","Oedema severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Dysuria severity (a day before death)","Dysuria severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Urinary incontinence severity (a day before death)","Urinary incontinence severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Other symptoms severity (a day before death)","Other symptoms severity (a day before death)","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Are some family members vulnerable: children / significant mental illness or disability?","Are some family members vulnerable: children / significant mental illness or disability?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Are any family members isolated?","Are any family members isolated?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Are any family members lacking meaningful social support?","Are any family members lacking meaningful social support?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Was there a conflict within the family and / or in the relationship with the patient?","Was there a conflict within the family and / or in the relationship with the patient?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Were any family members dissatisfied with the help available during the patient's illness?","Were any family members dissatisfied with the help available during the patient's illness?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Did any family members experience the death as sudden or unexpected?","Did any family members experience the death as sudden or unexpected?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Have there been cumulative multiple losses or unresolved previous bereavement(s) ?","Have there been cumulative multiple losses or unresolved previous bereavement(s) ?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Are there financial stresses because of the patient's death?","Are there financial stresses because of the patient's death?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Are there any family members who feel anger, guilt, or anxiety as a result of the death?","Are there any family members who feel anger, guilt, or anxiety as a result of the death?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Are there any family members who have disturbing thoughts, images or visions as a result of the death?","Are there any family members who have disturbing thoughts, images or visions as a result of the death?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Are there any sources of social support for the family right now? e.g. community, religious group etc.","Are there any sources of social support for the family right now? e.g. community, religious group etc.","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Type of grief support provided","Type of grief support provided","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BF, Reason for referral","Reason for referral","Coded","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"General suffering","General suffering","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Definitely not","Definitely not","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Home","Home","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nausea","Nausea","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dysuria","Dysuria","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vomiting","Vomiting","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Definitely","Definitely","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unsuccessful","Unsuccessful","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Urinary incontinence","Urinary incontinence","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Successful","Successful","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pain","Pain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bleeding","Bleeding","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Drowsy","Drowsy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Anxiety","Anxiety","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Aunt","Aunt","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Probably","Probably","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Probably not","Probably not","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Shortness of breath","Shortness of breath","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Uncle","Uncle","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Social support","Social support","N/A","Misc",false);

#Add Help Text to Concepts
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "BF, Would you say that you were tired from this experience?" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Physical burden for the guardian","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "BF, Would you say that you were stressed from this experience?" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Mental burden for the guardian","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "BF, Would you say that this experience caused financial stress?" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Social burden for the guardian","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "BF, Would you say that the team gave you enough information about the patient's conditions?" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Received enough information on patient's condition","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "BF, Would you say that the team has responded to your needs?" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Team's responded to guardian's needs","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "BF, Would you say that the team has responded to the patient's needs?" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Team's responded to patient's needs","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "BF, General suffering severity (a week before death)" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Regardless the cause of suffering","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "BF, General suffering severity (a day before death)" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"Regardless the cause of suffering","en",1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES ((select concept_id from concept_name where name = "BF, Presumed cause of death" and concept_name_type = "FULLY_SPECIFIED" and locale = "en" and voided = 0),
"List out the main cause of deaths and other significant conditions contributing to death (Click on the + sign to add more reasons)","en",1,now(),NULL,NULL,uuid());
