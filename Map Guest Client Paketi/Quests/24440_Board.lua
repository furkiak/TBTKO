local Ret = 0;
local NPC = 24440;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 411, NPC, 10, 168);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 411, NPC);
	else
		EVENT = QuestNum
	end
end   

if (EVENT == 102) then
	Ret = 1;
end

local savenum = 997;

if (EVENT == 111) then -- Dragon Tooth Soldier
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 412, NPC, 22, 112, 23, 113);
	else
		SelectMsg(UID, 2, savenum, 412, NPC, 10, 102);
	end
end

if (EVENT == 112) then
	SaveEvent(UID, 276);
end

if (EVENT == 113) then
	SaveEvent(UID, 279);
end

if (EVENT == 114) then
	SaveEvent(UID, 278);
end

if (EVENT == 115) then
	MonsterCount = CountMonsterQuestSub(UID, 997, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 412, NPC, 21, 117);
	else
		SelectMsg(UID, 4, savenum, 412, NPC, 41, 118, 23, 117);
	end
end

if (EVENT == 117) then
	ShowMap(UID, 585);
end

if (EVENT == 118) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 900000)
		SaveEvent(UID, 277);
	else
		ExpChange(UID, 450000)
		SaveEvent(UID, 277);
	end
end

local savenum = 998;

if (EVENT == 120) then -- Dragon Tooth Skeleton
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 425, NPC, 22, 121, 23, 122);
	else
		SelectMsg(UID, 2, savenum, 425, NPC, 10, 102);
	end
end

if (EVENT == 121) then
	SaveEvent(UID, 289);
end

if (EVENT == 122) then
	SaveEvent(UID, 292);
end

if (EVENT == 123) then
	SaveEvent(UID, 291);
end

if (EVENT == 124) then
	MonsterCount = CountMonsterQuestSub(UID, 998, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 425, NPC, 21, 126);
	else
		SelectMsg(UID, 4, savenum, 425, NPC, 41, 127, 23, 126);
	end
end

if (EVENT == 126) then
	ShowMap(UID, 186);
end

if (EVENT == 127) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 900000)
		SaveEvent(UID, 290);
	else
		ExpChange(UID, 450000)
		SaveEvent(UID, 290);
	end
end

local savenum = 999;

if (EVENT == 130) then -- Dragon Tooth Commander
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 430, NPC, 22, 131, 23, 132);
	else
		SelectMsg(UID, 2, savenum, 430, NPC, 10, 102);
	end
end

if (EVENT == 131) then
	SaveEvent(UID, 299);
end

if (EVENT == 132) then
	SaveEvent(UID, 309);
end

if (EVENT == 133) then
	SaveEvent(UID, 308);
end

if (EVENT == 134) then
	MonsterCount = CountMonsterQuestSub(UID, 999, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 430, NPC, 21, 136);
	else
		SelectMsg(UID, 4, savenum, 430, NPC, 41, 137, 23, 136);
	end
end

if (EVENT == 136) then
	ShowMap(UID, 587);
end

if (EVENT == 137) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 307);
	else
		ExpChange(UID, 700000)
		SaveEvent(UID, 307);
	end
end

local savenum = 1000;

if (EVENT == 140) then -- Lich
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 441, NPC, 22, 141, 23, 142);
	else
		SelectMsg(UID, 2, savenum, 441, NPC, 10, 102);
	end
end

if (EVENT == 141) then
	SaveEvent(UID, 316);
end

if (EVENT == 142) then
	SaveEvent(UID, 319);
end

if (EVENT == 143) then
	SaveEvent(UID, 318);
end

if (EVENT == 144) then
	MonsterCount = CountMonsterQuestSub(UID, 1000, 1);
	if (MonsterCount < 80) then
		SelectMsg(UID, 2, savenum, 441, NPC, 21, 146);
	else
		SelectMsg(UID, 4, savenum, 441, NPC, 41, 147, 23, 146);
	end
end

if (EVENT == 146) then
	ShowMap(UID, 17);
end

if (EVENT == 147) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 2000000)
		SaveEvent(UID, 317);
	else
		ExpChange(UID, 1000000)
		SaveEvent(UID, 317);
	end
end

local savenum = 1001;

if (EVENT == 150) then -- Deruvish
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 446, NPC, 22, 151, 23, 152);
	else
		SelectMsg(UID, 2, savenum, 446, NPC, 10, 102);
	end
end

if (EVENT == 151) then
	SaveEvent(UID, 326);
end

if (EVENT == 152) then
	SaveEvent(UID, 329);
end

if (EVENT == 153) then
	SaveEvent(UID, 328);
end

if (EVENT == 154) then
	MonsterCount = CountMonsterQuestSub(UID, 1001, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 446, NPC, 21, 156);
	else
		SelectMsg(UID, 4, savenum, 446, NPC, 41, 157, 23, 156);
	end
end

if (EVENT == 156) then
	ShowMap(UID, 518);
end

if (EVENT == 157) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1000000)
		SaveEvent(UID, 327);
	else
		ExpChange(UID, 500000)
		SaveEvent(UID, 327);
	end
end

local savenum = 1003;

if (EVENT == 170) then -- Troll
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 454, NPC, 22, 171, 23, 172);
	else
		SelectMsg(UID, 2, savenum, 454, NPC, 10, 102);
	end
end

if (EVENT == 171) then
	SaveEvent(UID, 352);
end

if (EVENT == 172) then
	SaveEvent(UID, 355);
end

if (EVENT == 173) then
	SaveEvent(UID, 354);
end

if (EVENT == 174) then
	MonsterCount = CountMonsterQuestSub(UID, 1003, 1);
	if (MonsterCount < 60) then
		SelectMsg(UID, 2, savenum, 454, NPC, 21, 176);
	else
		SelectMsg(UID, 4, savenum, 454, NPC, 41, 177, 23, 176);
	end
end

if (EVENT == 176) then
	ShowMap(UID, 555);
end

if (EVENT == 177) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1600000)
		SaveEvent(UID, 353);
	else
		ExpChange(UID, 800000)
		SaveEvent(UID, 353);
	end
end

local savenum = 1002;

if (EVENT == 160) then -- Apostle
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 446, NPC, 22, 161, 23, 162);
	else
		SelectMsg(UID, 2, savenum, 446, NPC, 10, 102);
	end
end

if (EVENT == 161) then
	SaveEvent(UID, 342);
end

if (EVENT == 162) then
	SaveEvent(UID, 345);
end

if (EVENT == 163) then
	SaveEvent(UID, 344);
end

if (EVENT == 164) then
	MonsterCount = CountMonsterQuestSub(UID, 1002, 1);
	if (MonsterCount < 60) then
		SelectMsg(UID, 2, savenum, 446, NPC, 21, 166);
	else
		SelectMsg(UID, 4, savenum, 446, NPC, 41, 167, 23, 166);
	end
end

if (EVENT == 166) then
	ShowMap(UID, 553);
end

if (EVENT == 167) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 343);
	else
		ExpChange(UID, 700000)
		SaveEvent(UID, 343);
	end
end

local savenum = 1004;

if (EVENT == 180) then -- Harpy
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 464, NPC, 22, 181, 23, 182);
	else
		SelectMsg(UID, 2, savenum, 464, NPC, 10, 102);
	end
end

if (EVENT == 181) then
	SaveEvent(UID, 369);
end

if (EVENT == 182) then
	SaveEvent(UID, 372);
end

if (EVENT == 183) then
	SaveEvent(UID, 371);
end

if (EVENT == 184) then
	MonsterCount = CountMonsterQuestSub(UID, 1004, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 464, NPC, 21, 186);
	else
		SelectMsg(UID, 4, savenum, 464, NPC, 41, 187, 23, 186);
	end
end

if (EVENT == 186) then
	ShowMap(UID, 549);
end

if (EVENT == 187) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1200000)
		SaveEvent(UID, 370);
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 370);
	end
end