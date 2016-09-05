local NPC = 19005;
local Ret = 0;


if (EVENT == 100) then
	SelectMsg(UID, 3, 974, 8082, NPC, 4481, 101, 3019, 203);
end

if (EVENT == 203) then
	Ret = 1;
end


if (EVENT == 204) then
	ShowMap(UID, 336);
end

if (EVENT == 101) then
	MONEY = HowmuchItem(UID, 900000000);
	if (MONEY >= 10000) then
		SelectMsg(UID, 2, 974, 8083, NPC, 4484, 205, 4296, 203);
	else
		SelectMsg(UID, 2, 974, 8084, NPC, 18, 204);
	end
end

if (EVENT == 205) then
	GoldLose(UID, 10000)
	SelectMsg(UID, 16, 974, NPC);
end