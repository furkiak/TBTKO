local NPC = 20510;
local Ret = 0;

if (EVENT == 100) then
	Victory = CheckWarVictory(UID);
	if Victory == 1 then
		ZoneChange(UID, 2, 223, 1871) 
	else
		Ret = 1;
	end
end