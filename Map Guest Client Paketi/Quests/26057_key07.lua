local Ret = 0;
local NPC = 26057;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 422;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910056000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4424, NPC, 18, 104);
	else
		SelectMsg(UID, 4, savenum, 4425, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 104) then
	ShowMap(UID, 431);
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4426, NPC, 4186, 102, 4187, 103);
end

if (EVENT == 103) then
	Check = isRoomForItem(UID, 910057000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		--ChangePosition(UID)
		RobItem(UID, 910056000, 1)
		GiveItem(UID, 910057000, 1)
		SaveEvent(UID, 4228); 
	end   
end

if (EVENT == 102) then
	--ChangePosition(UID)
	RobItem(UID, 910056000, 1)
	SelectMsg(UID, 2, savenum, 4427, NPC, 10, 168);
end