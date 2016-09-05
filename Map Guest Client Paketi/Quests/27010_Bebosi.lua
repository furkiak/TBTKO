local Ret = 0;
local NPC = 27010;

if (EVENT == 190) then
	SelectMsg(UID, 2, -1, 4706, NPC, 4226, 191, 4227, 168);        
end

if (EVENT == 191) then
	ZoneChange(UID, 85, 450, 300)
end

if (EVENT == 168) then
	Ret = 1;
end
