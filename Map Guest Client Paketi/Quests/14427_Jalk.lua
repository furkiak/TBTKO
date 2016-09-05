local Ret = 0;
local NPC = 14427;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then 
		SelectMsg(UID, 2, -1, 4703, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then 
		NpcMsg(UID, 8060, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 1814;

if (EVENT == 1002) then -- 35 Level Shadow Seeker Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 8141, NPC, 22, 1003, 23, 193);
	else
		SelectMsg(UID, 2, savenum, 796, NPC, 27, 193);
	end
end

if (EVENT == 1003) then
	SaveEvent(UID, 2008);
end

if (EVENT == 1010) then
	SaveEvent(UID, 2010);
end

if (EVENT == 1006) then
	MonsterCount = CountMonsterQuestSub(UID, 1814, 1);
	if (MonsterCount < 15) then
		SelectMsg(UID, 2, savenum, 8143, NPC, 18, 1007);
	else
		SelectMsg(UID, 4, savenum, 8145, NPC, 22, 1008, 23, 193);
	end
end

if (EVENT == 1007) then
	ShowMap(UID, 96);
end

if (EVENT == 1008) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 260000)
		SaveEvent(UID, 2009);
	else
		ExpChange(UID, 180000)
		SaveEvent(UID, 2009);
	end
end

local savenum1 = 814;

if (EVENT == 8702) then -- 35 Level Shadow Seeker
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum1, 8141, NPC, 22, 8703, 23, 193);
	else
		SelectMsg(UID, 2, savenum1, 796, NPC, 27, 193);
	end
end

if (EVENT == 8703) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8419);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8424);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8429);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8434);
	end
end

if (EVENT == 8710) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8421);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8426);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8431);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8436);
	end
end

if (EVENT == 8706) then
	MonsterCount = CountMonsterQuestSub(UID, 814 ,1);
	if (MonsterCount < 15) then
		SelectMsg(UID, 2, savenum1, 8143, NPC, 18, 8707);
	else
		SelectMsg(UID, 4, savenum1, 8145, NPC, 22, 8708, 23, 193);
	end
end

if (EVENT == 8707) then
	ShowMap(UID, 96);
end

if (EVENT == 8708) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 126210185, 1)
		GiveItem(UID, 135510185, 1)
		GiveItem(UID, 150610195, 1)
		GiveItem(UID, 155510185, 1)
		ExpChange(UID, 270000)
		SaveEvent(UID, 8420);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		GiveItem(UID, 111010195, 1)
		GiveItem(UID, 111010195, 1)
		GiveItem(UID, 168210135, 1)
		ExpChange(UID, 270000)
		SaveEvent(UID, 8425);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		GiveItem(UID, 180910165, 1)
		GiveItem(UID, 180910175, 1)
		GiveItem(UID, 180910185, 1)
		ExpChange(UID, 270000)
		SaveEvent(UID, 8430);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		GiveItem(UID, 190710185, 1)
		GiveItem(UID, 171510125, 1)
		ExpChange(UID, 270000)
		SaveEvent(UID, 8435);
	end
end
local savenum2 = 1832;

if (EVENT == 1102) then -- 37 Level Saber Tooth Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum2, 8338, NPC, 22, 1103, 23, 193);
	else
		SelectMsg(UID, 2, savenum2, 8366, NPC, 27, 193);
	end
end

if (EVENT == 1103) then
	SaveEvent(UID, 2032);
end

if (EVENT == 1110) then
	SaveEvent(UID, 2034);
end

if (EVENT == 1106) then
	MonsterCount = CountMonsterQuestSub(UID, 832, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum2, 8143, NPC, 18, 1107);
	else
		SelectMsg(UID, 4, savenum2, 8145, NPC, 22, 1108, 23, 193);
	end
end

if (EVENT == 1107) then
	ShowMap(UID, 100);
end

if (EVENT == 1108) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 300000)
		SaveEvent(UID, 2033);
	else
		ExpChange(UID, 220000)
		SaveEvent(UID, 2033);
	end
end

local savenum3 = 832;

if (EVENT == 8302) then -- 37 Level Saber Tooth
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum3, 8141, NPC, 22, 8303, 23, 193);
	else
		SelectMsg(UID, 2, savenum3, 796, NPC, 27, 193);
	end
end

if (EVENT == 8303) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8533);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8538);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8543);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8548);
	end
end

if (EVENT == 8310) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8535);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8540);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8545);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8550);
	end
end

if (EVENT == 8306) then
	MonsterCount = CountMonsterQuestSub(UID, 832, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum3, 8143, NPC, 18, 8307);
	else
		SelectMsg(UID, 4, savenum3, 8145, NPC, 22, 8308, 23, 193);
	end
end

if (EVENT == 8307) then
	ShowMap(UID, 100);
end

if (EVENT == 8308) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 330000)
		GiveItem(UID, 205004289, 1)
		SaveEvent(UID, 8534);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 330000)
		GiveItem(UID, 245004290, 1)
		SaveEvent(UID, 8539);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 330000)
		GiveItem(UID, 265004291, 1)
		SaveEvent(UID, 8544);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 330000)
		GiveItem(UID, 285004292, 1)
		SaveEvent(UID, 8549);
	end
end

local savenum4 = 1867;

if (EVENT == 1302) then -- 38 Level Skeleton Warrior Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum4, 8071, NPC, 22, 1303, 23, 193);
	else
		SelectMsg(UID, 2, savenum4, 8366, NPC, 27, 193);
	end
end

if (EVENT == 1303) then
	SaveEvent(UID, 2044);
end

if (EVENT == 1310) then
	SaveEvent(UID, 2046);
end

if (EVENT == 1306) then
	MonsterCount = CountMonsterQuestSub(UID, 1867, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum4, 8143, NPC, 18, 1307);
	else
		SelectMsg(UID, 4, savenum4, 8145, NPC, 22, 1308, 23, 193);
	end
end

if (EVENT == 1307) then
	ShowMap(UID, 102);
end

if (EVENT == 1308) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 340000)
		SaveEvent(UID, 2045);
	else
		ExpChange(UID, 240000)
		SaveEvent(UID, 2045);
	end
end

local savenum5 = 867;

if (EVENT == 8202) then -- 38 Level Skeleton Warrior
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum5, 8071, NPC, 22, 8203, 23, 193);
	else
		SelectMsg(UID, 2, savenum5, 8366, NPC, 27, 193);
	end
end

if (EVENT == 8203) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8575);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8580);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8585);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8590);
	end
end

if (EVENT == 8210) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8577);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8582);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8587);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8592);
	end
end

if (EVENT == 8206) then
	MonsterCount = CountMonsterQuestSub(UID, 867, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum5, 8143, NPC, 18, 8207);
	else
		SelectMsg(UID, 4, savenum5, 8145, NPC, 22, 8208, 23, 193);
	end
end

if (EVENT == 8207) then
	ShowMap(UID, 102); 
end

if (EVENT == 8208) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 370000)
		GiveItem(UID, 205003289, 1)
		SaveEvent(UID, 8576);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 370000)
		GiveItem(UID, 245003290, 1)
		SaveEvent(UID, 8581);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 370000)
		GiveItem(UID, 265003291, 1)
		SaveEvent(UID, 8586);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 370000)
		GiveItem(UID, 285003292, 1)
		SaveEvent(UID, 8591);
	end   
end

local savenum6 = 1835;

if (EVENT == 1402) then -- 39 Level Skeleton Knight Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum6, 8352, NPC, 22, 1403, 23, 193);
	else
		SelectMsg(UID, 2, savenum6, 8356, NPC, 27, 193);
	end
end

if (EVENT == 1403) then
	SaveEvent(UID, 2056);
end

if (EVENT == 1410) then
	SaveEvent(UID, 2058);
end

if (EVENT == 1406) then
	MonsterCount = CountMonsterQuestSub(UID, 1835, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum6, 8357, NPC, 18, 1407);
	else
		SelectMsg(UID, 4, savenum6, 8358, NPC, 22, 1408, 23, 193);
	end
end

if (EVENT == 1407) then
	ShowMap(UID, 104);
end

if (EVENT == 1408) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 360000)
		SaveEvent(UID, 2057);
	else
		ExpChange(UID, 260000)
		SaveEvent(UID, 2057);
	end
end

local savenum7 = 835;

if (EVENT == 8102) then -- 39 Level Skeleton Knight
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum7, 8352, NPC, 22, 8103, 23, 193);
	else
		SelectMsg(UID, 2, savenum7, 8356, NPC, 27, 193);
	end
end

if (EVENT == 8103) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8617);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8622);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8627);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8632);
	end
end

if (EVENT == 8110) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8619);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8624);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8629);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8634);
	end
end

if (EVENT == 8106) then
	MonsterCount = CountMonsterQuestSub(UID, 835, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum7, 8357, NPC, 18, 8107);
	else
		SelectMsg(UID, 4, savenum7, 8358, NPC, 22, 8108, 23, 193);
	end
end

if (EVENT == 8107) then
	ShowMap(UID, 104);
end

if (EVENT == 8108) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 400000)
		GiveItem(UID, 205002289, 1)
		SaveEvent(UID, 8618);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 400000)
		GiveItem(UID, 245002290, 1)
		SaveEvent(UID, 8623);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 400000)
		GiveItem(UID, 265002291, 1)
		SaveEvent(UID, 8628);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 400000)
		GiveItem(UID, 285002292, 1)
		SaveEvent(UID, 8633);
	end
end

local savenum8 = 1837;

if (EVENT == 1502) then -- 40 Level Death Knight Premium
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum8, 8360, NPC, 22, 1503, 23, 193);
	else
		SelectMsg(UID, 2, savenum8, 8356, NPC, 27, 193);
	end
end

if (EVENT == 1503) then
	SaveEvent(UID, 2068);
end

if (EVENT == 1510) then
	SaveEvent(UID, 2070);
end

if (EVENT == 1506) then
	MonsterCount = CountMonsterQuestSub(UID, 1837, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, savenum8, 8357, NPC, 18, 1507);
	else
		SelectMsg(UID, 4, savenum8, 8358, NPC, 22, 1508, 23, 193);
	end
end

if (EVENT == 1507) then
	ShowMap(UID, 106);
end

if (EVENT == 1508) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 560000)
		SaveEvent(UID, 2069);
	else
		ExpChange(UID, 400000)
		SaveEvent(UID, 2069);
	end
end

local savenum9 = 837;

if (EVENT == 8022) then -- 40 Level Death Knight
	DeathKnight2SCount = ExistMonsterQuestSub(UID);
	if (DeathKnight2SCount == 0) then
		SelectMsg(UID, 4, savenum9, 8352, NPC, 22, 8023, 23, 193);
	else
		SelectMsg(UID, 2, savenum9, 8356, NPC, 27, 193);
	end
end

if (EVENT == 8023) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8659);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8664);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8669);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8674);
	end
end

if (EVENT == 8030) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8661);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8666);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8671);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8676);
	end
end

if (EVENT == 8026) then
	MonsterCount = CountMonsterQuestSub(UID, 837, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum9, 8357, NPC, 18, 8027);
	else
		SelectMsg(UID, 4, savenum9, 8358, NPC, 22, 8028, 23, 193);
	end
end

if (EVENT == 8027) then
	ShowMap(UID, 106);
end

if (EVENT == 8028) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 750000)
		GiveItem(UID, 205001289, 1)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8660);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 750000)
		GiveItem(UID, 245001290, 1)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8665);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 750000)
		GiveItem(UID, 265001291, 1)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8670);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 750000)
		GiveItem(UID, 285001292, 1)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8675);
	end
end

local savenum10 = 1111;

if (EVENT == 402) then -- 60 Level Dragon Tooth Commander
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum10, 9019, NPC, 22, 403, 23, 193);
	else
		SelectMsg(UID, 2, savenum10, 8356, NPC, 27, 193);
	end
end

if (EVENT == 403) then
	SaveEvent(UID, 1804);
end

if (EVENT == 409) then
	SaveEvent(UID, 1806);
end

if (EVENT == 411) then
	MonsterCount = CountMonsterQuestSub(UID, 1111, 1);
	if (MonsterCount < 60) then
		SelectMsg(UID, 2, savenum10, 8357, NPC, 18, 412);
	else
		SelectMsg(UID, 4, savenum10, 8358, NPC, 22, 413, 23, 193);
	end
end

if (EVENT == 412) then
	ShowMap(UID, 586);
end

if (EVENT == 413) then
	ExpChange(UID, 800000)
	SaveEvent(UID, 1805);
end