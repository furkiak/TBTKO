local Ret = 0;
local NPC = 20005;

if (EVENT == 100) then
	SelectMsg(UID, 3, -1, 1378, NPC, 4609, 102, 4610, 103, 4262, 104);
end

if (EVENT == 101) then
	Ret = 1;
end