local Ret = 0;
local NPC = 32534;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 8986, NPC, 10, 101);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 8986, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 101) then
	Ret = 1;
end

local savenum = 1041;

if (EVENT == 102) then -- 56 Level Ibexs
	SaveEvent(UID, 983);
end

if (EVENT == 104) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 1476, NPC, 22, 105, 23, 106);
	else
		SelectMsg(UID, 2, savenum, 1476, NPC, 10, 101);
	end
end

if (EVENT == 105) then
	SaveEvent(UID, 984);
end

if (EVENT == 106) then
	SaveEvent(UID, 987);
end

if (EVENT == 108) then
	SaveEvent(UID, 986);
end

if (EVENT == 109) then
	MonsterCount = CountMonsterQuestSub(UID, 1041, 1);
	if (MonsterCount < 5) then
		SelectMsg(UID, 2, savenum, 1476, NPC, 18, 110);
	else
		SelectMsg(UID, 4, savenum, 1476, NPC, 41, 111, 23, 110);
	end
end

if (EVENT == 110) then
	ShowMap(UID, 197);
end

if (EVENT == 111) then
	ExpChange(UID, 1400000);
	SaveEvent(UID, 985);
end