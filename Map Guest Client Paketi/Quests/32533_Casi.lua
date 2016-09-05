local Ret = 0;
local NPC = 32533;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 1466, NPC, 10, 101);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 1466, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 101) then
	Ret = 1;
end

local savenum = 1040;

if (EVENT == 102) then -- 56 Level Ibexs
	SaveEvent(UID, 977);
end

if (EVENT == 104) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 1466, NPC, 22, 105, 23, 106);
	else
		SelectMsg(UID, 2, savenum, 1466, NPC, 10, 101);
	end
end

if (EVENT == 105) then
	SaveEvent(UID, 978);
end

if (EVENT == 106) then
	SaveEvent(UID, 981);
end

if (EVENT == 108) then
	SaveEvent(UID, 980);
end

if (EVENT == 109) then
	MonsterCount = CountMonsterQuestSub(UID, 1040, 1);
	if (MonsterCount < 5) then
		SelectMsg(UID, 2, savenum, 1466, NPC, 18, 110);
	else
		SelectMsg(UID, 4, savenum, 1466, NPC, 41, 111, 23, 110);
	end
end

if (EVENT == 110) then
	ShowMap(UID, 196);
end

if (EVENT == 111) then
	ExpChange(UID, 1400000);
	SaveEvent(UID, 979);
end