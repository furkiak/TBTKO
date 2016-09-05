local Ret = 0;
local NPC = 14439;

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
		SelectMsg(UID, 4, savenum, 129, NPC, 22, 112, 23, 113);
	else
		SelectMsg(UID, 2, savenum, 129, NPC, 10, 102);
	end
end

if (EVENT == 112) then
	SaveEvent(UID, 28);
end

if (EVENT == 113) then
	SaveEvent(UID, 31);
end

if (EVENT == 115) then
	SaveEvent(UID, 30);
end

if (EVENT == 116) then
	MonsterCount = CountMonsterQuestSub(UID, 981, 1);
	if (MonsterCount < 200) then
		SelectMsg(UID, 2, savenum, 120, NPC, 18, 117);
	else
		SelectMsg(UID, 4, savenum, 120, NPC, 41, 118, 23, 117);
	end
end

if (EVENT == 117) then
	ShowMap(UID, 79);
end

if (EVENT == 118) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1100000)
		SaveEvent(UID, 29);
	else
		ExpChange(UID, 550000)
		SaveEvent(UID, 29);
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
	SaveEvent(UID, 38);
end

if (EVENT == 122) then
	SaveEvent(UID, 41);
end

if (EVENT == 124) then
	SaveEvent(UID, 40);
end

if (EVENT == 125) then
	MonsterCount = CountMonsterQuestSub(UID, 982, 1);
	if (MonsterCount < 200) then
		SelectMsg(UID, 2, savenum, 142, NPC, 18, 126);
	else
		SelectMsg(UID, 4, savenum, 142, NPC, 41, 127, 23, 126);
	end
end

if (EVENT == 126) then
	ShowMap(UID, 606);
end

if (EVENT == 127) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1100000)
		SaveEvent(UID, 39);
	else
		ExpChange(UID, 550000)
		SaveEvent(UID, 39);
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
	SaveEvent(UID, 79);
end

if (EVENT == 132) then
	SaveEvent(UID, 82);
end

if (EVENT == 134) then
	SaveEvent(UID, 81);
end

if (EVENT == 135) then
	MonsterCount = CountMonsterQuestSub(UID, 983, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 152, NPC, 18, 136);
	else
		SelectMsg(UID, 4, savenum, 152, NPC, 41, 137, 23, 136);
	end
end

if (EVENT == 136) then
	ShowMap(UID, 85);
end

if (EVENT == 137) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 2000000)
		SaveEvent(UID, 80);
	else
		ExpChange(UID, 1000000)
		SaveEvent(UID, 80);
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
	SaveEvent(UID, 89);
end

if (EVENT == 142) then
	SaveEvent(UID, 106);
end

if (EVENT == 144) then
	SaveEvent(UID, 105);
end

if (EVENT == 145) then
	MonsterCount = CountMonsterQuestSub(UID, 984, 1);
	if (MonsterCount < 120) then
		SelectMsg(UID, 2, savenum, 171, NPC, 18, 146);
	else
		SelectMsg(UID, 4, savenum, 171, NPC, 41, 147, 23, 146);
	end
end

if (EVENT == 146) then
	ShowMap(UID, 615);
end

if (EVENT == 147) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 90);
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 90);
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
	SaveEvent(UID, 255);
end

if (EVENT == 152) then
	SaveEvent(UID, 258);
end

if (EVENT == 154) then
	SaveEvent(UID, 257);
end

if (EVENT == 155) then
	MonsterCount = CountMonsterQuestSub(UID, 985, 1);
	if (MonsterCount < 120) then
		SelectMsg(UID, 2, savenum, 142, NPC, 18, 156);
	else
		SelectMsg(UID, 4, savenum, 142, NPC, 41, 157, 23, 156);
	end
end

if (EVENT == 156) then
	ShowMap(UID, 617);
end

if (EVENT == 157) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 256);
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 256);
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
	SaveEvent(UID, 712);
end

if (EVENT == 172) then
	SaveEvent(UID, 715);
end

if (EVENT == 174) then
	SaveEvent(UID, 714);
end

if (EVENT == 175) then
	MonsterCount = CountMonsterQuestSub(UID, 1015, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 142, NPC, 18, 176);
	else
		SelectMsg(UID, 4, savenum, 142, NPC, 41, 177, 23, 176);
	end
end

if (EVENT == 176) then
	ShowMap(UID, 131);
end

if (EVENT == 177) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 713);
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 713);
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
	SaveEvent(UID, 7742);
end

if (EVENT == 162) then
	SaveEvent(UID, 7748);
end

if (EVENT == 164) then
	SaveEvent(UID, 7747);
end

if (EVENT == 165) then
	MonsterCount = CountMonsterQuestSub(UID, 1013, 1);
	if (MonsterCount < 200) then
		SelectMsg(UID, 2, savenum, 964, NPC, 18, 166);
	else
		SelectMsg(UID, 4, savenum, 964, NPC, 41, 167, 23, 166);
	end
end

if (EVENT == 166) then
	ShowMap(UID, 129);
end

if (EVENT == 167) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1000000)
		SaveEvent(UID, 7743);
	else
		ExpChange(UID, 400000)
		SaveEvent(UID, 7743);
	end
end