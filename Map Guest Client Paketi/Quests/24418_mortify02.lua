local Ret = 0;
local NPC = 24418;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 432;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910128000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4524, NPC, 10, 168);
	else
		SelectMsg(UID, 4, savenum, 4525, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4526, NPC, 4214, 103, 4215, 102);
end

if (EVENT == 102) then
	ChangePosition(UID)
	RunExchange(UID, 483);		 
	SaveEvent(UID, 4284);
end

if (EVENT == 103) then
	ChangePosition(UID)
	RobItem(UID, 910128000, 1);
	SelectMsg(UID, 2, savenum, 4527, NPC, 10, 168);
end