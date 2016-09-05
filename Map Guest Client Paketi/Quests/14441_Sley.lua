local Ret = 0;
local NPC = 14441;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 3003, NPC, 10, 193);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 3200, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 1830;

if (EVENT == 1000) then -- 36 Level Rotten Eyes Premium
	SelectMsg(UID, 2, savenum, 841, NPC, 10, 1001);
end

if (EVENT == 1001) then
	SaveEvent(UID, 2019);
end

if (EVENT == 1002) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 841, NPC, 22, 1003, 23, 1004);
	else
		SelectMsg(UID, 2, savenum, 841, NPC, 10, 193);
	end
end

if (EVENT == 1003) then
	SaveEvent(UID, 2020);
end

if (EVENT == 1004) then
	SaveEvent(UID, 2023);
end

if (EVENT == 1010) then
	SaveEvent(UID, 2022);
end

if (EVENT == 1006) then
	MonsterCount = CountMonsterQuestSub(UID, 1830, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum, 732, NPC, 18, 1007);
	else
		SelectMsg(UID, 4, savenum, 8467, NPC, 41, 1008, 23, 193);
	end
end

if (EVENT == 1007) then
	ShowMap(UID, 98);
end

if (EVENT == 1008) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 280000)
		SaveEvent(UID, 2021);   
	else
		ExpChange(UID, 200000)
		SaveEvent(UID, 2021);
	end
end

local savenum = 830;

if (EVENT == 8400) then -- 36 Level Rotten Eyes
	SelectMsg(UID, 2, savenum, 797, NPC, 10, 8401);
end

if (EVENT == 8401) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8490);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8495);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8500);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8505);
	end
end

if (EVENT == 8402) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 797, NPC, 22, 8403, 23, 8404);
	else
		SelectMsg(UID, 2, savenum, 797, NPC, 10, 193);
	end
end   

if (EVENT == 8403) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8491);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8496);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8501);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8506);
	end
end

if (EVENT == 8404) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8494);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8499);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8504);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8509);
	end
end

if (EVENT == 8410) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8493);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8498);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8503);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8508);
	end
end

if (EVENT == 8406) then
	MonsterCount = CountMonsterQuestSub(UID, 830, 1);
	if (MonsterCount < 15) then
		SelectMsg(UID, 2, savenum, 797, NPC, 18, 8407);
	else
		SelectMsg(UID, 4, savenum, 797, NPC, 41, 8408, 23, 193);
	end
end

if (EVENT == 8407) then
	ShowMap(UID, 98);
end

if (EVENT == 8408) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 205005289, 1)
		ExpChange(UID, 300000)
		SaveEvent(UID, 8492);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		GiveItem(UID, 245005290, 1)
		ExpChange(UID, 300000)
		SaveEvent(UID, 8497);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		GiveItem(UID, 265005291, 1)
		ExpChange(UID, 300000)
		SaveEvent(UID, 8502);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		GiveItem(UID, 285005292, 1)
		ExpChange(UID, 300000)
		SaveEvent(UID, 8507);
	end
end

local savenum = 1854;

if (EVENT == 1100) then
	SelectMsg(UID, 2, savenum, 841, NPC, 10, 1101);
end

if (EVENT == 1101) then
	SaveEvent(UID, 2091);
end

if (EVENT == 1102) then -- 42 Level Battalion Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 841, NPC, 22, 1103, 23, 1104);
	else
		SelectMsg(UID, 2, savenum, 841, NPC, 10, 193);
	end
end

if (EVENT == 1103) then
	SaveEvent(UID, 2092);
end

if (EVENT == 1104) then
	SaveEvent(UID, 2095);
end

if (EVENT == 1110) then
	SaveEvent(UID, 2094);
end

if (EVENT == 1106) then
	MonsterCount = CountMonsterQuestSub(UID, 1854, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, savenum, 732, NPC, 18, 1107);
	else
		SelectMsg(UID, 4, savenum, 8467, NPC, 41, 1108, 23, 193);
	end
end

if (EVENT == 1107) then
	ShowMap(UID, 110);
end

if (EVENT == 1108) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 560000)
		SaveEvent(UID, 2093);   
	else
		ExpChange(UID, 400000)
		SaveEvent(UID, 2093);
	end
end

local savenum = 854;

if (EVENT == 8850) then -- 42 Level Battalion
	SelectMsg(UID, 2, savenum, 841, NPC, 10, 8851);
end

if (EVENT == 8851) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8742);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8747);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8752);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8757);
	end
end

if (EVENT == 8852) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 841, NPC, 22, 8853, 23, 8854);
	else
		SelectMsg(UID, 2, savenum, 8467, NPC, 10, 193);
	end
end   

if (EVENT == 8853) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8743);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8748);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8753);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8758);
	end
end

if (EVENT == 8854) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8746);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8751);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8756);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8761);
	end
end

if (EVENT == 8860) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8745);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8750);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8755);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8760);
	end
end

if (EVENT == 8856) then
	MonsterCount = CountMonsterQuestSub(UID, 854, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, savenum, 732, NPC, 18, 8857);
	else
		SelectMsg(UID, 4, savenum, 8467, NPC, 41, 8858, 23, 193);
	end
end

if (EVENT == 8857) then
	ShowMap(UID, 110);
end

if (EVENT == 8858) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 205004005, 1)
		ExpChange(UID, 900000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8744);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		GiveItem(UID, 245004005, 1)
		ExpChange(UID, 900000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8749);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		GiveItem(UID, 265004005, 1)
		ExpChange(UID, 900000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8754);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		GiveItem(UID, 285004005, 1)
		ExpChange(UID, 900000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8759);
	end
end