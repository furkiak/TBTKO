local Ret = 0;
local NPC = 21510;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 664, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 664, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 195) then -- 44 Level Recons
	SaveEvent(UID, 467);
end

if (EVENT == 200) then
	SelectMsg(UID, 2, 8, 1173, NPC, 10, 201);
end

if (EVENT == 201) then
	SelectMsg(UID, 4, 8, 1174, NPC, 22, 202, 23, 193);
end

if (EVENT == 202) then
	Check = isRoomForItem(UID, 910044000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 193);
	else
		GiveItem(UID, 910044000, 1)
		SaveEvent(UID, 468);
	end
end

if (EVENT == 205) then
	SelectMsg(UID, 2, 8, 1175, NPC, 10, 193);
	SaveEvent(UID, 470);
end

if (EVENT == 210) then
	ITEMA = HowmuchItem(UID, 910040000);
	ITEMB = HowmuchItem(UID, 910041000);
	if (ITEMA < 3) then 
		SelectMsg(UID, 2, 8, 1177, NPC, 18, 213);
	elseif (ITEMB < 1) then
		SelectMsg(UID, 2, 8, 1178, NPC, 18, 213);
	elseif (ITEMA > 2 and ITEMB > 0) then
		SelectMsg(UID, 4, 8, 1179, NPC, 41, 214, 27, 193);
	end
end

if (EVENT == 213) then
	ShowMap(UID, 46);
end

if (EVENT == 214) then
	RobItem(UID, 910040000, 3)
	RobItem(UID, 910041000, 1)
	ExpChange(UID, 1000000)
	GoldGain(UID, 100000)
	SaveEvent(UID, 469);
end

local savenum = 603;

if (EVENT == 6092) then -- 46 Level Quest Area
	SelectMsg(UID, 2, savenum, 6065, NPC, 6007, 6093, 4005, 193);
end

if (EVENT == 6093) then
	ITEM_COUNT = HowmuchItem(UID, 910135000);   
	ITEM_COUNT1 = HowmuchItem(UID, 910138000);
	if (ITEM_COUNT < 1 or ITEM_COUNT1 < 3) then
		SelectMsg(UID, 4, savenum, 6067, NPC, 4543, 6095, 4191, 193);
	elseif (ITEM_COUNT > 0 and ITEM_COUNT1 > 2) then
		SelectMsg(UID, 4, savenum, 6070, NPC, 4006, 7004, 4005, 193);
	end
end

if (EVENT == 6095) then
	PartyCheck = isInParty(UID);
	if (PartyCheck) then
		ZoneChangeParty(UID, 81, 202, 199);
		EVENT = 6096
	else
		SelectMsg(UID, 2, savenum, 6068, NPC, 10, 193);
	end
end

if (EVENT == 6096) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 6040);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 6046);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 6052);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 6058);
	end
end

if (EVENT == 6094) then
	ITEM_COUNT = HowmuchItem(UID, 910135000);   
	ITEM_COUNT1 = HowmuchItem(UID, 910138000);
	if (ITEM_COUNT < 1 or ITEM_COUNT1 < 3) then
		SelectMsg(UID, 4, savenum, 6043, NPC, 4543, 6095, 4191, 193);
	elseif (ITEM_COUNT > 0 and ITEM_COUNT1 > 2) then
		SelectMsg(UID, 4, savenum, 6043, NPC, 4006, 7004, 4005, 193);
	end
end

if (EVENT == 7000) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 6042);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 6048);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 6054);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 6060);
	end
end

if (EVENT == 7004) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		EVENT = 7005
	elseif (Class == 2 or Class == 7 or Class == 8) then
		EVENT = 7006
	elseif (Class == 3 or Class == 9 or Class == 10) then
		EVENT = 7007
	elseif (Class == 4 or Class == 11 or Class == 12) then
		EVENT = 7008
	end
end

if (EVENT == 7005) then
	GoldGain(UID, 100000)
	ExpChange(UID, 1000000)
	RobItem(UID, 910135000, 1)
	RobItem(UID , 910138000, 3)
	GiveItem(UID, 972190733, 1)
	GiveItem(UID, 972230788, 1)
	GiveItem(UID, 972260823, 1)
	GiveItem(UID, 972270431, 1)
	SaveEvent(UID, 6041);
end 

if (EVENT == 7006) then
	GoldGain(UID, 100000)
	ExpChange(UID, 1000000)
	RobItem(UID, 910135000, 1)
	RobItem(UID , 910138000, 3)
	GiveItem(UID, 972200491, 1)
	GiveItem(UID, 972200491, 1)
	GiveItem(UID, 972240919, 1)
	SaveEvent(UID, 6047); 
end

if (EVENT == 7007) then
	GoldGain(UID, 100000)
	ExpChange(UID, 1000000)
	RobItem(UID, 910135000, 1)
	RobItem(UID , 910138000, 3)
	GiveItem(UID, 972210359, 1)
	GiveItem(UID, 972210367, 1)
	GiveItem(UID, 972210375, 1)
	SaveEvent(UID, 6053);
end

if (EVENT == 7008) then
	GoldGain(UID, 100000)
	ExpChange(UID, 1000000)
	RobItem(UID, 910135000, 1)
	RobItem(UID, 910138000, 3)
	GiveItem(UID, 972220761, 1)
	GiveItem(UID, 972250765, 1)
	SaveEvent(UID, 6059); 
end

if (EVENT == 532) then -- 50 Level 7 Keys Quest
	SelectMsg(UID, 4, 9, 4196, NPC, 22, 533, 23, 534);
end

if (EVENT == 533) then
	Check = isRoomForItem(UID, 910050000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 193);
	else
		GiveItem(UID, 910050000, 1)
		SaveEvent(UID, 4206);
	end
end

if (EVENT == 534) then
	SaveEvent(UID, 4209);
end

if (EVENT == 538) then
	SaveEvent(UID, 4208);
end

if (EVENT == 536) then
	ITEM7 = HowmuchItem(UID, 910057000);
	if (ITEM7 > 0) then
		SelectMsg(UID, 4, 9, 4197, NPC, 4172, 537, 4173, 193);
	else
		SelectMsg(UID, 2, 9, 4198, NPC, 18, 192);
	end
end

if (EVENT == 192) then
	ShowMap(UID, 432);
end

if (EVENT == 537) then
	RobItem(UID, 910057000, 1)
	ExpChange(UID, 15218948)
	SaveEvent(UID, 4207);
end

if (EVENT == 1000) then -- 47 Level Border Security Scroll
	SaveEvent(UID, 2452);
end

if (EVENT == 1001) then
	SelectMsg(UID, 4, 202, 9238, NPC, 22, 1002, 23, 1003);
end

if (EVENT == 1002) then
	SaveEvent(UID, 2453);
end   

if (EVENT == 1003) then
	SaveEvent(UID, 2456);
end

if (EVENT == 1006) then
	SaveEvent(UID, 2455);
end

if (EVENT == 1007) then
	ITEMBDW = HowmuchItem(UID, 900143000);
	if (ITEMBDW < 1) then
		SelectMsg(UID, 2, 202, 9238, NPC, 18, 191);
	else
		SelectMsg(UID, 4, 202, 9238, NPC, 4006, 1008, 4005, 193);
	end
end

if (EVENT == 191) then
	ShowMap(UID, 726);
end

if (EVENT == 1008) then
	RobItem(UID, 900143000, 1)
	ExpChange(UID, 1000000)
	SaveEvent(UID, 2454);
end