local Ret = 0;
local NPC = 24439;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 973, NPC, 10, 168);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 973, NPC);
	else
		EVENT = QuestNum
	end
end   

if (EVENT == 102) then
	Ret = 1;
end

local savenum = 981;

if (EVENT == 111) then -- Paramun
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 120, NPC, 22, 112, 23, 113);
	else
		SelectMsg(UID, 2, savenum, 120, NPC, 10, 102);
	end
end

if (EVENT == 112) then
	SaveEvent(UID, 19);
end

if (EVENT == 113) then
	SaveEvent(UID, 25);
end

if (EVENT == 115) then
	SaveEvent(UID, 24);
end

if (EVENT == 116) then
	MonsterCount = CountMonsterQuestSub(UID, 981, 1);
	if (MonsterCount < 200) then
		SelectMsg(UID, 2, savenum, 120, NPC, 21, 117);
	else
		SelectMsg(UID, 4, savenum, 120, NPC, 41, 118, 23, 117);
	end
end

if (EVENT == 117) then
	ShowMap(UID, 78);
end

if (EVENT == 118) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1100000)
		SaveEvent(UID, 23);
	else
		ExpChange(UID, 550000)
		SaveEvent(UID, 23);
	end
end

local savenum = 982;

if (EVENT == 120) then -- Brahman
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 142, NPC, 22, 121, 23, 122);
	else
		SelectMsg(UID, 2, savenum, 142, NPC, 10, 102);
	end
end

if (EVENT == 121) then
	SaveEvent(UID, 33);
end

if (EVENT == 122) then
	SaveEvent(UID, 36);
end

if (EVENT == 124) then
	SaveEvent(UID, 35);
end

if (EVENT == 125) then
	MonsterCount = CountMonsterQuestSub(UID, 982, 1);
	if (MonsterCount < 200) then
		SelectMsg(UID, 2, savenum, 142, NPC, 21, 126);
	else
		SelectMsg(UID, 4, savenum, 142, NPC, 41, 127, 23, 126);
	end
end

if (EVENT == 126) then
	ShowMap(UID, 607);
end

if (EVENT == 127) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1100000)
		SaveEvent(UID, 34);
	else
		ExpChange(UID, 550000)
		SaveEvent(UID, 34);
	end
end

local savenum = 983;

if (EVENT == 130) then -- Troll Shaman
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 152, NPC, 22, 131, 23, 132);
	else
		SelectMsg(UID, 2, savenum, 152, NPC, 10, 102);
	end
end

if (EVENT == 131) then
	SaveEvent(UID, 43);
end

if (EVENT == 132) then
	SaveEvent(UID, 70);
end

if (EVENT == 134) then
	SaveEvent(UID, 69);
end

if (EVENT == 135) then
	MonsterCount = CountMonsterQuestSub(UID, 983, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 152, NPC, 21, 136);
	else
		SelectMsg(UID, 4, savenum, 152, NPC, 41, 137, 23, 136);
	end
end

if (EVENT == 136) then
	ShowMap(UID, 84);
end

if (EVENT == 137) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 2000000)
		SaveEvent(UID, 44);
	else
		ExpChange(UID, 1000000)
		SaveEvent(UID, 44);
	end
end

local savenum = 984;

if (EVENT == 140) then -- Apostle of Piercing Cold
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 171, NPC, 22, 141, 23, 142);
	else
		SelectMsg(UID, 2, savenum, 171, NPC, 10, 102);
	end
end

if (EVENT == 141) then
	SaveEvent(UID, 84);
end

if (EVENT == 142) then
	SaveEvent(UID, 87);
end

if (EVENT == 144) then
	SaveEvent(UID, 86);
end

if (EVENT == 145) then
	MonsterCount = CountMonsterQuestSub(UID, 984, 1);
	if (MonsterCount < 120) then
		SelectMsg(UID, 2, savenum, 171, NPC, 21, 146);
	else
		SelectMsg(UID, 4, savenum, 171, NPC, 41, 147, 23, 146);
	end
end

if (EVENT == 146) then
	ShowMap(UID, 616);
end

if (EVENT == 147) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 85);
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 85);
	end
end

local savenum = 985;

if (EVENT == 150) then -- Apostle of Flame
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 194, NPC, 22, 151, 23, 152);
	else
		SelectMsg(UID, 2, savenum, 194, NPC, 10, 102);
	end
end

if (EVENT == 151) then
	SaveEvent(UID, 108);
end

if (EVENT == 152) then
	SaveEvent(UID, 111);
end

if (EVENT == 154) then
	SaveEvent(UID, 110);
end

if (EVENT == 155) then
	MonsterCount = CountMonsterQuestSub(UID, 985, 1);
	if (MonsterCount < 120) then
		SelectMsg(UID, 2, savenum, 142, NPC, 21, 156);
	else
		SelectMsg(UID, 4, savenum, 142, NPC, 41, 157, 23, 156);
	end
end

if (EVENT == 156) then
	ShowMap(UID, 618);
end

if (EVENT == 157) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 109);
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 109);
	end
end

local savenum = 1015;

if (EVENT == 170) then -- Troll Berserker
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 971, NPC, 22, 171, 23, 172);
	else
		SelectMsg(UID, 2, savenum, 971, NPC, 10, 102);
	end
end

if (EVENT == 171) then
	SaveEvent(UID, 707);
end

if (EVENT == 172) then
	SaveEvent(UID, 710);
end

if (EVENT == 174) then
	SaveEvent(UID, 709);
end

if (EVENT == 175) then
	MonsterCount = CountMonsterQuestSub(UID, 1015, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 142, NPC, 21, 176);
	else
		SelectMsg(UID, 4, savenum, 142, NPC, 41, 177, 23, 176);
	end
end

if (EVENT == 176) then
	ShowMap(UID, 130);
end

if (EVENT == 177) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 708);
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 708);
	end
end

local savenum = 1013;

if (EVENT == 160) then -- Troll Warrior
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 964, NPC, 22, 161, 23, 162);
	else
		SelectMsg(UID, 2, savenum, 964, NPC, 10, 102);
	end
end

if (EVENT == 161) then
	SaveEvent(UID, 9992);
end

if (EVENT == 162) then
	SaveEvent(UID, 7758);
end

if (EVENT == 164) then
	SaveEvent(UID, 7738);
end

if (EVENT == 165) then
	MonsterCount = CountMonsterQuestSub(UID, 1013, 1);
	if (MonsterCount < 200) then
		SelectMsg(UID, 2, savenum, 964, NPC, 21, 166);
	else
		SelectMsg(UID, 4, savenum, 964, NPC, 41, 167, 23, 166);
	end
end

if (EVENT == 166) then
	ShowMap(UID, 128);
end

if (EVENT == 167) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1000000)
		SaveEvent(UID, 7737);
	else
		ExpChange(UID, 400000)
		SaveEvent(UID, 7737);
	end
end