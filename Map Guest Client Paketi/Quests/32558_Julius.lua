local Ret = 0;
local NPC = 32558;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 1055, NPC, 10, 101);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 1055, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 101) then
	Ret = 1;
end

local savenum = 1016;

if (EVENT == 102) then -- 61 Level 1st Class Document
	SaveEvent(UID, 752);
end

if (EVENT == 104) then
	SelectMsg(UID, 4, savenum, 1055, NPC, 22, 105, 23, 106);
end

if (EVENT == 105) then
	SaveEvent(UID, 753);
end

if (EVENT == 106) then
	SaveEvent(UID, 756);
end

if (EVENT == 111) then
	SaveEvent(UID, 755);
end

if (EVENT == 112) then
	ITEMD = HowmuchItem(UID, 900068000);
	if (ITEMD < 1) then
		SelectMsg(UID, 2, savenum, 1055, NPC, 18, 113);
	else
		SelectMsg(UID, 4, savenum, 1055, NPC, 4006, 114, 4005, 101);
	end
end

if (EVENT == 113) then
	ShowMap(UID, 356);
end

if (EVENT == 114) then
	RobItem(UID, 900068000, 1)
	ExpChange(UID, 2000000)
	GiveLoyalty(UID, 150)
	SaveEvent(UID, 754);
end

local savenum = 1017;

if (EVENT == 184) then -- 61 Level Sealed Soul
	SelectMsg(UID, 4, savenum, 1074, NPC, 22, 185, 23, 186);
end

if (EVENT == 185) then
	SaveEvent(UID, 765);
end

if (EVENT == 186) then
	SaveEvent(UID, 768);
end

if (EVENT == 191) then
	SaveEvent(UID, 767);
end

if (EVENT == 192) then
	ITEMP = HowmuchItem(UID, 900071000);
	if (ITEMP < 1) then
		SelectMsg(UID, 2, savenum, 1074, NPC, 18, 193);
	else
		SelectMsg(UID, 4, savenum, 1074, NPC, 4006, 194, 4005, 101);
	end
end

if (EVENT == 193) then
	ShowMap(UID, 356);
end

if (EVENT == 194) then
	RobItem(UID, 900071000, 1)
	ExpChange(UID, 1000000)
	GiveLoyalty(UID, 200)
	SaveEvent(UID, 766);
end

local savenum = 1054;

if (EVENT == 240) then -- 61 Level Ronark Intelligence
	SelectMsg(UID, 4, savenum, 1483, NPC, 22, 241, 23, 242);
end

if (EVENT == 241) then
	SaveEvent(UID, 1054);
end

if (EVENT == 242) then
	SaveEvent(UID, 1057);
end

if (EVENT == 243) then
	SaveEvent(UID, 1056);
end

if (EVENT == 244) then
	ITEMP = HowmuchItem(UID, 900019000);
	if (ITEMP < 1) then
		SelectMsg(UID, 2, savenum, 1483, NPC, 18, 245);
	else
		SelectMsg(UID, 4, savenum, 1483, NPC, 4006, 246, 4005, 101);
	end
end

if (EVENT == 245) then
	ShowMap(UID, 356);
end

if (EVENT == 246) then
	RobItem(UID, 900019000, 1)
	ExpChange(UID, 500000)
	SaveEvent(UID, 1055);
end