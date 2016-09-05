local Ret = 0;
local NPC = 14438;

if (EVENT == 3000) then
	SelectMsg(UID, 3, -1, 807, NPC, 67, 100, 68, 201);
end

if (EVENT == 201) then
	Ret = 1;
end

if (EVENT == 100) then
	Level = CheckLevel(UID);
	if (Level > 69) then
		SelectMsg(UID, 2, -1, 808, NPC, 2002, 101);
	else
		SelectMsg(UID, 2, -1, 810, NPC, 10, 201);
	end
end

if (EVENT == 101) then
	SelectMsg(UID, 2, -1, 809, NPC, 65, 102);
end

if (EVENT == 102) then
	SelectMsg(UID, 2, -1, 812, NPC, 10, 201);
end