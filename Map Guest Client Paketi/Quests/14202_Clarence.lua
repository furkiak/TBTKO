local Ret = 0;
local NPC = 14202;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 3825, NPC, 10, 193);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 3825, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 700) then -- 45 Level Cardinal Jewel
	SelectMsg(UID, 2, 318, 3001, NPC, 28, 701);
end

if (EVENT == 701) then
	ShowMap(UID, 306);
	SaveEvent(UID, 3282);
end

if (EVENT == 702) then
	SelectMsg(UID, 2, 318, 3002, NPC, 28, 701);
end

if (EVENT == 703) then
	SelectMsg(UID, 2, 318, 3131, NPC, 10, 704);
end

if (EVENT == 704) then
	SelectMsg(UID, 4, 318, 3132, NPC, 22, 705, 23, 193);
end

if (EVENT == 705) then
	SaveEvent(UID, 3283);
end

if (EVENT == 706) then
	SaveEvent(UID, 3285);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 318, 3136, NPC, 3015, 193);
	else
		SelectMsg(UID, 2, 318, 3006, NPC, 3015, 193);
	end
end

if (EVENT == 708) then
	ITEM_COUNT = HowmuchItem(UID, 910083000);
	if (ITEM_COUNT == 0) then
		SelectMsg(UID, 2, 318, 3135, NPC, 18, 709);
	else
		SelectMsg(UID, 4, 318, 3137, NPC, 41, 710, 27, 193);
	end
end

if (EVENT == 709) then
	ShowMap(UID, 314);
end

if (EVENT == 710) then
	RobItem(UID, 910083000, 1)
	GoldGain(UID, 100000)
	SaveEvent(UID, 3284); 
end

local savenum = 408;

if (EVENT == 530) then -- 60 Level Job Change
	Class = CheckClass (UID);
	if (Class == 7) then
		SaveEvent(UID, 4099);
		SelectMsg(UID, 2, savenum, 4095, NPC, 4080, 193);
	else
		Ret = 1;
	end
end

if (EVENT == 532) then
	Level = CheckLevel(UID)
	if (Level > 59) then 
		Class = CheckClass (UID);
		if (Class == 7) then
			SelectMsg(UID, 4, savenum, 4098, NPC, 22, 533, 23, 534);
		else
			SaveEvent(UID, 4101);
			SelectMsg(UID, 2, savenum, 4097, NPC, 10, 193);
		end
	else
		SelectMsg(UID, 2, savenum, 4096, NPC, 10, 193);
	end
end

if (EVENT == 533) then
	SaveEvent(UID, 4100);
end

if (EVENT == 534) then
	SaveEvent(UID, 4103);
end

if (EVENT == 535) then
	SaveEvent(UID, 4102);
	SelectMsg(UID, 2, savenum, 4102, NPC, 4080, 193);
end

if (EVENT == 536) then
	ITEM_COUNTA = HowmuchItem(UID, 810095000);
	ITEM_COUNTB = HowmuchItem(UID, 810092000);
	ITEM_COUNTC = HowmuchItem(UID, 810093000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB > 0 and ITEM_COUNTC > 0) then
		SelectMsg(UID, 4, savenum, 4103, NPC, 4062, 537, 4063, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 4099, NPC, 18, 538);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, savenum, 4099, NPC, 18, 539);
		elseif (ITEM_COUNTC < 1) then
			SelectMsg(UID, 2, savenum, 4099, NPC, 18, 540);
		end
	end
end

if (EVENT == 538) then
	ShowMap(UID, 189);
end

if (EVENT == 539) then
	ShowMap(UID, 713);
end

if (EVENT == 540) then
	ShowMap(UID, 711);
end

if (EVENT == 537) then
	RobItem(UID, 810095000, 1)
	RobItem(UID, 810092000, 1)
	RobItem(UID, 810093000, 1)
	PromoteUser(UID)
	SaveEvent(UID, 4101);
	SelectMsg(UID, 2, savenum, 4093, NPC, 4064, 193);
end

if (EVENT == 222) then -- 61 Level Magic Shield Scroll
	SelectMsg(UID, 2, 313, 3112, NPC, 3013, 232);
end

if (EVENT == 232) then
	SelectMsg(UID, 2, 313, 3113, NPC, 3003, 233);
end

if (EVENT == 233) then
	ShowMap(UID, 306);
	SaveEvent(UID, 3202);
end

if (EVENT == 223) then
	SelectMsg(UID, 2, 313, 3088, NPC, 3000, 224);
end

if (EVENT == 224) then
	SelectMsg(UID, 4, 313, 3089, NPC, 22, 225, 23, 193);
end

if (EVENT == 225) then
	SaveEvent(UID, 3203);
end

if (EVENT == 226) then
	SaveEvent(UID, 3205);
	SelectMsg(UID, 2, 313, 3094, NPC, 10, 193);
end

if (EVENT == 228) then
	ITEM_COUNTA = HowmuchItem(UID, 900017000);
	if (ITEM_COUNTA > 6) then
		SelectMsg(UID, 4, 313, 3095, NPC, 41, 230, 27, 193);
	else
		SelectMsg(UID, 2, 313, 3098, NPC, 18, 229);
	end
end

if (EVENT == 229) then
	ShowMap(UID, 726);
end

if (EVENT == 230) then
	RobItem(UID, 900017000, 7)
	GiveItem(UID, 379064000, 1)
	SaveEvent(UID, 3204);
end

if (EVENT == 300) then
	SelectMsg(UID, 2, 314, 3001, NPC, 28, 301);
end

if (EVENT == 301) then
	ShowMap(UID, 306);
	SaveEvent(UID, 3222);
end

if (EVENT == 302) then
	SelectMsg(UID, 2, 314, 3002, NPC, 28, 301);
end

if (EVENT == 303) then -- 69 Level Nostrum of Speed
	SelectMsg(UID, 2, 314, 3096, NPC, 3011, 304);
end

if (EVENT == 304) then
	SelectMsg(UID, 4, 314, 3097, NPC, 22, 305, 23, 193);
end

if (EVENT == 305) then
	SaveEvent(UID, 3223);
end

if (EVENT == 306) then
	SaveEvent(UID, 3225);
	SelectMsg(UID, 2, 314, 3102, NPC, 21, 193);
end

if (EVENT == 308) then
	ITEM_COUNTA = HowmuchItem(UID, 910042000);
	ITEM_COUNTB = HowmuchItem(UID, 379040000);
	ITEM_COUNTC = HowmuchItem(UID, 379236000);
	if (ITEM_COUNTA > 4 and ITEM_COUNTB > 0 and ITEM_COUNTC > 1) then
		SelectMsg(UID, 4, 314, 3103, NPC, 41, 310, 27, 193);
	else
		if (ITEM_COUNTA < 5) then
			SelectMsg(UID, 2, 314, 3100, NPC, 18, 309);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 314, 3100, NPC, 18, 311);
		elseif (ITEM_COUNTC < 2) then
			SelectMsg(UID, 2, 314, 3100, NPC, 18, 312);
		end
	end
end

if (EVENT == 309) then
	ShowMap(UID, 324);
end

if (EVENT == 311) then
	ShowMap(UID, 28);
end

if (EVENT == 312) then
	ShowMap(UID, 18);
end

if (EVENT == 310) then
	RobItem(UID, 910042000, 5)
	RobItem(UID, 379040000, 1)
	RobItem(UID, 379236000, 2)
	GiveItem(UID, 379245000, 1)
	SaveEvent(UID, 3224);
end

if (EVENT == 400) then
	SelectMsg(UID, 2, 315, 3001, NPC, 28, 401);
end

if (EVENT == 401) then
	ShowMap(UID, 306);
	SaveEvent(UID, 3242);
end

if (EVENT == 402) then
	SelectMsg(UID, 2, 315, 3002, NPC, 28, 401);
end

if (EVENT == 403) then -- 69 Level Stamp of Agility or Dexterity
	SelectMsg(UID, 2, 315, 3104, NPC, 10, 404);
end

if (EVENT == 404) then
	SelectMsg(UID, 4, 315, 3105, NPC, 22, 405, 23, 193);
end

if (EVENT == 405) then
	SaveEvent(UID, 3243);
end

if (EVENT == 406) then
	SaveEvent(UID, 3245);
	SelectMsg(UID, 2, 315, 3110, NPC, 21, 193);
end

if (EVENT == 408) then
	ITEM_COUNTA = HowmuchItem(UID, 320410011);
	ITEM_COUNTB = HowmuchItem(UID, 320410012);
	ITEM_COUNTC = HowmuchItem(UID, 379067000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB > 0 and ITEM_COUNTC > 0) then
		SelectMsg(UID, 4, 315, 3111, NPC, 41, 410, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, 315, 3108, NPC, 18, 409);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 315, 3108, NPC, 18, 411);
		elseif (ITEM_COUNTC < 1) then
			SelectMsg(UID, 2, 315, 3108, NPC, 18, 412);
		end
	end
end

if (EVENT == 409) then
	ShowMap(UID, 309);
end

if (EVENT == 411) then
	ShowMap(UID, 310);
end

if (EVENT == 412) then
	ShowMap(UID, 30);
end

if (EVENT == 410) then
	RobItem(UID, 320410011, 1)
	RobItem(UID, 320410012, 1)
	RobItem(UID, 379067000, 1)
	GiveItem(UID, 379246000, 1)   
	SaveEvent(UID, 3244);
end

if (EVENT == 820) then
	SelectMsg(UID, 2, 52, 3225, NPC, 3006, 821);
end

if (EVENT == 821) then
	ShowMap(UID, 306);
	SaveEvent(UID, 3422);
end

if (EVENT == 822) then
	SelectMsg(UID, 2, 52, 3224, NPC, 3006, 821);
end

if (EVENT == 823) then -- 70 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, 52, 3226, NPC, 10, 824);
	else
		SelectMsg(UID, 2, 52, 4711, NPC, 10, 193);
	end
end

if (EVENT == 824) then
	SelectMsg(UID, 4, 52, 3227, NPC, 22, 825, 23, 831);
end

if (EVENT == 825) then
	SaveEvent(UID, 3423);
	SelectMsg(UID, 2, 52, 3228, NPC, 10, 193);
end

if (EVENT == 831) then
	SelectMsg(UID, 2, 52, 3229, NPC, 10, 193);
end

if (EVENT == 826) then
	SaveEvent(UID, 3425);
	SelectMsg(UID, 2, 52, 3232, NPC, 32, 193);
end

if (EVENT == 828) then
	ITEM_COUNT1 = HowmuchItem(UID, 379245000);
	ITEM_COUNT2 = HowmuchItem(UID, 379246000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 6999999) then
		SelectMsg(UID, 4, 52, 3233, NPC, 41, 830, 27, 193);
	else
		if (ITEM_COUNT1 < 1 or ITEM_COUNT2 < 1) then
			SelectMsg(UID, 2, 52, 3230, NPC, 18, 829);
		elseif (ITEM_COUNT3 < 7000000) then
			SelectMsg(UID, 2, 52, 3230, NPC, 18, 831);
		end
	end
end

if (EVENT == 829) then
	ShowMap(UID, 306);
end

if (EVENT == 831) then
	ShowMap(UID, 336);
end

if (EVENT == 830) then
	RobItem(UID, 379245000, 1) 
	RobItem(UID, 379246000, 1)
	GoldLose(UID, 7000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 3424);
end

local savenum = 512;

if (EVENT == 920) then
	SelectMsg(UID, 2, savenum, 5122, NPC, 3006, 921);
end

if (EVENT == 921) then
	ShowMap(UID, 306);
	SaveEvent(UID, 5125);
end

if (EVENT == 922) then
	SelectMsg(UID, 2, savenum, 5123, NPC, 3006, 921);
end

if (EVENT == 923) then -- 72 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5125, NPC, 10, 924);
	else
		SelectMsg(UID, 2, savenum, 5124, NPC, 10, 193);
	end
end

if (EVENT == 924) then
	SelectMsg(UID, 4, savenum, 5126, NPC, 22, 925, 23, 931);
end

if (EVENT == 925) then
	SaveEvent(UID, 5126);
	SelectMsg(UID, 2, savenum, 5127, NPC, 10, 193);
end

if (EVENT == 931) then
	SelectMsg(UID, 2, savenum, 5128, NPC, 10, 193);
end

if (EVENT == 926) then
	SaveEvent(UID, 5128);
	SelectMsg(UID, 2, savenum, 5131, NPC, 32, 193);
end

if (EVENT == 928) then
	ITEM_COUNT1 = HowmuchItem(UID, 379246000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5132, NPC, 41, 930, 27, 193);
	else
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, savenum, 5129, NPC, 18, 929);
		elseif (ITEM_COUNT2 < 3) then
			SelectMsg(UID, 2, savenum, 5129, NPC, 18, 932);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, savenum, 5129, NPC, 18, 933);
		end
	end
end

if (EVENT == 929) then
	ShowMap(UID, 306);
end

if (EVENT == 932) then
	ShowMap(UID, 18);
end

if (EVENT == 933) then
	ShowMap(UID, 336);
end

if (EVENT == 930) then
	RobItem(UID, 379246000, 1)
	RobItem(UID, 379236000, 3)  
	GoldLose(UID, 10000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5127);
end

local savenum = 513;

if (EVENT == 1020) then
	SelectMsg(UID, 2, savenum, 5133, NPC, 3006, 1021);
end

if (EVENT == 1021) then
	ShowMap(UID, 306);
	SaveEvent(UID, 5137);
end

if (EVENT == 1022) then
	SelectMsg(UID, 2, savenum, 5134, NPC, 3006, 1021);
end

if (EVENT == 1023) then -- 75 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5136, NPC, 10, 1024);
	else
		SelectMsg(UID, 2, savenum, 5135, NPC, 10, 193);
	end
end

if (EVENT == 1024) then
	SelectMsg(UID, 4, savenum, 5137, NPC, 22, 1025, 23, 1031);
end

if (EVENT == 1025) then
	SaveEvent(UID, 5138);
	SelectMsg(UID, 2, savenum, 5138, NPC, 10, 193);
end

if (EVENT == 1031) then
	SelectMsg(UID, 2, savenum, 5139, NPC, 10, 193);
end

if (EVENT == 1026) then
	SaveEvent(UID, 5140);
	SelectMsg(UID, 2, savenum, 5142, NPC, 32, 193);
end

if (EVENT == 1028) then
	ITEM_COUNT1 = HowmuchItem(UID, 379246000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5143, NPC, 41, 1030, 27, 193);
	else
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, savenum, 5140, NPC, 18, 1029);
		elseif (ITEM_COUNT2 < 3) then
			SelectMsg(UID, 2, savenum, 5140, NPC, 18, 1032);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, savenum, 5140, NPC, 18, 1033);
		end
	end
end

if (EVENT == 1029) then
	ShowMap(UID, 306);
end

if (EVENT == 1032) then
	ShowMap(UID, 18);
end

if (EVENT == 1033) then
	ShowMap(UID, 336);
end

if (EVENT == 1030) then
	RobItem(UID, 379246000, 1)
	RobItem(UID, 379236000, 3)
	GoldLose(UID, 10000000) 
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5139);   
end

local savenum = 514;

if (EVENT == 1120) then
	SelectMsg(UID, 2, savenum, 5144, NPC, 3006, 1121);
end

if (EVENT == 1121) then
	ShowMap(UID, 306);
	SaveEvent(UID, 5149);
end

if (EVENT == 1122) then
	SelectMsg(UID, 2, savenum, 5145, NPC, 3006, 1121);
end

if (EVENT == 1123) then -- 80 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5147, NPC, 10, 1124);
	else
		SelectMsg(UID, 2, savenum, 5146, NPC, 10, 193);
	end
end

if (EVENT == 1124) then
	SelectMsg(UID, 4, savenum, 5148, NPC, 22, 1125, 23, 1131);
end

if (EVENT == 1125) then
	SaveEvent(UID, 5150);
	SelectMsg(UID, 2, savenum, 5149, NPC, 10, 193);
end

if (EVENT == 1131) then
	SelectMsg(UID, 2, savenum, 5150, NPC, 10, 193);
end

if (EVENT == 1126) then
	SaveEvent(UID, 5152);
	SelectMsg(UID, 2, savenum, 5153, NPC, 32, 193);
end

if (EVENT == 1128) then
	ITEM_COUNT1 = HowmuchItem(UID, 379245000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5154, NPC, 41, 1130, 27, 193);
	else
		if (ITEM_COUNT1 < 1) then
			SelectMsg(UID, 2, savenum, 5151, NPC, 18, 1129);
		elseif (ITEM_COUNT2 < 3) then
			SelectMsg(UID, 2, savenum, 5151, NPC, 18, 1132);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, savenum, 5151, NPC, 18, 1133);
		end
	end
end

if (EVENT == 1129) then
	ShowMap(UID, 306);
end

if (EVENT == 1132) then
	ShowMap(UID, 18);
end

if (EVENT == 1133) then
	ShowMap(UID, 336);
end

if (EVENT == 1130) then
	RobItem(UID, 379245000, 1)
	RobItem(UID, 379236000, 3)
	GoldLose(UID, 10000000) 
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5151); 
end