local Ret = 0;
local NPC = 18030;

if (EVENT == 240) then
	SelectMsg(UID, 2, -1, 40001, NPC, 4071, 102, 4072, 101);
end

if (EVENT == 101) then
	Ret = 1;
end

if (EVENT == 102) then
	NATION = CheckNation(UID);
	if (NATION == 2) then
		ZoneChange(UID, 2, 1705, 306)
	else
		ZoneChange(UID, 1, 360, 1742)
	end
end