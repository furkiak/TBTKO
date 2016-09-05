local Ret = 0;
local NPC = 15002;

if (EVENT == 165) then
	SelectMsg(UID, 3, -1, 4132, NPC, 4073, 169, 4074, 168);
end

if (EVENT == 169) then
	ZoneChange(UID, 48, 133, 118)
end

if (EVENT == 168) then
	Ret = 1;
end