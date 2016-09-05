local Ret = 0;
local NPC = 24417;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 431;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910127000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4520, NPC, 10, 168);
	else
		SelectMsg(UID, 4, savenum, 4521, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4522, NPC, 4212, 102, 4213, 103);
end

if (EVENT == 102) then
	ChangePosition(UID)
	RunExchange(UID, 482);		 
	SaveEvent(UID, 4283);
end

if (EVENT == 103) then
	ChangePosition(UID)
	RobItem(UID, 910127000, 1);
	SelectMsg(UID, 2, savenum, 4523, NPC, 10, 168);
end