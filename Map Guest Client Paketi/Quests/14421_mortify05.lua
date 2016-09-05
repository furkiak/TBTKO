local Ret = 0;
local NPC = 14421;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 435;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910131000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4566, NPC, 10, 168);
	else
		SelectMsg(UID, 4, savenum, 4567, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4568, NPC, 4220, 102, 4221, 103);
end

if (EVENT == 102) then
	ChangePosition(UID)
	RunExchange(UID, 486);		 
	SaveEvent(UID, 4301);
end

if (EVENT == 103) then
	ChangePosition(UID)
	RobItem(UID, 910131000, 1);
	SelectMsg(UID, 2, savenum, 4569, NPC, 10, 168);
end