local Ret = 0;
local NPC = 32557;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 1043, NPC, 10, 101);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 1043, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 101) then
	Ret = 1;
end

local savenum = 1016;

if (EVENT == 102) then -- 61 Level 1st Class Document
	SaveEvent(UID, 746);
end

if (EVENT == 104) then
	SelectMsg(UID, 4, savenum, 1043, NPC, 22, 105, 23, 106);
end

if (EVENT == 105) then
	SaveEvent(UID, 747);
end

if (EVENT == 106) then
	SaveEvent(UID, 750);
end

if (EVENT == 111) then
	SaveEvent(UID, 749);
end

if (EVENT == 112) then
	ITEMD = HowmuchItem(UID, 900068000);
	if (ITEMD < 1) then
		SelectMsg(UID, 2, savenum, 1043, NPC, 18, 113);
	else
		SelectMsg(UID, 4, savenum, 8986, NPC, 4006, 114, 4005, 101);
	end
end

if (EVENT == 113) then
	ShowMap(UID, 356);
end

if (EVENT == 114) then
	RobItem(UID, 900068000, 1)
	ExpChange(UID, 2000000)
	GiveLoyalty(UID, 150)
	SaveEvent(UID, 748);
end

local savenum = 1017;

if (EVENT == 184) then -- 61 Level Sealed Soul
	SelectMsg(UID, 4, savenum, 1062, NPC, 22, 185, 23, 186);
end

if (EVENT == 185) then
	SaveEvent(UID, 760);
end

if (EVENT == 186) then
	SaveEvent(UID, 763);
end

if (EVENT == 191) then
	SaveEvent(UID, 762);
end

if (EVENT == 192) then
	ITEMP = HowmuchItem(UID, 900071000);
	if (ITEMP < 1) then
		SelectMsg(UID, 2, savenum, 1062, NPC, 18, 193);
	else
		SelectMsg(UID, 4, savenum, 1062, NPC, 4006, 194, 4005, 101);
	end
end

if (EVENT == 193) then
	ShowMap(UID, 356);
end

if (EVENT == 194) then
	RobItem(UID, 900071000, 1)
	ExpChange(UID, 1000000)
	GiveLoyalty(UID, 200)
	SaveEvent(UID, 761);
end

local savenum = 1054;

if (EVENT == 240) then -- 61 Level Ronark Intelligence
	SelectMsg(UID, 4, savenum, 1484, NPC, 22, 241, 23, 242);
end

if (EVENT == 241) then
	SaveEvent(UID, 1049);
end

if (EVENT == 242) then
	SaveEvent(UID, 1052);
end

if (EVENT == 243) then
	SaveEvent(UID, 1051);
end

if (EVENT == 244) then
	ITEMP = HowmuchItem(UID, 900019000);
	if (ITEMP < 1) then
		SelectMsg(UID, 2, savenum, 1484, NPC, 18, 245);
	else
		SelectMsg(UID, 4, savenum, 1484, NPC, 4006, 246, 4005, 101);
	end
end

if (EVENT == 245) then
	ShowMap(UID, 356);
end

if (EVENT == 246) then
	RobItem(UID, 900019000, 1)
	ExpChange(UID, 500000)
	SaveEvent(UID, 1050);
end

if (EVENT == 530) then -- 70 Level 100 Kill
	SaveEvent(UID, 826);
	SelectMsg(UID, 2, savenum, 723, NPC, 4080, 193);
end

if (EVENT == 532) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 723, NPC, 22, 533, 23, 534);
	else
		SelectMsg(UID, 2, savenum, 723, NPC, 10, 193);
	end
end

if (EVENT == 533) then
	SaveEvent(UID, 827);
end

if (EVENT == 534) then
	SaveEvent(UID, 830);
end

if (EVENT == 535) then
	SaveEvent(UID, 829);
	SelectMsg(UID, 2, savenum, 723, NPC, 14, 193);
end

if (EVENT == 536) then
	MonsterCount = CountMonsterQuestSub(UID, 1024, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 723, NPC, 18, 538);
	else
		SelectMsg(UID, 4, savenum, 723, NPC, 4172, 537, 4173, 193);
	end
end

if (EVENT == 538) then
	ShowMap(UID, 489);
end

if (EVENT == 537) then
	ExpChange(UID, 20000000)
	SaveEvent(UID, 828);   
end