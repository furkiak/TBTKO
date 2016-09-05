local Ret = 0;
local NPC = 26053;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 418;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910052000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4408, NPC, 18, 104);
	else
		SelectMsg(UID, 4, savenum, 4409, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 104) then
	ShowMap(UID, 427);
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4410, NPC, 4178, 102, 4179, 103);
end

if (EVENT == 103) then
	Check = isRoomForItem(UID, 910053000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		--ChangePosition(UID)
		RobItem(UID, 910052000, 1)
		GiveItem(UID, 910053000, 1)
		SaveEvent(UID, 4224); 
	end   
end

if (EVENT == 102) then
	--ChangePosition(UID)
	RobItem(UID, 910052000, 1)
	SelectMsg(UID, 2, savenum, 4411, NPC, 10, 168);
end