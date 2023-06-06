set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BT, Date of transfusion","Date of transfusion","Date","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BT, Location","Location","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BT, Transfusion adverse event","Transfusion adverse event","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BT, Volume transfused","Volume transfused","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BT, Number of units","Number of units","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "BT, Volume transfused" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"ml",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "BT, Number of units" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",0,0);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BT, Comment","Comment","Text","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Recovery room","Recovery room","N/A","Misc",false);
