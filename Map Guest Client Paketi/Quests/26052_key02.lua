local Ret = 0;
local NPC = 26052;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 417;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910051000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4404, NPC, 18, 104);
	else 
		SelectMsg(UID, 4, savenum, 4405, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4406, NPC, 4176, 102, 4177, 103);
end

if (EVENT == 104) then
	ShowMap(UID, 429);
end

if (EVENT == 102) then
	Check = isRoomForItem(UID, 910052000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		--ChangePosition(UID)
		RobItem(UID, 910051000, 1)
		GiveItem(UID, 910052000, 1)
		SaveEvent(UID, 4223); 
	end   
end

if (EVENT == 103) then
	--ChangePosition(UID)
	RobItem(UID, 910051000, 1)
	SelectMsg(UID, 2, savenum, 4407, NPC, 10, 168);
end