local Ret = 0;
local NPC = 14425;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 4589, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 4590, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 442;

if (EVENT == 530) then
	SaveEvent(UID, 4313);
	SelectMsg(UID, 2, savenum, 4591, NPC, 4080, 193);
end

if (EVENT == 532) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, savenum, 4592, NPC, 4228, 535, 4063, 193);
	else
		SelectMsg(UID, 2, savenum, 4593, NPC, 10, 193);
	end
end

if (EVENT == 535) then
	SelectMsg(UID, 4, savenum, 4647, NPC, 22, 533, 23, 534);
end

if (EVENT == 533) then
	SaveEvent(UID, 4314);
end

if (EVENT == 534) then
	SaveEvent(UID, 4317);
end

if (EVENT == 180) then
	SaveEvent(UID, 4316);
	SelectMsg(UID, 2, savenum, 4594, NPC, 14, 193);
end

if (EVENT == 536) then
	MonsterCount = CountMonsterQuestSub(UID, 442, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum, 4595, NPC, 18, 538);
	else
		SelectMsg(UID, 2, savenum, 4596, NPC, 4172, 537, 4173, 193);
	end
end

if (EVENT == 538) then
	ShowMap(UID, 488);
end

if (EVENT == 537) then
	ExpChange(UID, 14000000)
	SaveEvent(UID, 4315); 
end

local savenum = 899;

if (EVENT == 9360) then -- 59 Level Ardream Kill 10
	SaveEvent(UID, 9393);
	SelectMsg(UID, 2, savenum, 4591, NPC, 4080, 193);
end

if (EVENT == 9362) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, savenum, 8685, NPC, 4228, 9363, 4063, 193);
	else
		SelectMsg(UID, 2, savenum, 8685, NPC, 10, 193);
	end
end

if (EVENT == 9363) then
	SelectMsg(UID, 4, savenum, 8685, NPC, 22, 9364, 23, 9368);
end

if (EVENT == 9364) then
	SaveEvent(UID, 9394);
end

if (EVENT == 9368) then
	SaveEvent(UID, 9397);
end

if (EVENT == 9365) then
	SaveEvent(UID, 9396);
	SelectMsg(UID, 2, savenum, 8685, NPC, 14, 193);
end

if (EVENT == 9367) then
	MonsterCount1 = CountMonsterQuestSub(UID, 899, 1);
	if (MonsterCount < 1) then
		SelectMsg(UID, 2, savenum, 8685, NPC, 18, 9370);
	else
		SelectMsg(UID, 4, savenum, 8685, NPC, 4172, 9369, 4173, 193);
	end
end

if (EVENT == 9370) then
	ShowMap(UID, 488);
end

if (EVENT == 9369) then
	ExpChange(UID, 15000000)
	SaveEvent(UID, 9395);   
end