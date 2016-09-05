local Ret = 0;
local NPC = 24203;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 335, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 336,NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 195) then
	SelectMsg(UID, 2, 69, 1233, NPC, 28, 196);
end

if (EVENT == 196) then
	ShowMap(UID, 19);
	SaveEvent(UID, 136);
end

if (EVENT == 200) then -- Level 50 Lich
	SelectMsg(UID, 2, 69, 1014, NPC, 10, 201);
end

if (EVENT == 201) then
	SelectMsg(UID, 4, 69, 1015, NPC, 22, 202, 23, 193);
end

if (EVENT == 202) then
	SaveEvent(UID, 136);
end

if (EVENT == 205) then
	SaveEvent(UID, 138);
	SelectMsg(UID, 2, 69, 1016, NPC, 21, 193);
end

if (EVENT == 210) then
	ITEM_COUNT = HowmuchItem(UID, 910090000);
	if (ITEM_COUNT < 3) then
		SelectMsg(UID, 2, 69, 1017, NPC, 18, 213);
	else
		SelectMsg(UID, 4, 69, 1018, NPC, 41, 214, 27, 193);
	end
end

if (EVENT == 213) then
	ShowMap(UID, 16);
end

if (EVENT == 214) then
	RobItem(UID, 910090000, 3)
	ExpChange(UID, 20000000)        
	SaveEvent(UID, 137);
end

if (EVENT == 334) then -- 61 Level Absolute Power Scroll
	SelectMsg(UID, 2, 215, 374, NPC, 28, 335);
end

if (EVENT == 335) then
	ShowMap(UID, 19);
	SaveEvent(UID, 555);
end

if (EVENT == 336) then
	SelectMsg(UID, 2, 215, 375, NPC, 10, 337);
end

if (EVENT == 337) then
	SelectMsg(UID, 4, 215, 376, NPC, 22, 338, 23, 193);
end

if (EVENT == 338) then
	SaveEvent(UID, 556);
end

if (EVENT == 339) then
	SaveEvent(UID, 558);
	SelectMsg(UID, 2, 215, 378, NPC, 21, 193);
end

if (EVENT == 341) then
	ITEM_COUNT1 = HowmuchItem(UID, 900017000);
	if (ITEM_COUNT1 < 7) then
		SelectMsg(UID, 2, 215, 379, NPC, 18, 342);
	else
		SelectMsg(UID, 4, 215, 380, NPC, 41, 346, 27, 193);
	end
end

if (EVENT == 342) then
	ShowMap(UID, 726);
end

if (EVENT == 346) then
	RobItem(UID, 900017000, 7)
	GiveItem(UID, 379065000, 1) 
	SaveEvent(UID, 557);
end

if (EVENT == 550) then -- 60 Level JobChange
	SaveEvent(UID, 4105);
end

if (EVENT == 551) then
	Class = CheckClass(UID);
	if (Class == 9) then
		SelectMsg(UID, 4, 408, 4108, NPC, 22, 552, 23, 553);
	else
		SelectMsg(UID, 2, 408, 4107, NPC, 10, 193);
	end
end

if (EVENT == 552) then
	SaveEvent(UID, 4106);
end

if (EVENT == 553) then
	SaveEvent(UID, 4109);
end

if (EVENT == 535) then
	SelectMsg(UID, 2, 408, 4110, NPC, 10, 193);
	SaveEvent(UID, 4108);
end

if (EVENT == 536) then
	ITEM01 = HowmuchItem(UID, 810095000);
	ITEM02 = HowmuchItem(UID, 810091000);
	ITEM03 = HowmuchItem(UID, 810092000);
	if (ITEM01 > 0 and ITEM02 > 0 and ITEM03 > 0) then
		SelectMsg(UID, 4, 408, 4111, NPC, 4006, 537, 4005, 193);
	else
		if (ITEM01 < 1) then
			SelectMsg(UID, 2, 408, 4109, NPC, 18, 538);
		elseif (ITEM02 < 1) then
			SelectMsg(UID, 2, 408, 4109, NPC, 18, 539);
		elseif (ITEM03 < 1) then
			SelectMsg(UID, 2, 408, 4109, NPC, 18, 540);
		end
	end
end

if (EVENT == 538) then
	ShowMap(UID, 681);
end

if (EVENT == 539) then
	ShowMap(UID, 714);
end

if (EVENT == 540) then
	ShowMap(UID, 712);
end

if (EVENT == 537) then
	RobItem(UID, 810095000, 1)
	RobItem(UID, 810091000, 1)
	RobItem(UID, 810092000, 1)
	PromoteUser(UID)
	SaveEvent(UID, 4107);
end

if (EVENT == 347) then -- Nostrum of Magic
	SelectMsg(UID, 2, 216, 385, NPC, 28, 348);
end

if (EVENT == 348) then
	ShowMap(UID, 19);
	SaveEvent(UID, 561);
end

if (EVENT == 349) then
	SelectMsg(UID, 2, 216, 386, NPC, 10, 350);
end

if (EVENT == 350) then
	SelectMsg(UID, 4, 216, 387, NPC, 22, 351, 23, 193);
end

if (EVENT == 351) then
	SaveEvent(UID, 562);
end

if (EVENT == 352) then
	SaveEvent(UID, 564);
	SelectMsg(UID, 2, 216, 389, NPC, 21, 193);
end

if (EVENT == 354) then
	ITEM_COUNT1 = HowmuchItem(UID, 379046000);
	ITEM_COUNT2 = HowmuchItem(UID, 379041000);
	ITEM_COUNT3 = HowmuchItem(UID, 379236000);
	if (ITEM_COUNT1 < 1) then
		SelectMsg(UID, 2, 216, 390, NPC, 18, 355);
	end
	if (ITEM_COUNT2 < 1) then
		SelectMsg(UID, 2, 216, 390, NPC, 18, 356);
	end
	if (ITEM_COUNT3 < 2) then
		SelectMsg(UID, 2, 216, 390, NPC, 18, 357);
	end
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 1) then
		SelectMsg(UID, 4, 216, 393, NPC, 41, 358, 27, 193);
	end
end

if (EVENT == 355) then
	ShowMap(UID, 24);
end

if (EVENT == 356) then
	ShowMap(UID, 317);
end

if (EVENT == 357) then
	ShowMap(UID, 19);
end

if (EVENT == 358) then
	RobItem(UID, 379046000, 1)
	RobItem(UID, 379041000, 1)
	RobItem(UID, 379236000, 2)
	GiveItem(UID, 379247000, 1) 
	SaveEvent(UID, 563);
end

if (EVENT == 359) then -- Stamp of Magic Power
	SelectMsg(UID, 2, 217, 500, NPC, 28, 360);
end

if (EVENT == 360) then
	ShowMap(UID, 19);
	SaveEvent(UID, 567);
end

if (EVENT == 361) then
	SelectMsg(UID, 2, 217, 501, NPC, 10, 362);
end

if (EVENT == 362) then
	SelectMsg(UID, 4, 217, 502, NPC, 22, 363, 23, 193);
end

if (EVENT == 363) then
	SaveEvent(UID, 568);
end

if (EVENT == 364) then
	SaveEvent(UID, 570);
	SelectMsg(UID, 2, 217, 503, NPC, 32, 193);
end

if (EVENT == 366) then
	ITEM_COUNT1 = HowmuchItem(UID, 320410012);
	ITEM_COUNT2 = HowmuchItem(UID, 320410013);
	ITEM_COUNT3 = HowmuchItem(UID, 379067000);
	if (ITEM_COUNT1 < 1) then
		SelectMsg(UID, 2, 217, 505, NPC, 18, 367);
	end
	if (ITEM_COUNT2 < 1) then
		SelectMsg(UID, 2, 217, 506, NPC, 18, 368);
	end
	if (ITEM_COUNT3 < 1) then
		SelectMsg(UID, 2, 217, 507, NPC, 18, 369);
	end
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 0) then 
		SelectMsg(UID, 4, 217, 508, NPC, 41, 370, 27, 193);
	end
end

if (EVENT == 367) then
	ShowMap(UID, 310);
end

if (EVENT == 368) then
	ShowMap(UID, 311);
end

if (EVENT == 369) then
	ShowMap(UID, 30);
end

if (EVENT == 370) then
	RobItem(UID, 320410012, 1)
	RobItem(UID, 320410013, 1)
	RobItem(UID, 379067000, 1)
	GiveItem(UID, 379248000, 1) 
	SaveEvent(UID, 569);
end

if (EVENT == 371) then -- 53 Level Magic Jewel Powder
	SelectMsg(UID, 2, 218, 1240, NPC, 28, 372);
end

if (EVENT == 372) then
	ShowMap(UID, 19);
	SaveEvent(UID, 573);
end

if (EVENT == 373) then
	SelectMsg(UID, 2, 218, 511, NPC, 10, 374);
end

if (EVENT == 374) then
	SelectMsg(UID, 4, 218, 512, NPC, 22, 375, 23, 193);
end

if (EVENT == 375) then
	SaveEvent(UID, 574);
end

if (EVENT == 376) then
	SaveEvent(UID, 576);
	SelectMsg(UID, 2, 218, 514, NPC, 21, 193);
end

if (EVENT == 378) then
	ITEM_COUNT1 = HowmuchItem(UID, 389074000);
	ITEM_COUNT2 = HowmuchItem(UID, 389075000);
	ITEM_COUNT3 = HowmuchItem(UID, 389076000);
	if (ITEM_COUNT1 < 3) then
		SelectMsg(UID, 2, 218, 515, NPC, 18, 379);
	end
	if (ITEM_COUNT2 < 3) then
		SelectMsg(UID, 2, 218, 516, NPC, 18, 379);
	end
	if (ITEM_COUNT3 < 3) then
		SelectMsg(UID, 2, 218, 517, NPC, 18, 379);
	end
	if (ITEM_COUNT1 > 2 and ITEM_COUNT2 > 2 and ITEM_COUNT3 > 2) then
		SelectMsg(UID, 4, 218, 518, NPC, 41, 382, 27, 193);
	end   
end

if (EVENT == 379) then
	ShowMap(UID, 23);
end

if (EVENT == 382) then
	RobItem(UID, 389074000, 3)
	RobItem(UID, 389075000, 3)
	RobItem(UID, 389076000, 3)
	GiveItem(UID, 379236000, 1)
	SaveEvent(UID, 575);
end

if (EVENT == 383) then -- 53 Level Spell of Thorn
	SelectMsg(UID, 2, 219, 520, NPC, 28, 384);
end

if (EVENT == 384) then
	ShowMap(UID, 19);
	SaveEvent(UID, 579);
end

if (EVENT == 385) then
	SelectMsg(UID, 2, 219, 521, NPC, 10, 386);
end

if (EVENT == 386) then
	SelectMsg(UID, 2, 219, 522, NPC, 22, 387, 23, 193);
end

if (EVENT == 387) then
	SaveEvent(UID, 580);
end

if (EVENT == 388) then
	SaveEvent(UID, 582);
	SelectMsg(UID, 2, 219, 524, NPC, 21, 193);
end

if (EVENT == 390) then
	ITEM_COUNT1 = HowmuchItem(UID, 900000000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	if (ITEM_COUNT1 < 1000000) then
		SelectMsg(UID, 2, 219, 525, NPC, 18, 393);
	end
	if (ITEM_COUNT2 < 3) then
		SelectMsg(UID, 2, 219, 526, NPC, 18, 392);
	end
	if (ITEM_COUNT1 > 999999 and ITEM_COUNT2 > 2) then
		SelectMsg(UID, 2, 219, 528, NPC, 41, 394, 27, 193);
	end
end

if (EVENT == 392) then
	ShowMap(UID, 19);
end

if (EVENT == 393) then
	ShowMap(UID, 336);
end

if (EVENT == 394) then
	RobItem(UID, 379236000, 3)
	GoldLose(UID, 1000000)
	GiveItem(UID, 379069000, 1) 
	SaveEvent(UID, 581);
end

if (EVENT == 500) then -- 56 Level Spell of İmpact
	SelectMsg(UID, 2, 220, 530, NPC, 28, 501);
end

if (EVENT == 501) then
	ShowMap(UID, 19);
	SaveEvent(UID, 585);
end

if (EVENT == 502) then
	SelectMsg(UID, 2, 220, 531, NPC, 10, 503);
end

if (EVENT == 503) then
	SelectMsg(UID, 2, 220, 532, NPC, 22, 504, 23, 193);
end

if (EVENT == 504) then
	SaveEvent(UID, 586);
end

if (EVENT == 505) then
	SaveEvent(UID, 588);
	SelectMsg(UID, 2, 220, 534, NPC, 21, 193);
end

if (EVENT == 507) then
	ITEM_COUNT1 = HowmuchItem(UID, 900017000);
	ITEM_COUNT2 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 < 7) then
		SelectMsg(UID, 2, 220, 532, NPC, 18, 508);
	end
	if (ITEM_COUNT2 < 1500000) then
		SelectMsg(UID, 2, 220, 525, NPC, 18, 509);
	end
	if (ITEM_COUNT1 > 6 and ITEM_COUNT2 > 1499999) then
		SelectMsg(UID, 2, 220, 538, NPC, 41, 511, 27, 193);
	end
end

if (EVENT == 508) then
	ShowMap(UID, 726);
end

if (EVENT == 509) then
	ShowMap(UID, 336);
end

if (EVENT == 511) then
	RobItem(UID, 900017000, 7)
	GoldLose(UID, 1500000)
	GiveItem(UID, 379070000, 1) 
	SaveEvent(UID, 587);
end

if (EVENT == 620) then -- 70 Level Skill
	SelectMsg(UID, 2, 53, 3235, NPC, 3006, 621);
end

if (EVENT == 621) then
	ShowMap(UID, 19);
	SaveEvent(UID, 3452);
end

if (EVENT == 622) then
	SelectMsg(UID, 2, 53, 3234, NPC, 3006, 621);
end

if (EVENT == 623) then
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, 53, 3236, NPC, 10, 624);
	else
		SelectMsg(UID, 2, 53, 4712, NPC, 10, 193);
	end
end

if (EVENT == 624) then
	SelectMsg(UID, 4, 53, 3237, NPC, 22, 625, 23, 631);
end

if (EVENT == 625) then
	SaveEvent(UID, 3453);
	SelectMsg(UID, 2, 53, 3238, NPC, 10, 193);
end

if (EVENT == 631) then
	SelectMsg(UID, 2, 53, 3239, NPC, 10, 193);
end

if (EVENT == 626) then
	SaveEvent(UID, 3455);
	SelectMsg(UID, 2, 53, 3242, NPC, 32, 193);
end

if (EVENT == 628) then
	ITEM_COUNT1 = HowmuchItem(UID, 379247000);
	ITEM_COUNT2 = HowmuchItem(UID, 379248000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 0 and ITEM_COUNT3 > 6999999) then
		SelectMsg(UID, 4, 53, 3243, NPC, 41, 630, 27, 193);
	else
		if (ITEM_COUNT1 < 1 or ITEM_COUNT2 < 1) then
			SelectMsg(UID, 2, 53, 3240, NPC, 18, 629);
		elseif (ITEM_COUNT3 < 7000000) then
			SelectMsg(UID, 2, 53, 3240, NPC, 18, 632);
		end
	end
end

if (EVENT == 629) then
	ShowMap(UID, 19);
end

if (EVENT == 632) then
	ShowMap(UID, 336);
end

if (EVENT == 629) then
	ShowMap(UID, 304);
end

if (EVENT == 630) then
	RobItem(UID, 379247000, 1)
	RobItem(UID, 379248000, 1)
	GoldLose(UID, 7000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 3454);
end

local savenum = 515;

if (EVENT == 920) then -- 72 Level Skill
	SelectMsg(UID, 2, savenum, 5155, NPC, 3006, 921);
end

if (EVENT == 921) then
	ShowMap(UID, 19);
	SaveEvent(UID, 5167);
end

if (EVENT == 922) then
	SelectMsg(UID, 2, savenum, 5156, NPC, 3006, 921);
end

if (EVENT == 923) then
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5158, NPC, 10, 924);
	else
		SelectMsg(UID, 2, savenum, 5157, NPC, 10, 193);
	end
end

if (EVENT == 924) then
	SelectMsg(UID, 4, savenum, 5159, NPC, 22, 925, 23, 931);
end

if (EVENT == 925) then
	SaveEvent(UID, 5168);
	SelectMsg(UID, 2, savenum, 5160, NPC, 10, 193);
end

if (EVENT == 931) then
	SelectMsg(UID, 2, savenum, 5161, NPC, 10, 193);
end

if (EVENT == 926) then
	SaveEvent(UID, 5170);
	SelectMsg(UID, 2, savenum, 5164, NPC, 32, 193);
end

if (EVENT == 928) then
	ITEM_COUNT1 = HowmuchItem(UID, 379248000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 1 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5165, NPC, 41, 930, 27, 193);
	else
		if (ITEM_COUNT1 < 1 or ITEM_COUNT2 < 2) then
			SelectMsg(UID, 2, savenum, 5162, NPC, 18, 929);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, savenum, 5162, NPC, 18, 932);
		end
	end
end

if (EVENT == 929) then
	ShowMap(UID, 19);
end

if (EVENT == 932) then
	ShowMap(UID, 336);
end

if (EVENT == 930) then
	RobItem(UID, 379248000, 1)
	RobItem(UID, 379236000, 2)
	GoldLose(UID, 10000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5169);
end

local savenum = 516;

if (EVENT == 1020) then -- 75 Level Skill
	SelectMsg(UID, 2, savenum, 5166, NPC, 3006, 1021);
end

if (EVENT == 1021) then
	ShowMap(UID, 19);
	SaveEvent(UID, 5179);
end

if (EVENT == 1022) then
	SelectMsg(UID, 2, savenum, 5167, NPC, 3006, 1021);
end

if (EVENT == 1023) then
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5169, NPC, 10, 1024);
	else
		SelectMsg(UID, 2, savenum, 5168, NPC, 10, 193);
	end
end

if (EVENT == 1024) then
	SelectMsg(UID, 4, savenum, 5170, NPC, 22, 1025, 23, 1031);
end

if (EVENT == 1025) then
	SaveEvent(UID, 5174);
	SelectMsg(UID, 2, savenum, 5171, NPC, 10, 193);
end

if (EVENT == 1031) then
	SelectMsg(UID, 2, savenum, 5172, NPC, 10, 193);
end

if (EVENT == 1026) then
	SaveEvent(UID, 5176);
	SelectMsg(UID, 2, savenum, 5175, NPC, 32, 193);
end

if (EVENT == 1028) then
	ITEM_COUNT1 = HowmuchItem(UID, 379248000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 1 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5176, NPC, 41, 1030, 27, 193);
	else
		if (ITEM_COUNT1 < 1 or ITEM_COUNT2 < 2) then
			SelectMsg(UID, 2, savenum, 5173, NPC, 18, 1029);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, savenum, 5173, NPC, 18, 1032);
		end
	end
end

if (EVENT == 1029) then
	ShowMap(UID, 19);
end

if (EVENT == 1032) then
	ShowMap(UID, 336);
end

if (EVENT == 1030) then
	RobItem(UID, 379248000, 1)
	RobItem(UID, 379236000, 2)
	GoldLose(UID, 10000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5181);
end

local savenum = 517;

if (EVENT == 1120) then -- 80 Level Skill
	SelectMsg(UID, 2, savenum, 5177, NPC, 3006, 1121);
end

if (EVENT == 1121) then
	ShowMap(UID, 19);
	SaveEvent(UID, 5191);
end

if (EVENT == 1122) then
	SelectMsg(UID, 2, savenum, 5178, NPC, 3006, 1121);
end

if (EVENT == 1123) then
	Class = CheckClass (UID);
	if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
		SelectMsg(UID, 2, savenum, 5180, NPC, 10, 1124);
	else
		SelectMsg(UID, 2, savenum, 5179, NPC, 10, 193);
	end
end

if (EVENT == 1124) then
	SelectMsg(UID, 4, savenum, 5181, NPC, 22, 1125, 23, 1131);
end

if (EVENT == 1125) then
	SaveEvent(UID, 5192);
	SelectMsg(UID, 2, savenum, 5182, NPC, 10, 193);
end

if (EVENT == 1131) then
	SelectMsg(UID, 2, savenum, 5183, NPC, 10, 193);
end

if (EVENT == 1126) then
	SaveEvent(UID, 5194);
	SelectMsg(UID, 2, savenum, 5186, NPC, 32, 193);
end

if (EVENT == 1128) then
	ITEM_COUNT1 = HowmuchItem(UID, 379247000);
	ITEM_COUNT2 = HowmuchItem(UID, 379236000);
	ITEM_COUNT3 = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT1 > 0 and ITEM_COUNT2 > 1 and ITEM_COUNT3 > 9999999) then
		SelectMsg(UID, 4, savenum, 5187, NPC, 41, 1130, 27, 193);
	else
		if (ITEM_COUNT1 < 1 or ITEM_COUNT2 < 2) then
			SelectMsg(UID, 2, savenum, 5184, NPC, 18, 1129);
		elseif (ITEM_COUNT3 < 10000000) then
			SelectMsg(UID, 2, savenum, 5184, NPC, 18, 1132);
		end
	end
end

if (EVENT == 1129) then
	ShowMap(UID, 19);
end

if (EVENT == 1132) then
	ShowMap(UID, 336);
end

if (EVENT == 1130) then
	RobItem(UID, 379247000, 1)
	RobItem(UID, 379236000, 2)
	GoldLose(UID, 10000000)
	GiveItem(UID, 900007000, 1)
	SaveEvent(UID, 5193);
end