local NPC = 24423;
local Ret = 0;


if (EVENT == 168) then
	Ret = 1;
end

local savenum = 437;

if (EVENT == 100) then
	ItemA = HowmuchItem(UID, 910133000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4544, NPC, 10, 168);
	else
		SelectMsg(UID, 4, savenum, 4545, NPC, 22, 101, 23, 168);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, savenum, 4546, NPC, 4224, 102, 4225, 103);
end

if (EVENT == 103) then
	ChangePosition(UID)
	RunExchange(UID, 488);		 
	SaveEvent(UID, 4289);
end

if (EVENT == 102) then
	ChangePosition(UID)
	RobItem(UID, 910133000, 1);
	SelectMsg(UID, 2, savenum, 4547, NPC, 10, 168);
end