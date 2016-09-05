local NPC = 16099;
local Ret = 0;

if (EVENT == 500) then
	SelectMsg(UID, 2, -1, 959, NPC, 4071, 501, 4072, 502);
end

if (EVENT == 501) then
	Level = CheckLevel(UID);
	NATION = CheckNation(UID);
	if (Level < 30) then
		if (NATION == 1) then
			ZoneChange(UID, 1, 441, 1625)
		else
			ZoneChange(UID, 2, 1595, 412)
		end
	else
		if (NATION == 1) then
			ZoneChange(UID, 71, 1380, 1090)
		else
			ZoneChange(UID, 71, 630, 920)
		end
	end
end

if (EVENT == 502) then
	Ret = 1;
end