local NPC = 10510;
local Ret = 0;

if (EVENT == 100) then
	Victory = CheckWarVictory(UID);
	if (Victory == 2) then
		ZoneChange(UID, 1, 1859, 174)
	else
		Ret = 1;
	end
end