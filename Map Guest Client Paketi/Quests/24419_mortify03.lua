local Ret = 0;
local NPC = 24419;

if (EVENT == 168) then
	Ret = 1;
end

local savenum = 433;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910129000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4528, NPC, 10, 168);
	else
		SelectMsg(UID, 4, savenum, 4529, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4530, NPC, 4216, 102, 4217, 103);
end


if (EVENT == 102) then
	ChangePosition(UID)
	RunExchange(UID, 484);		 
	SaveEvent(UID, 4285);
end

if (EVENT == 103) then
	ChangePosition(UID)
	RobItem(UID, 910129000, 1);
	SelectMsg(UID, 2, savenum, 4531, NPC, 10, 168);
end