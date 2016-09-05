local Ret = 0;
local NPC = 17012;

if (EVENT == 165) then
	Prison = CheckPrison(UID)
	if (Prison == 0) then
		SelectMsg(UID, 2, -1, 4666, NPC, 10, 168);        
	else
		SelectMsg(UID, 2, -1, 4666, NPC, 10, 169);        
	end
end

if (EVENT == 168) then
	Ret = 1;
end

if (EVENT == 169) then
	ZoneChange(UID, 21, 817, 432)
end