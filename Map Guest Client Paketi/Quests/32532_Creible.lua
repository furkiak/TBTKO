local Ret = 0;
local NPC = 32532;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 8996, NPC, 10, 101);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 8996, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 101) then
	Ret = 1;
end

local savenum = 981;

if (EVENT == 110) then -- 60 Level Paramun
	SaveEvent(UID, 1692);
end

if (EVENT == 111) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 8996, NPC, 22, 112, 23, 113);
	else
		SelectMsg(UID, 2, savenum, 8996, NPC, 10, 101);
	end
end

if (EVENT == 112) then
	SaveEvent(UID, 1693);
end

if (EVENT == 113) then
	SaveEvent(UID, 1696);
end

if (EVENT == 115) then
	SaveEvent(UID, 1695);
end

if (EVENT == 116) then
	MonsterCount = CountMonsterQuestSub(UID, 981, 1);
	if (MonsterCount < 200) then
		SelectMsg(UID, 2, savenum, 8996, NPC, 18, 117);
	else
		SelectMsg(UID, 4, savenum, 8996, NPC, 41, 118, 23, 117);
	end
end

if (EVENT == 117) then
	ShowMap(UID, 79);
end

if (EVENT == 118) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1100000);
		SaveEvent(UID, 1694);
	else
		ExpChange(UID, 550000);
		SaveEvent(UID, 1694);
	end
end

local savenum = 1078;

if (EVENT == 120) then -- 60 Level RLB Paper
	SaveEvent(UID, 7007);
end

if (EVENT == 121) then
	SelectMsg(UID, 4, savenum, 1597, NPC, 22, 122, 23, 123);
end

if (EVENT == 122) then
	SaveEvent(UID, 7008);
end

if (EVENT == 123) then
	SaveEvent(UID, 7017);
end

if (EVENT == 125) then
	SaveEvent(UID, 7010);
end

if (EVENT == 126) then
	ITEMP = HowmuchItem(UID, 900037000);
	if (ITEMP < 1) then
		SelectMsg(UID, 2, savenum, 1597, NPC, 21, 127);
	else
		SelectMsg(UID, 4, savenum, 1597, NPC, 4006, 128, 4005, 101);
	end
end

if (EVENT == 127) then
	ShowMap(UID, 356);
end

if (EVENT == 128) then
	RobItem(UID, 900037000, 1)
	GiveItem(UID, 399112000, 1)
	SaveEvent(UID, 7009);
end

local savenum = 906;

if (EVENT == 9400) then -- 66 Level Duke & Bishop & Bach
	SaveEvent(UID, 9441);
end

if (EVENT == 9402) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 8692, NPC, 22, 9403, 23, 9404);
	else
		SelectMsg(UID, 2, savenum, 8692, NPC, 10, 101);
	end
end

if (EVENT == 9403) then
	SaveEvent(UID, 9442);
end

if (EVENT == 9404) then
	SaveEvent(UID, 9445);
end

if (EVENT == 9405) then
	SaveEvent(UID, 9444);
end

if (EVENT == 9407) then
	MonsterCount1 = CountMonsterQuestSub(UID, 906, 1);
	MonsterCount2 = CountMonsterQuestSub(UID, 1207, 1);
	MonsterCount2 = CountMonsterQuestSub(UID, 1206, 1);
	if (MonsterCount1 > 0 and MonsterCount2 > 0 or MonsterCount3 > 0) then
		SelectMsg(UID, 4, savenum, 8692, NPC, 41, 9409, 23, 101);
	else
		if (MonsterCount1 < 1) then
			SelectMsg(UID, 2, savenum, 8692, NPC, 18, 9408);
		elseif (MonsterCount2 < 1) then
			SelectMsg(UID, 2, savenum, 8692, NPC, 18, 1000);
		elseif (MonsterCount2 < 1) then
			SelectMsg(UID, 2, savenum, 8692, NPC, 18, 1001);
		end
	end
end

if (EVENT == 9408) then
	ShowMap(UID, 614);
end

if (EVENT == 1000) then
	ShowMap(UID, 613);
end

if (EVENT == 1001) then
	ShowMap(UID, 612);
end

if (EVENT == 9409) then
	ExpChange(UID, 21000000)
	SaveEvent(UID, 9443);
end