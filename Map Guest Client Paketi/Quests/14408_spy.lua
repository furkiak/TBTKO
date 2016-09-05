local Ret = 0;
local NPC= 14408;

if (EVENT == 100) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 4287, NPC, 10, 101);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 4288, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 101) then
	Ret = 1;
end

local savenum = 63;

if (EVENT == 105) then
	SelectMsg(UID, 2, savenum, 4289, NPC, 10, 101);
end

if (EVENT == 110) then 
	SelectMsg(UID, 2, savenum, 4290, NPC, 4170, 120, 4169, 101);
end

if (EVENT == 120) then 
	ItemA = HowmuchItem(UID, 910084000);  
	if (ItemA == 0) then
		Check = isRoomForItem(UID, 910084000);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			GiveItem(UID, 910084000, 1);
			SaveEvent(UID, 4191);
		end	  
	else
		SelectMsg(UID, 2, savenum, 4291, NPC, 10, 101);
	end
end

local savenum = 64;

if (EVENT == 125) then
	SelectMsg(UID, 2, savenum, 4289, NPC, 10, 101);
end

if (EVENT == 130) then 
	SelectMsg(UID, 2, savenum, 4292, NPC, 4170, 140, 4169, 101);
end

if (EVENT == 140) then 
	ItemA = HowmuchItem(UID, 910085000);  
	if (ItemA == 0) then
		Check = isRoomForItem(UID, 910085000);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			GiveItem(UID, 910085000, 1);
			SaveEvent(UID, 4202);
		end	  
	else
		SelectMsg(UID, 2, savenum, 4293, NPC, 10, 101);
	end
end