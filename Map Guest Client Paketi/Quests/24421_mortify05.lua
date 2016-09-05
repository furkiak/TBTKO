local NPC = 24421;
local Ret = 0;


if (EVENT == 168) then
	Ret = 1;
end

local savenum = 435;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910131000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4536, NPC, 10, 168);
	else
		SelectMsg(UID, 4, savenum, 4537, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4538, NPC, 4220, 102, 4221, 103);
end

if (EVENT == 102) then
	ChangePosition(UID)
	RunExchange(UID, 486);		 
	SaveEvent(UID, 4287);
end

if (EVENT == 103) then
	ChangePosition(UID)
	RobItem(UID, 910131000, 1);
	SelectMsg(UID, 2, savenum, 4539, NPC, 10, 168);
end