local NPC = 13010;

if (EVENT == 500) then
	SelectMsg(UID, 2, -1, 4072, NPC, 4071, 501, 4072, 502);
end

if (EVENT == 501) then
	ZoneChange(UID, 21, 817, 451)
end

if (EVENT == 502) then
	Ret = 1;
end