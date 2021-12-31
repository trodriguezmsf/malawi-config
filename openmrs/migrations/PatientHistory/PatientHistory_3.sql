set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Last viral load date","Last viral load date","Date","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, NGO's VIA centre name, other","NGO's VIA centre name, other","Text","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, MOH health facility name","MOH health facility name","Coded","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PH, Last viral load","Last viral load","Numeric","Misc",false);

#Add Numeric concepts to concept Numeric Table
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PH, Last viral load" and concept_name_type = "FULLY_SPECIFIED"  and locale = "en"  and voided = 0),NULL,NULL,NULL,-0.0000000001,NULL,NULL,"",1,1);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MSF Mobile Truck","MSF Mobile Truck","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"MACRO","MACRO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"BLM","BLM","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Light House","Light House","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Balaka DHO","Balaka DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mbera HC","Mbera HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Makhetha HC","Makhetha HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malamulo Clinic","Malamulo Clinic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mdeka HC","Mdeka HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"QECH","QECH","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Zingwangwa HC","Zingwangwa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mulambe Mission Hospital","Mulambe Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mwaiwathu Private Hospital","Mwaiwathu Private Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Blantyre Adventist Hospital","Blantyre Adventist Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chileka HC","Chileka HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mlambe Mission Hospital","Mlambe Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mpemba HC","Mpemba HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bangwe HC","Bangwe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chichiri prison","Chichiri prison","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Limbe HC","Limbe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ndirande HC","Ndirande HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"South Lunzu","South Lunzu","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Makata HC","Makata HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Soche Maternity","Soche Maternity","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mbayani HC","Mbayani HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chirimba HC","Chirimba HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chabvala HC","Chabvala HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chikowa HC","Chikowa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chimembe HC","Chimembe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Dziwe HC","Dziwe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lirangwe HC","Lirangwe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lundu HC","Lundu HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Madziabango HC","Madziabango HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namikoko HC","Namikoko HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pensulo HC","Pensulo HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mpingo Maternity","Mpingo Maternity","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"St Vincent HC","St Vincent HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kadidi HC","Kadidi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chikwawa DHO","Chikwawa DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ngabu HC","Ngabu HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"St Montfort Mission Hospital","St Montfort Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chitera HC","Chitera HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nguludi HC","Nguludi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Boma DHO","Boma DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Milepa HC","Milepa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namadzi HC","Namadzi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Namitambo HC","Namitambo HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Thumbwe HC","Thumbwe HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malavi HC","Malavi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chimwawa HC","Chimwawa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bilal HC","Bilal HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mauwa HC","Mauwa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nkalo HC","Nkalo HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PIM HC","PIM HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mbulumbudzi HC","Mbulumbudzi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ndunde HC","Ndunde HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kachere HC","Kachere HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mua Mission","Mua Mission","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bwaila Fistula Care Hospital","Bwaila Fistula Care Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Kamuzu Central Hospital","Kamuzu Central Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Umoyo Clinic","Umoyo Clinic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Liwonde","Liwonde","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Machinga DHO","Machinga DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nyambi HC","Nyambi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Makanjira HC","Makanjira HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mangochi DHO","Mangochi DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Monkeybay Rural Hospital","Monkeybay Rural Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malindi Mission Hospital","Malindi Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mulibwanji Mission Hospital","Mulibwanji Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Katuli Clinic","Katuli Clinic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mulanje DHO","Mulanje DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mulanje Mission Hospital","Mulanje Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mwanza DHO","Mwanza DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Lisungwi Hospital","Lisungwi Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nsanje DHO","Nsanje DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Trinity Mission Hospital","Trinity Mission Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ntaja HC","Ntaja HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Ntcheu DHO","Ntcheu DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chiteketsa HC","Chiteketsa HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Holly Familly Hospital","Holly Familly Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Migowi HC","Migowi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nkhulambe Clinic","Nkhulambe Clinic","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nkhwayi HC","Nkhwayi HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Phalombe DHO","Phalombe DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Salima DHO","Salima DHO","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Malamulo Adventist Hospital","Malamulo Adventist Hospital","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Matiya HC","Matiya HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Pilimiti HC","Pilimiti HC","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Zomba Central Hospita","Zomba Central Hospita","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"St Luke's Mission Hospital","St Luke's Mission Hospital","N/A","Misc",false);