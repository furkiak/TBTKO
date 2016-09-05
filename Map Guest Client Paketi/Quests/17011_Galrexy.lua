local Ret = 0;
local NPC = 17011;

if (EVENT == 190) then
	SelectMsg(UID, 2, -1, 4707, NPC, 4226, 191, 4227, 168);        
end

if (EVENT == 191) then
	ZoneChange(UID, 86, 450, 300)
end

if (EVENT == 168) then
	Ret = 1;
end