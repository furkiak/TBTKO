local Ret = 0;
local NPC = 13009;

if (EVENT == 3000) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 1186, NPC, 10, 3001);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 1187, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 3001) then
	Ret = 1;
end

if (EVENT == 3002) then -- 12 Level Orc Duel
	SelectMsg(UID, 2, 11, 1188, NPC, 28, 3003);
end

if (EVENT == 3003) then
	ShowMap(UID, 6);
	SaveEvent(UID, 3033);
end

if (EVENT == 3004) then
	SelectMsg(UID, 2, 11, 1189, NPC, 10, 3003);
end

if (EVENT == 3005) then
	SelectMsg(UID, 2, 11, 1190, NPC, 10, 3006);
end

if (EVENT == 3006) then
	SelectMsg(UID, 4, 11, 1191, NPC, 22, 3007, 23, 3001);
end

if (EVENT == 3007) then
	ZoneChange(UID, 51, 150, 150)
	SaveEvent(UID, 3034);
end

if (EVENT == 3008) then
	SaveEvent(UID, 3036);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 11, 1192, NPC, 32, 3009);
	else
		SelectMsg(UID, 2, 11, 1193, NPC, 21, 3009);
	end
end

if (EVENT == 3009) then
	ShowMap(UID, 6);
end

if (EVENT == 3010) then
	ITEM_COUNT = HowmuchItem(UID, 910038000);
	if (ITEM_COUNT < 5) then
		SelectMsg(UID, 2, 11, 1194, NPC, 18, 3011);
	else
		SelectMsg(UID, 4, 11, 1195, NPC, 4006, 3012, 4005, 3001);
	end
end

if (EVENT == 3011) then
	ZoneChange(UID, 51, 150, 150)
end

if (EVENT == 3012) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then   
		RobItem(UID, 910038000, 5)
		GoldGain(UID, 30000)
		ExpChange(UID, 4000)
		GiveItem(UID, 202001005, 1)
		SaveEvent(UID, 3035);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		RobItem(UID, 910038000, 5)
		GoldGain(UID, 30000)
		ExpChange(UID, 4000)
		GiveItem(UID, 242001005, 1)
		SaveEvent(UID, 3035);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		RobItem(UID, 910038000, 5)
		GoldGain(UID, 30000)
		ExpChange(UID, 4000)
		GiveItem(UID, 262001005, 1)
		SaveEvent(UID, 3035);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		RobItem(UID, 910038000, 5)
		GoldGain(UID, 30000)
		ExpChange(UID, 4000)
		GiveItem(UID, 282001005, 1)
		SaveEvent(UID, 3035);
	end
end

if (EVENT == 6060) then -- 21 Level Gem of Bravery
	SelectMsg(UID, 2, 7, 6014, NPC, 28, 6061);
end

if (EVENT == 6061) then
	ShowMap(UID, 6);
	SaveEvent(UID, 6023);
end

if (EVENT == 6062) then
	SelectMsg(UID, 2, 7, 6015, NPC, 10, 6061);
end

if (EVENT == 6063) then
	SelectMsg(UID, 2, 7, 6016, NPC, 10, 6064);
end

if (EVENT == 6064) then
	SelectMsg(UID, 4, 7, 6017, NPC, 22, 6065, 23, 3001);
end

if (EVENT == 6065) then
	ZoneChange(UID, 52, 150, 150)
	SaveEvent(UID, 6024);
end

if (EVENT == 6066) then
	SaveEvent(UID, 6026);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 7, 6019, NPC, 32, 6067);
	else
		SelectMsg(UID, 2, 7, 6020, NPC, 21, 6067);
	end
end

if (EVENT == 6067) then
	ShowMap(UID, 6);
end

if (EVENT == 6068) then
	ITEM_COUNT = HowmuchItem(UID, 910039000);
	if (ITEM_COUNT < 10) then
		SelectMsg(UID, 2, 7, 6021, NPC, 18, 6069);
	else
		SelectMsg(UID, 4, 7, 6022, NPC, 4006, 6070, 4005, 3001);
	end
end

if (EVENT == 6069) then
	ZoneChange(UID, 52, 150, 150)
end

if (EVENT == 6070) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then   
		RobItem(UID, 910039000, 10)
		ExpChange(UID, 60000)
		GiveItem(UID, 202001006, 1)
		SaveEvent(UID, 6025);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		RobItem(UID, 910039000, 10)
		ExpChange(UID, 60000)
		GiveItem(UID, 242001006, 1)
		SaveEvent(UID, 6025);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		RobItem(UID, 910039000, 10)
		ExpChange(UID, 60000)
		GiveItem(UID, 262001006, 1)
		SaveEvent(UID, 6025);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		RobItem(UID, 910039000, 10)
		ExpChange(UID, 60000)
		GiveItem(UID, 282001006, 1)
		SaveEvent(UID, 6025);
	end	 
end

if (EVENT == 6080) then -- 40 Level Goblin
	SelectMsg(UID, 2, 602, 6030, NPC, 28, 6061);
end

if (EVENT == 6081) then
	ShowMap(UID, 6);
	SaveEvent(UID, 6033);
end

if (EVENT == 6082) then
	SelectMsg(UID, 2, 602, 6031, NPC, 10, 6081);
end

if (EVENT == 6083) then
	SelectMsg(UID, 2, 602, 6032, NPC, 10, 6084);
end

if (EVENT == 6084) then
	Level = CheckLevel(UID)
	if (Level > 1 and Level < 39) then  
		SelectMsg(UID, 2, 602, 6033, NPC, 10, 3001);
	elseif (Level == 40) then
		SelectMsg(UID, 2, 602, 6034, NPC, 59, 6085, 60, 3001);
	else
		SelectMsg(UID, 2, 602, 6035, NPC, 10, 3001);
	end
end

if (EVENT == 6085) then
	ZoneChange(UID, 53, 150, 150)
	SaveEvent(UID, 6034);
end

if (EVENT == 6086) then
	Level = CheckLevel(UID)
	if (Level == 41) then
		SaveEvent(UID, 6035);
		NATION = CheckNation(UID);
		if (NATION == 1) then
			SelectMsg(UID, 2, 602, 6036, NPC, 61, 3001);
		else
			SelectMsg(UID, 2, 602, 6037, NPC, 62, 3001);
		end
	end
end

local savenum = 444;

if (EVENT == 630) then -- 75 Level Dragon Cave Hunt
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4377);
		EVENT = 631
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4382);
		EVENT = 631
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4387);
		EVENT = 631
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4392);
		EVENT = 631
	end
end

if (EVENT == 631) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, savenum, 4635, NPC, 4080, 193);
	else
		SelectMsg(UID, 2, savenum, 4636, NPC, 4080, 193);
	end
end

if (EVENT == 632) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 4637, NPC, 22, 633, 23, 3001);
	else
		SelectMsg(UID, 2, savenum, 4638, NPC, 10, 3001);
	end
end

if (EVENT == 633) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4378);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4383);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4388);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4393);
	end
end

if (EVENT == 280) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4380);
		EVENT = 281
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4385);
		EVENT = 281
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4390);
		EVENT = 281
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4395);
		EVENT = 281
	end
end

if (EVENT == 281) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, savenum, 4639, NPC, 4080, 193);
	else
		SelectMsg(UID, 2, savenum, 4640, NPC, 4080, 193);
	end
end

if (EVENT == 636) then
	MonsterCount = CountMonsterQuestSub(UID, 444, 1);
	if (MonsterCount < 1) then
		SelectMsg(UID, 2, savenum, 4641, NPC, 10, 193);
	else
		SelectMsg(UID, 4, savenum, 4642, NPC, 4161, 637, 4162, 193);
	end
end

if (EVENT == 637) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 156210005, 1)
		SaveEvent(UID, 4379);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		GiveItem(UID, 111210005, 1)
		GiveItem(UID, 168410005, 1)
		SaveEvent(UID, 4384); 
	elseif (Class == 3 or Class == 9 or Class == 10) then
		GiveItem(UID, 181110005, 1)
		SaveEvent(UID, 4389); 
	elseif (Class == 4 or Class == 11 or Class == 12) then
		GiveItem(UID, 170210275, 1)
		SaveEvent(UID, 4394); 
	end	 
end