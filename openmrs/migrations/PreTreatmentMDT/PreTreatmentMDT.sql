set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Parent Concepts
#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Date recorded","Date recorded","Date","Misc",false);

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Clinical diagnosis","Clinical diagnosis","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Precancerous lesions","Precancerous lesions","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Abnormal findings","Abnormal findings","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Topography of the tumour","Topography of the tumour","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Agreed FIGO staging for cancer of the vulva","Agreed FIGO staging for cancer of the vulva","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Agreed FIGO staging for cancer of the vagina","Agreed FIGO staging for cancer of the vagina","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Agreed FIGO staging for cancer of the cervix","Agreed FIGO staging for cancer of the cervix","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Agreed FIGO staging for cancer of the uterus","Agreed FIGO staging for cancer of the uterus","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Agreed FIGO staging for cancer of the ovary","Agreed FIGO staging for cancer of the ovary","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Proposed management plan","Proposed management plan","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Conservative surgery type","Conservative surgery type","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Surgical procedure type","Surgical procedure type","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Q-M classification on the right side","Q-M classification on the right side","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Q-M classification on the left side","Q-M classification on the left side","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Referred to radiation therapy","Referred to radiation therapy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Type of Chemotherapy","Type of Chemotherapy","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Should palliative chemotherapy be considered?","Should palliative chemotherapy be considered?","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Chemotherapy regimen","Chemotherapy regimen","Coded","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Referred to palliative care","Referred to palliative care","Coded","Misc",false);

#Add Text Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Precancerous lesions, other","Precancerous lesions, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Abnormal findings, other","Abnormal findings, other","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Other type of  surgical procedure","Other type of  surgical procedure","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Comments","Comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PTMDT, Other chemotherapy regimen","Other chemotherapy regimen","Text","Misc",false);

#Add Child Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Staging laparotomy","Staging laparotomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Type B2","Type B2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bilateral salpingo-oophorectomy","Bilateral salpingo-oophorectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radical vaginal hysterectomy","Radical vaginal hysterectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radical abdominal hysterectomy","Radical abdominal hysterectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Adjuvant chemotherapy","Adjuvant chemotherapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Surgical procedure","Surgical procedure","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Conservative surgery","Conservative surgery","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Palliative chemotherapy","Palliative chemotherapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Bilateral salpingectomy","Bilateral salpingectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Examination under anaesthesia","Examination under anaesthesia","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Type B1","Type B1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Type C1","Type C1","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Total radical vulvectomy","Total radical vulvectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Neoadjuvant Chemotherapy (NAC)","Neoadjuvant Chemotherapy (NAC)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Type A","Type A","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Wide local excision of vulva","Wide local excision of vulva","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radical Local vulvectomy","Radical Local vulvectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Condyloma acuminatum","Condyloma acuminatum","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Type C2","Type C2","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Inguinal lymph node dissection","Inguinal lymph node dissection","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Radical trachelectomy","Radical trachelectomy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TPF (Carboplatin/Paclitaxel/5FU)","TPF (Carboplatin/Paclitaxel/5FU)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TPF (Cisplatin/Paclitaxel/5FU)","TPF (Cisplatin/Paclitaxel/5FU)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TPF (Carboplatin/Docetaxel/5FU)","TPF (Carboplatin/Docetaxel/5FU)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TPF (Ciplatin/Docetaxel/5FU)","TPF (Ciplatin/Docetaxel/5FU)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"GC (Carboplatin/Gemcitabin)","GC (Carboplatin/Gemcitabin)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TP (Carboplatin/Paclitaxel)","TP (Carboplatin/Paclitaxel)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TP (Cisplatin/Paclitaxel)","TP (Cisplatin/Paclitaxel)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TP (Carboplatin/Docetaxel)","TP (Carboplatin/Docetaxel)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TP (Cisplatin/Docetaxel)","TP (Cisplatin/Docetaxel)","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TIP (Paclitaxel/ Ifosfamide/Cisplatin)","TIP (Paclitaxel/ Ifosfamide/Cisplatin)","N/A","Misc",false);
