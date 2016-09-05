local Ret = 0;
local NPC = 19002;

if (EVENT == 165) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 661, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 661, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 235;

if (EVENT == 320) then -- 18 Level Wolfman Tail
	SaveEvent(UID, 531);
end

if (EVENT == 322) then
	SelectMsg(UID, 4, savenum, 663, NPC, 22, 323, 23, 324);
end

if (EVENT == 323) then
	SaveEvent(UID, 532);
end

if (EVENT == 324) then
	SaveEvent(UID, 535);
end

if (EVENT == 325) then
	SelectMsg(UID, 2, savenum, 662, NPC, 10, 193);
	SaveEvent(UID, 534);
end

if (EVENT == 326) then
	ITEMA = HowmuchItem(UID, 910165000);
	if (ITEMA < 10) then
		SelectMsg(UID, 2, savenum, 663, NPC, 18, 327);
	else
		SelectMsg(UID, 4, savenum, 663, NPC, 41, 329, 27, 193);
	end
end

if (EVENT == 327) then
	ShowMap(UID, 523);
end

if (EVENT == 329) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		RobItem(UID, 910165000, 10)
		ExpChange(UID, 12000)
		GoldGain(UID, 100000)
		GiveItem(UID, 202002006, 1)
		SaveEvent(UID, 533);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		RobItem(UID, 910165000, 10)
		ExpChange(UID, 12000)
		GoldGain(UID, 100000)
		GiveItem(UID, 242002006, 1)
		SaveEvent(UID, 533);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		RobItem(UID, 910165000, 10)
		ExpChange(UID, 12000)
		GoldGain(UID, 100000)
		GiveItem(UID, 262002006, 1)
		SaveEvent(UID, 533);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		RobItem(UID, 910165000, 10)
		ExpChange(UID, 12000)
		GoldGain(UID, 100000)
		GiveItem(UID, 282002006, 1)
		SaveEvent(UID, 533);
	end
end

local savenum = 559;

if (EVENT == 100) then -- 31 Level Pincer Poison
	SaveEvent(UID, 9958);
end

if (EVENT == 102) then
	SelectMsg(UID, 4, savenum, 4943, NPC, 22, 103, 23, 104);
end

if (EVENT == 103) then
	SaveEvent(UID, 9959);
end

if (EVENT == 104) then
	SaveEvent(UID, 9962);
end

if (EVENT == 105) then
	SelectMsg(UID, 2, savenum, 4944, NPC, 10, 193);
	SaveEvent(UID, 9961);
end

if (EVENT == 106) then
	ITEM = HowmuchItem(UID, 392011000);
	if (ITEM < 3) then
		SelectMsg(UID, 2, savenum, 4945, NPC, 18, 107);
	else
		SelectMsg(UID, 4, savenum, 4943, NPC, 41, 108, 27, 193);
	end
end

if (EVENT == 107) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		ShowMap(UID, 137);
	else
		ShowMap(UID, 138);
	end
end

if (EVENT == 108) then
	RobItem(UID, 392011000, 3)
	ExpChange(UID, 200000)
	SaveEvent(UID, 9960);
end

local savenum = 560;

if (EVENT == 200) then -- 32 Level Wolfman Tail & Wolf Hide
	SaveEvent(UID, 9970);
end

if (EVENT == 202) then
	SelectMsg(UID, 4, savenum, 4955, NPC, 22, 203, 23, 204);
end

if (EVENT == 203) then
	SaveEvent(UID, 9971);
end

if (EVENT == 204) then
	SaveEvent(UID, 9974);
end

if (EVENT == 205) then
	SelectMsg(UID, 2, savenum, 4956, NPC, 10, 193);
	SaveEvent(UID, 9973);
end

if (EVENT == 206) then
	ITEMW = HowmuchItem(UID, 910165000);
	ITEMW2 = HowmuchItem(UID, 379254000);
	if (ITEMW < 5 or ITEMW2 < 5) then
		SelectMsg(UID, 2, savenum, 4957, NPC, 18, 207);
	elseif (ITEMW > 4 and ITEMW2 > 4) then
		SelectMsg(UID, 4, savenum, 4958, NPC, 41, 208, 27, 193);
	end
end

if (EVENT == 207) then
	ShowMap(UID, 629);
end

if (EVENT == 208) then
	RobItem(UID, 910165000, 5)
	RobItem(UID, 379254000, 5)
	ExpChange(UID, 220000)
	SaveEvent(UID, 9972);
end

local savenum = 561;

if (EVENT == 210) then -- 33 Level Smirdon Meat
	SaveEvent(UID, 9982);
end

if (EVENT == 212) then
	SelectMsg(UID, 4, savenum, 571, NPC, 22, 213, 23, 214);
end

if (EVENT == 213) then
	SaveEvent(UID, 9983);
end

if (EVENT == 214) then
	SaveEvent(UID, 9986);
end

if (EVENT == 215) then
	SelectMsg(UID, 2, savenum, 571, NPC, 10, 193);
	SaveEvent(UID, 9985);
end

if (EVENT == 216) then
	ITEMS = HowmuchItem(UID, 379270000);
	if (ITEMS < 5) then
		SelectMsg(UID, 2, savenum, 571, NPC, 18, 217);
	else
		SelectMsg(UID, 4, savenum, 571, NPC, 41, 218, 27, 193);
	end
end

if (EVENT == 217) then
	ShowMap(UID, 525);
end

if (EVENT == 218) then
	RobItem(UID, 379270000, 5)
	ExpChange(UID, 250000)
	SaveEvent(UID, 9984);
end

local savenum = 562;

if (EVENT == 220) then -- 34 Level Smirdon Hide
	SaveEvent(UID, 9994);
end

if (EVENT == 222) then
	SelectMsg(UID, 4, savenum, 4979, NPC, 22, 223, 23, 224);
end

if (EVENT == 223) then
	SaveEvent(UID, 9995);
end

if (EVENT == 224) then
	SaveEvent(UID, 9998);
end

if (EVENT == 225) then
	SelectMsg(UID, 2, savenum, 4980, NPC, 10, 193);
	SaveEvent(UID, 9997);
end

if (EVENT == 226) then
	ITEMS = HowmuchItem(UID, 379271000);
	if (ITEMS < 5) then
		SelectMsg(UID, 2, savenum, 4981, NPC, 18, 227);
	else
		SelectMsg(UID, 4, savenum, 4982, NPC, 41, 228, 27, 193);
	end
end

if (EVENT == 227) then
	ShowMap(UID, 572);
end

if (EVENT == 228) then
	RobItem(UID, 379271000, 5)
	ExpChange(UID, 270000)
	SaveEvent(UID, 9996);
end