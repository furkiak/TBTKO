local Ret = 0;
local NPC = 14422;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 436;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910132000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4570, NPC, 10, 168);
	else
		SelectMsg(UID, 4, savenum, 4571, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4572, NPC, 4222, 102, 4223, 103);
end

if (EVENT == 102) then
	ChangePosition(UID)
	RunExchange(UID, 487);		 
	SaveEvent(UID, 4302);
end

if (EVENT == 103) then
	ChangePosition(UID)
	RobItem(UID, 910132000, 1);
	SelectMsg(UID, 2, savenum, 4573, NPC, 10, 168);
end