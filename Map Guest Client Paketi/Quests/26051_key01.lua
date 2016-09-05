local Ret = 0;
local NPC = 26051;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 416;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910050000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4400, NPC, 18, 104);
	else
		SelectMsg(UID, 4, savenum, 4401, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4402, NPC, 4174, 102, 4175, 103);
end

if (EVENT == 104) then
	ShowMap(UID, 45);
end

if (EVENT == 102) then
	Check = isRoomForItem(UID, 910051000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		--ChangePosition(UID)
		GiveItem(UID, 910051000, 1)	 
		SaveEvent(UID, 4222);
	end
end

if (EVENT == 103) then
	--ChangePosition(UID)
	SelectMsg(UID, 2, savenum, 4403, NPC, 10, 168);
end