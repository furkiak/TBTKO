local Ret = 0;
local NPC = 14204;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 3826, NPC, 10, 193);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 3826, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 195) then
	SelectMsg(UID, 2, 70, 3026, NPC, 10, 196);
end

if (EVENT == 196) then
	ShowMap(UID, 302);
	SaveEvent(UID, 3063);
end

if (EVENT == 232) then
	ShowMap(UID, 302);
	SaveEvent(UID, 3073);
end

if (EVENT == 197) then
	SelectMsg(UID, 2, 70, 3027, NPC, 28, 232);
end

if (EVENT == 200) then -- 55 Level Horn of Comprehension
	SelectMsg(UID, 2, 70, 3010, NPC, 10, 201);
end

if (EVENT == 201) then
	SelectMsg(UID, 4, 70, 3017, NPC, 22, 202, 23, 193);
end

if (EVENT == 202) then
	SaveEvent(UID, 3064);
end

if (EVENT == 205) then
	SaveEvent(UID, 3066);
	SelectMsg(UID, 2, 70, 3020, NPC, 3016, 193);
end

if (EVENT == 210) then
	ITEM_COUNT = HowmuchItem(UID, 900033000);
	if (ITEM_COUNT < 1) then
		SelectMsg(UID, 2, 70, 3019, NPC, 18, 213);
	else
		SelectMsg(UID, 4, 70, 3022, NPC, 41, 214, 27, 213);
	end
end

if (EVENT == 213) then
	ShowMap(UID, 308);
end

if (EVENT == 214) then
	RobItem(UID, 900033000, 1)
	ExpChange(UID, 10000000)
	SaveEvent(UID, 3065);
end

if (EVENT == 220) then
	SelectMsg(UID, 2, 307, 3028, NPC, 3004, 1100, 3005, 1100);
end

if (EVENT == 1100) then
	SelectMsg(UID, 2, 307, 3029, NPC, 3006, 1101);
end

if (EVENT == 1101) then
	SelectMsg(UID, 2, 307, 3030, NPC, 3007, 221, 3008, 1102);
end

if (EVENT == 1102) then
	SelectMsg(UID, 2, 307, 3028, NPC, 3006, 221);
end

if (EVENT == 221) then
	SaveEvent(UID, 3082);
end

if (EVENT == 222) then
	SelectMsg(UID, 2, 307, 3032, NPC, 3003, 1110);
end

if (EVENT == 1110) then
	SelectMsg(UID, 2, 307, 3029, NPC, 3006, 1111);
end

if (EVENT == 1111) then
	SelectMsg(UID, 2, 307, 3030, NPC, 3007, 221, 3008, 1112);
end

if (EVENT == 1112) then
	SelectMsg(UID, 2, 307, 3028, NPC, 3006, 221);
end

if (EVENT == 223) then -- 61 Level Judgement Scroll
	SelectMsg(UID, 2, 307, 3036, NPC, 10, 227);
end

if (EVENT == 227) then
	SelectMsg(UID, 2, 307, 3037, NPC, 3002, 224);
end

if (EVENT == 224) then
	SelectMsg(UID, 4, 307, 3038, NPC, 22, 225, 23, 193);
end

if (EVENT == 225) then
	SaveEvent(UID, 3083);
end

if (EVENT == 226) then
	SaveEvent(UID, 3085);
	SelectMsg(UID, 2, 307, 3045, NPC, 32, 193);
end

if (EVENT == 228) then
	ITEM_COUNT = HowmuchItem(UID, 900017000);
	if (ITEM_COUNT > 6) then
		SelectMsg(UID, 4, 307, 3043, NPC, 41, 230, 27, 193);
	else 
		SelectMsg(UID, 2, 307, 3038, NPC, 18, 229);
	end
end

if (EVENT == 229) then
	ShowMap(UID, 726);
end

if (EVENT == 230) then
	RobItem(UID, 900017000, 7)
	GiveItem(UID, 379066000, 1)
	SaveEvent(UID, 3084);
	SelectMsg(UID, 2, 307, 3044, NPC, 10, 193);	 
end

if (EVENT == 231) then
	SelectMsg(UID, 2, 307, 3044, NPC, 10, 193);
end

if (EVENT == 300) then
	SelectMsg(UID, 2, 308, 3001, NPC, 28, 301);
end

if (EVENT == 301) then
	ShowMap(UID, 302);
	SaveEvent(UID, 3102);
end

if (EVENT == 302) then
	SelectMsg(UID, 2, 308, 3002, NPC, 28, 301);
end

if (EVENT == 303) then -- 69 Level Nostrum of Wisdom
	SelectMsg(UID, 2, 308, 3048, NPC, 10, 304);
end

if (EVENT == 304) then
	SelectMsg(UID, 4, 308, 3049, NPC, 22, 305, 23, 193);
end

if (EVENT == 305) then
	SaveEvent(UID, 3103);
end

if (EVENT == 306) then
	SaveEvent(UID, 3105);
	SelectMsg(UID, 2, 308, 3054, NPC, 3009, 193);
end

if (EVENT == 308) then
	ITEM_COUNTA = HowmuchItem(UID, 379047000);
	ITEM_COUNTB = HowmuchItem(UID, 379041000);
	ITEM_COUNTC = HowmuchItem(UID, 379236000);
	if (ITEM_COUNTA > 4 and ITEM_COUNTB > 0 and ITEM_COUNTC > 1) then
		SelectMsg(UID, 4, 308, 3055, NPC, 41, 310, 27, 193);
	else
		if (ITEM_COUNTA < 5) then
			SelectMsg(UID, 2, 308, 3052, NPC, 18, 309);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 308, 3052, NPC, 18, 311);
		elseif (ITEM_COUNTC < 2) then
			SelectMsg(UID, 2, 308, 3052, NPC, 18, 312);
		end
	end
end

if (EVENT == 309) then
	ShowMap(UID, 312);
end

if (EVENT == 311) then
	ShowMap(UID, 317);
end

if (EVENT == 312) then
	ShowMap(UID, 18);
end

if (EVENT == 310) then
	RobItem(UID, 379047000, 5)
	RobItem(UID, 379041000, 1)
	RobItem(UID, 379236000, 2)
	GiveItem(UID, 379249000, 1)
	SaveEvent(UID, 3104);	 
end

if (EVENT == 400) then
	SelectMsg(UID, 2, 309, 3001, NPC, 28, 401);
end

if (EVENT == 401) then
	ShowMap(UID, 302);
	SaveEvent(UID, 3122);
end

if (EVENT == 402) then
	SelectMsg(UID, 2, 309, 3002, NPC, 28, 401);
end

if (EVENT == 403) then -- 69 Level Stamp of Intelligence
	SelectMsg(UID, 2, 309, 3056, NPC, 10, 404);
end

if (EVENT == 404) then
	SelectMsg(UID, 4, 309, 3057, NPC, 22, 405, 23, 193);
end

if (EVENT == 405) then
	SaveEvent(UID, 3123);
end

if (EVENT == 406) then
	SaveEvent(UID, 3125);
	SelectMsg(UID, 2, 309, 3062, NPC, 3006, 193);
end

if (EVENT == 408) then
	ITEM_COUNTA = HowmuchItem(UID, 320410013);
	ITEM_COUNTB = HowmuchItem(UID, 320410011);
	ITEM_COUNTC = HowmuchItem(UID, 379067000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB > 0 and ITEM_COUNTC > 0) then
		SelectMsg(UID, 4, 309, 3063, NPC, 41, 410, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, 309, 3060, NPC, 18, 409);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 309, 3060, NPC, 18, 411);
		elseif (ITEM_COUNTC < 1) then
			SelectMsg(UID, 2, 309, 3060, NPC, 18, 412);
		end
	end
end

if (EVENT == 409) then
	ShowMap(UID, 311);
end

if (EVENT == 411) then
	ShowMap(UID, 309);
end

if (EVENT == 412) then
	ShowMap(UID, 30);
end

if (EVENT == 410) then
	RobItem(UID, 320410013, 1)
	RobItem(UID, 320410011, 1)
	RobItem(UID, 379067000, 1)
	GiveItem(UID, 379250000, 1)
	SaveEvent(UID, 3124);	 
end

local savenum = 408;

if (EVENT == 530) then -- 60 Level Job Change
	Class = CheckClass (UID);
	if (Class == 11) then
		SaveEvent(UID, 4123);
		SelectMsg(UID, 2, savenum, 4117, NPC, 4080, 193);
	else
		Ret = 1;
	end
end

if (EVENT == 532) then   
	Level = CheckLevel(UID)
	if (Level > 59) then
		Class = CheckClass (UID);
		if (Class == 5 or Class == 7 or Class == 9 or Class == 11) then
			SelectMsg(UID, 4, savenum, 4120, NPC, 22, 533, 23, 534);
		else
			SaveEvent(UID, 4125);
			SelectMsg(UID, 2, savenum, 4119, NPC, 10, 193);
		end
	else
		SelectMsg(UID, 2, savenum, 4118, NPC, 10, 193);
	end
end

if (EVENT == 533) then
	SaveEvent(UID, 4124);
end

if (EVENT == 534) then
	SaveEvent(UID, 4127);
end

if (EVENT == 535) then
	SaveEvent(UID, 4126);
	SelectMsg(UID, 2, savenum, 4124, NPC, 4080, 193);
end

if (EVENT == 536) then
	ITEM_COUNTA = HowmuchItem(UID, 810095000);
	ITEM_COUNTB = HowmuchItem(UID, 810091000);
	ITEM_COUNTC = HowmuchItem(UID, 810093000);
	if (ITEM_COUNTA > 0 and ITEM_COUNTB > 0 and ITEM_COUNTC > 0) then
		SelectMsg(UID, 4, savenum, 4125, NPC, 4062, 537, 4063, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 4121, NPC, 18, 538);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, savenum, 4121, NPC, 18, 539);
		elseif (ITEM_COUNTC < 1) then
			SelectMsg(UID, 2, savenum, 4121, NPC, 18, 540);
		end
	end
end

if (EVENT == 538) then
	ShowMap(UID, 682);
end

if (EVENT == 539) then
	ShowMap(UID, 715);
end

if (EVENT == 540) then
	ShowMap(UID, 711);
end

if (EVENT == 537) then
	SaveEvent(UID, 4125);
	RobItem(UID, 810095000, 1)
	RobItem(UID, 810091000, 1)
	RobItem(UID, 810093000, 1)
	PromoteUser(UID)
	SelectMsg(UID, 2, savenum, 4093, NPC, 4064, 193);
end

if (EVENT == 620) then
	SelectMsg(UID, 2, 54, 3245, NPC, 3006, 621);
end

if (EVENT == 621) then
	ShowMap(UID, 302);
	SaveEvent(UID, 3462);
end

if (EVENT == 622) then
	SelectMsg(UID, 2, 54, 3244, NPC, 3006, 621);
end

if (EVENT == 623) then -- 70 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, 54, 3246, NPC, 10, 624);
	else
		SelectMsg(UID, 2, 54, 4713, NPC, 10, 193);
	end
end

if (EVENT == 624) then
	SelectMsg(UID, 4, 54, 3247, NPC, 22, 625, 23, 631);
end

if (EVENT == 625) then
	SaveEvent(UID, 3463);
	SelectMsg(UID, 2, 54, 3248, NPC, 10, 193);
end

if (EVENT == 631) then
	SelectMsg(UID, 2, 54, 3249, NPC, 10, 193);
end

if (EVENT == 626) then
	SaveEvent(UID, 3465);
	SelectMsg(UID, 2, 54, 3252, NPC, 32, 193);
end

if (EVENT == 628) then
	ITEM_COUNT1 = HowmuchItem(UID, 379249000);
	ITEM_COUNT2 = HowmuchItem(UID, 379250000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 6999999) then
		SelectMsg(UID, 4, 54, 3253, NPC, 41, 630, 27, 193);
	else
		if (ITEM_COUNTA < 1 or ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, 54, 3250, NPC, 18, 629);
		elseif (ITEM_COUNTC < 7000000) then
			SelectMsg(UID, 2, 54, 3250, NPC, 18, 632);
		end
	end
end

if (EVENT == 629) then
	ShowMap(UID, 302);
end

if (EVENT == 632) then
	ShowMap(UID, 336);
end

if (EVENT == 630) then
	RobItem(UID, 379249000, 1)
	RobItem(UID, 379250000, 1)
	GoldLose(UID, 7000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 3464); 
end

local savenum = 518;

if (EVENT == 720) then
	SelectMsg(UID, 2, savenum, 5188, NPC, 3006, 721);
end

if (EVENT == 721) then
	ShowMap(UID, 302);
	SaveEvent(UID, 5197);
end

if (EVENT == 722) then
	SelectMsg(UID, 2, savenum, 5189, NPC, 3006, 721);
end

if (EVENT == 723) then -- 72 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5191, NPC, 10, 724);
	else
		SelectMsg(UID, 2, savenum, 5190, NPC, 10, 193);
	end
end

if (EVENT == 724) then
	SelectMsg(UID, 4, savenum, 5192, NPC, 22, 725, 23, 731);
end

if (EVENT == 725) then
	SaveEvent(UID, 5198);
	SelectMsg(UID, 2, savenum, 5193, NPC, 10, 193);
end

if (EVENT == 731) then
	SelectMsg(UID, 2, savenum, 5194, NPC, 10, 193);
end

if (EVENT == 726) then
	SaveEvent(UID, 5200);
	SelectMsg(UID, 2, savenum, 5197, NPC, 32, 193);
end

if (EVENT == 728) then
	ITEM_COUNT1 = HowmuchItem(UID, 379250000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5198, NPC, 41, 730, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5195, NPC, 18, 729);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, savenum, 5195, NPC, 18, 732);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5195, NPC, 18, 733);
		end
	end
end

if (EVENT == 729) then
	ShowMap(UID, 302);
end

if (EVENT == 732) then
	ShowMap(UID, 18);
end

if (EVENT == 733) then
	ShowMap(UID, 336);
end

if (EVENT == 730) then
	RobItem(UID, 379250000, 1)
	RobItem(UID, 379236000, 1)
	GoldLose(UID, 10000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5199);	 
end

local savenum = 519;

if (EVENT == 820) then
	SelectMsg(UID, 2, savenum, 5199, NPC, 3006, 821);
end

if (EVENT == 821) then
	ShowMap(UID, 302);
	SaveEvent(UID, 5209);
end

if (EVENT == 822) then
	SelectMsg(UID, 2, savenum, 5200, NPC, 3006, 821);
end

if (EVENT == 823) then -- 74 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5202, NPC, 10, 824);
	else
		SelectMsg(UID, 2, savenum, 5201, NPC, 10, 193);
	end
end

if (EVENT == 824) then
	SelectMsg(UID, 4, savenum, 5203, NPC, 22, 825, 23, 831);
end

if (EVENT == 825) then
	SaveEvent(UID, 5210);
	SelectMsg(UID, 2, savenum, 5204, NPC, 10, 193);
end

if (EVENT == 831) then
	SelectMsg(UID, 2, savenum, 5205, NPC, 10, 193);
end

if (EVENT == 826) then
	SaveEvent(UID, 5212);
	SelectMsg(UID, 2, savenum, 5208, NPC, 32, 193);
end

if (EVENT == 828) then
	ITEM_COUNT1 = HowmuchItem(UID, 379249000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5209, NPC, 41, 830, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5206, NPC, 10, 829);
		elseif (ITEM_COUNTB < 1) then
			SelectMsg(UID, 2, savenum, 5206, NPC, 10, 832);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5206, NPC, 10, 833);
		end
	end
end

if (EVENT == 829) then
	ShowMap(UID, 302);
end

if (EVENT == 832) then
	ShowMap(UID, 18);
end

if (EVENT == 833) then
	ShowMap(UID, 336);
end

if (EVENT == 830) then
	RobItem(UID, 379249000, 1)
	RobItem(UID, 379236000, 1)
	GoldLose(UID, 10000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5211);	 
end

local savenum = 520;

if (EVENT == 920) then
	SelectMsg(UID, 2, savenum, 5210, NPC, 3006, 921);
end

if (EVENT == 921) then
	ShowMap(UID, 302);
	SaveEvent(UID, 5221);
end

if (EVENT == 922) then
	SelectMsg(UID, 2, savenum, 5211, NPC, 3006, 921);
end

if (EVENT == 923) then
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5213, NPC, 10, 924);
	else
		SelectMsg(UID, 2, savenum, 5212, NPC, 10, 193);
	end
end

if (EVENT == 924) then
	SelectMsg(UID, 4, savenum, 5214, NPC, 22, 925, 23, 931);
end

if (EVENT == 925) then
	SaveEvent(UID, 5222);
	SelectMsg(UID, 2, savenum, 5215, NPC, 10, 193);
end

if (EVENT == 931) then
	SelectMsg(UID, 2, savenum, 5216, NPC, 10, 193);
end

if (EVENT == 926) then
	SaveEvent(UID, 5224);
	SelectMsg(UID, 2, savenum, 5219, NPC, 32, 193);
end

if (EVENT == 928) then
	ITEM_COUNT1 = HowmuchItem(UID, 379250000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 1 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5220, NPC, 41, 930, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5217, NPC, 18, 929);
		elseif (ITEM_COUNTB < 2) then
			SelectMsg(UID, 2, savenum, 5217, NPC, 18, 932);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5217, NPC, 18, 933);
		end
	end
end

if (EVENT == 929) then
	ShowMap(UID, 302);
end

if (EVENT == 932) then
	ShowMap(UID, 18);
end

if (EVENT == 933) then
	ShowMap(UID, 336);
end

if (EVENT == 930) then
	RobItem(UID, 379250000, 1)
	RobItem(UID, 379236000, 2)
	GoldLose(UID, 10000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5223);	 
end

local savenum = 521;

if (EVENT == 1020) then
	SelectMsg(UID, 2, savenum, 5221, NPC, 3006, 1021);
end

if (EVENT == 1021) then
	ShowMap(UID, 302);
	SaveEvent(UID, 5233);
end

if (EVENT == 1022) then
   SelectMsg(UID, 2, savenum, 5222, NPC, 3006, 1021);
end

if (EVENT == 1023) then -- 76 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5224, NPC, 10, 1024);
	else
		SelectMsg(UID, 2, savenum, 5223, NPC, 10, 193);
	end
end

if (EVENT == 1024) then
	SelectMsg(UID, 4, savenum, 5225, NPC, 22, 1025, 23, 1031);
end

if (EVENT == 1025) then
	SaveEvent(UID, 5234);
	SelectMsg(UID, 2, savenum, 5226, NPC, 10, 193);
end

if (EVENT == 1031) then
	SelectMsg(UID, 2, savenum, 5227, NPC, 10, 193);
end

if (EVENT == 1026) then
	SaveEvent(UID, 5236);
	SelectMsg(UID, 2, savenum, 5230, NPC, 32, 193);
end

if (EVENT == 1028) then
	ITEM_COUNT1 = HowmuchItem(UID, 379249000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 1 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5231, NPC, 41, 1030, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5228, NPC, 18, 1029);
		elseif (ITEM_COUNTB < 2) then
			SelectMsg(UID, 2, savenum, 5228, NPC, 18, 1032);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5228, NPC, 18, 1033);
		end
	end
end

if (EVENT == 1029) then
	ShowMap(UID, 302);
end

if (EVENT == 1032) then
	ShowMap(UID, 18);
end

if (EVENT == 1033) then
	ShowMap(UID, 336);
end

if (EVENT == 1030) then
	RobItem(UID, 379249000, 1)
	RobItem(UID, 379236000, 2)
	GoldLose(UID, 10000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5235); 
end

local savenum = 522;

if (EVENT == 1120) then
	SelectMsg(UID, 2, savenum, 5232, NPC, 3006, 1121);
end

if (EVENT == 1121) then
	ShowMap(UID, 302);
	SaveEvent(UID, 5245);
end

if (EVENT == 1122) then
	SelectMsg(UID, 2, savenum, 5233, NPC, 3006, 1121);
end

if (EVENT == 1123) then -- 78 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5235, NPC, 10, 1124);
	else
		SelectMsg(UID, 2, savenum, 5234, NPC, 10, 193);
	end
end

if (EVENT == 1124) then
	SelectMsg(UID, 4, savenum, 5236, NPC, 22, 1125, 23, 1131);
end

if (EVENT == 1125) then
	SaveEvent(UID, 5246);
	SelectMsg(UID, 2, savenum, 5237, NPC, 10, 193);
end

if (EVENT == 1131) then
	SelectMsg(UID, 2, savenum, 5238, NPC, 10, 193);
end

if (EVENT == 1126) then
	SaveEvent(UID, 5248);
	SelectMsg(UID, 2, savenum, 5241, NPC, 32, 193);
end

if (EVENT == 1128) then
	ITEM_COUNT1 = HowmuchItem(UID, 379250000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5242, NPC, 41, 1130, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5239, NPC, 18, 1129);
		elseif (ITEM_COUNTB < 3) then
			SelectMsg(UID, 2, savenum, 5239, NPC, 18, 1132);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5239, NPC, 18, 1133);
		end
	end
end

if (EVENT == 1129) then
	ShowMap(UID, 302);
end

if (EVENT == 1132) then
	ShowMap(UID, 18);
end

if (EVENT == 1133) then
	ShowMap(UID, 336);
end

if (EVENT == 1130) then
	RobItem(UID, 379250000, 1)
	RobItem(UID, 379236000, 3)
	GoldLose(UID, 10000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5247);  
end

local savenum = 523;

if (EVENT == 1220) then
	SelectMsg(UID, 2, savenum, 5243, NPC, 3006, 1221);
end

if (EVENT == 1221) then
	ShowMap(UID, 302);
	SaveEvent(UID, 5257);
end

if (EVENT == 1222) then
	SelectMsg(UID, 2, savenum, 5244, NPC, 3006, 1221);
end

if (EVENT == 1223) then -- 80 Level Skill
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5246, NPC, 10, 1224);
	else
		SelectMsg(UID, 2, savenum, 5245, NPC, 10, 193);
	end
end

if (EVENT == 1224) then
	SelectMsg(UID, 4, savenum, 5247, NPC, 22, 1225, 23, 1231);
end

if (EVENT == 1225) then
	SaveEvent(UID, 5258);
	SelectMsg(UID, 2, savenum, 5248, NPC, 10, 193);
end

if (EVENT == 1231) then
	SelectMsg(UID, 2, savenum, 5249, NPC, 10, 193);
end

if (EVENT == 1226) then
	SaveEvent(UID, 5260);
	SelectMsg(UID, 2, savenum, 5252, NPC, 32, 193);
end

if (EVENT == 1228) then
	ITEM_COUNT1 = HowmuchItem(UID, 379249000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5253, NPC, 41, 1230, 27, 193);
	else
		if (ITEM_COUNTA < 1) then
			SelectMsg(UID, 2, savenum, 5251, NPC, 18, 1229);
		elseif (ITEM_COUNTB < 3) then
			SelectMsg(UID, 2, savenum, 5251, NPC, 18, 1232);
		elseif (ITEM_COUNTC < 10000000) then
			SelectMsg(UID, 2, savenum, 5251, NPC, 18, 1233);
		end
	end
end

if (EVENT == 1229) then
	ShowMap(UID, 302);
end

if (EVENT == 1232) then
	ShowMap(UID, 18);
end

if (EVENT == 1233) then
	ShowMap(UID, 336);
end

if (EVENT == 1230) then
	RobItem(UID, 379249000, 1)
	RobItem(UID, 379236000, 3)
	GoldLose(UID, 10000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5259);
end