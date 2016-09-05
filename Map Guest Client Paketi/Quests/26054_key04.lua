local Ret = 0;
local NPC = 26054;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 419;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910053000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4412, NPC, 18, 104);
	else
		SelectMsg(UID, 4, savenum, 4413, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 104) then
	ShowMap(UID, 428);
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4414, NPC, 4180, 102, 4181, 103);
end

if (EVENT == 103) then
	Check = isRoomForItem(UID, 910054000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		--ChangePosition(UID)
		RobItem(UID, 910053000, 1)
		GiveItem(UID, 910054000, 1)
		SaveEvent(UID, 4225); 
	end   
end

if (EVENT == 102) then
	--ChangePosition(UID)
	RobItem(UID, 910053000, 1)
	SelectMsg(UID, 2, savenum, 4415, NPC, 10, 168);
end