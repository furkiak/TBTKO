local Ret = 0;
local NPC = 24425;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 4578, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 4579, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 438;

if (EVENT == 530) then -- 56 Level Ardream Kill 10
	SaveEvent(UID, 4306);
	SelectMsg(UID, 2, savenum, 4580, NPC, 4080, 193);
end

if (EVENT == 532) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, savenum, 4582, NPC, 4228, 535, 4063, 193);
	else
		SelectMsg(UID, 2, savenum, 4583, NPC, 10, 193);
	end
end

if (EVENT == 535) then
	SelectMsg(UID, 4, savenum, 4646, NPC, 22, 533, 23, 534);
end

if (EVENT == 533) then
	SaveEvent(UID, 4307);
end

if (EVENT == 534) then
	SaveEvent(UID, 4310);
end

if (EVENT == 180) then
	SaveEvent(UID, 4309);
	SelectMsg(UID, 2, savenum, 4585, NPC, 14, 193);
end

if (EVENT == 536) then
	MonsterCount = CountMonsterQuestSub(UID, 438, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum, 4587, NPC, 18, 538);
	else
		SelectMsg(UID, 4, savenum, 4588, NPC, 4172, 537, 4173, 193);
	end
end

if (EVENT == 538) then
	ShowMap(UID, 489);
end

if (EVENT == 537) then
	ExpChange(UID, 14000000)
	SaveEvent(UID, 4308);   
end

local savenum = 899;

if (EVENT == 9360) then -- 59 Level Ardream Kill 10
	SaveEvent(UID, 9387);
	SelectMsg(UID, 2, savenum, 4580, NPC, 4080, 193);
end

if (EVENT == 9362) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, savenum, 8684, NPC, 4228, 9363, 4063, 193);
	else
		SelectMsg(UID, 2, savenum, 8684, NPC, 10, 193);
	end
end

if (EVENT == 9363) then
	SelectMsg(UID, 4, savenum, 8684, NPC, 22, 9364, 23, 9368);
end

if (EVENT == 9364) then
	SaveEvent(UID, 9388);
end

if (EVENT == 9368) then
	SaveEvent(UID, 9391);
end

if (EVENT == 9365) then
	SaveEvent(UID, 9390);
	SelectMsg(UID, 2, savenum, 8684, NPC, 14, 193);
end

if (EVENT == 9367) then
	MonsterCount1 = CountMonsterQuestSub(UID, 899, 1);
	if (MonsterCount < 1) then
		SelectMsg(UID, 2, savenum, 8684, NPC, 18, 9370);
	else
		SelectMsg(UID, 4, savenum, 8684, NPC, 4172, 9369, 4173, 193);
	end
end

if (EVENT == 9370) then
	ShowMap(UID, 489);
end

if (EVENT == 9369) then
	ExpChange(UID, 15000000)
	SaveEvent(UID, 9389);   
end