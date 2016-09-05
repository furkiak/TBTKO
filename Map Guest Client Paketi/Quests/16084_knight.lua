local NPC = 16084;
local Ret = 0;

if (EVENT == 500) then
	SelectMsg(UID, 2, -1, 4071, NPC, 4071, 501, 4072, 502);
end

if (EVENT == 501) then
	NATION = CheckNation(UID);
	if (NATION == 1) then 
		 ZoneChange(UID, 1, 360, 1742)
	else
		ZoneChange(UID, 2, 1705, 306)
	end
end

if (EVENT == 502) then
	Ret = 1;
end