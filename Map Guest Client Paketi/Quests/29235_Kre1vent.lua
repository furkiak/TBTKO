local NPC = 29235;
local Ret = 0;

if (EVENT == 100) then
	SelectMsg(UID, 3, -1, 11624, NPC, 8359, 102, 8360, 103,	8574, 104, 8208, 105, 8534, 106, 4637, 107, 8479, 108, 8465, 111, 10, 101);
end

if (EVENT == 101) then
	Ret = 1;
end

if (EVENT == 102) then -- War Emblem Exchange
	WARAMBLEM = HowmuchItem(UID, 900594000);
	if (WARAMBLEM < 1) then
		SelectMsg(UID, 2, -1, 11801, NPC, 10, 101);
	else
		RobItem(UID, 900594000, 1)
		GiveItem(UID, 900595000, 1)
	end
end

if (EVENT == 103) then -- WAR Championship Emblem Exchange
	WARCAMBLEM = HowmuchItem(UID, 900596000);
	if (WARCAMBLEM < 1) then
		SelectMsg(UID, 2, -1, 11802, NPC, 10, 101);
	else
		RobItem(UID, 900596000, 1)
		GiveItem(UID, 900597000, 1)
	end
end

if (EVENT == 104) then -- Use Platinum Premium
	PLAT = HowmuchItem(UID, 399283687); -- KONTROL EDILCEK
	if (PLAT > 0) then -- Menu us -> 7029
		SelectMsg(UID, 2, -1, 9527, NPC, 4478, 300, 4005, 101);
	else
		SelectMsg(UID, 2, -1, 9528, NPC, 10, 101);
	end
end

if (EVENT == 300) then
	Prem = GetPremium(UID);
	if (Prem == 0) then
		RobItem(UID, 399283687, 1)
		GivePremium(UID, 7)
	else
		SelectMsg(UID, 2, -1, 9526, NPC, 10, 101);
	end
end

if (EVENT == 105) then -- Jumping Event
	Level = CheckLevel(UID);
	if (Level > 49) then
		SelectMsg(UID, 2, -1, 11050, NPC, 40147, 200, 40146, 101);
	else
		SelectMsg(UID, 2, -1, 11053, NPC, 10, 101);
	end
end

if (EVENT == 200) then
	SelectMsg(UID, 2, -1, 11051, NPC, 10, 201);
end

if (EVENT == 201) then
	SelectMsg(UID, 2, -1, 11052, NPC, 40142, 202, 4005, 101);
end

if (EVENT == 202) then
	Level = CheckLevel(UID);
	if (Level > 49 and Level < 60) then
		EVENT = 203
	elseif (Level > 59 and Level < 65) then
		EVENT = 204
	elseif (Level > 64) then
		EVENT = 205
	end
end

if (EVENT == 203) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		LevelChange(UID, 75)
	else
		LevelChange(UID, 73)
	end
end

if (EVENT == 204) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		LevelChange(UID, 76)
	else
		LevelChange(UID, 74)
	end
end

if (EVENT == 205) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		LevelChange(UID, 77)
	else
		LevelChange(UID, 75)
	end
end

if (EVENT == 106) then -- Under The Castle Event
	SelectMsg(UID, 3, -1, 11972, NPC, 2002, 400, 8535, 401, 8536, 402);
end

if (EVENT == 107) then -- Attendance Check Event
	
end

if (EVENT == 108) then -- Guardian Emblem Exchange
	GUARD = HowmuchItem(UID, 900703000);
	if (GUARD < 1) then
		SelectMsg(UID, 2, -1, 11063, NPC, 10, 101);
	else
		RobItem(UID, 900703000, 1)
		GiveItem(UID, 900704000, 1)
	end
end

if (EVENT == 111) then -- Exchange Wing of Neophyte
	WINGNEO = HowmuchItem(UID, 900700000);
	if (WINGNEO < 1) then
		SelectMsg(UID, 2, -1, 11063, NPC, 10, 101);
	else
		Nation = CheckNation(UID);
		if (Nation == 1) then
			RobItem(UID, 900700000, 1)
			GiveItem(UID, 900701000, 1)
		else
			RobItem(UID, 900700000, 1)
			GiveItem(UID, 900702000, 1)
		end
	end
end