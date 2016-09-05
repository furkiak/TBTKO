local NPC = 31700;
local Ret = 0;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 1547, NPC, 10, 3001);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 1547, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 101) then
	Ret = 1;
end	

if (EVENT == 201) then
	SelectMsg(UID, 4, 1070, 1556, NPC, 22, 202, 23, 101);
end

if (EVENT == 202) then
	SaveEvent(UID, 1201);
end

if (EVENT == 209) then
	PAPER = HowmuchItem(UID, 900035000);
	if (PAPER < 1) then
		SelectMsg(UID, 2, 1070, 1558, NPC, 18, 210);
	else
		SelectMsg(UID, 4, 1070, 1559, NPC, 4006, 211, 4005, 101);
	end	
end

if (EVENT == 210) then
	ShowMap(UID, 123);
end

if (EVENT == 211) then
	RobItem(UID, 900035000, 1)
	GiveItem(UID, 900076000, 1)
	SaveEvent(UID, 1202);
end

if (EVET == 216) then
	SaveEvent(UID, 1203);
end