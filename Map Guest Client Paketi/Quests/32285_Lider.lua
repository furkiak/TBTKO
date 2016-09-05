local NPC = 32285;
local Ret = 0;

if (EVENT == 100) then
	Level = CheckLevel(UID);
	if (Level > 69) then
		SelectMsg(UID, 3, -1, 906, NPC, 4076, 102, 4154, 101);
	else
		SelectMsg(UID, 2, -1, 910, NPC, 10, 101);
	end	
end

if (EVENT == 101) then
	Ret = 1;
end

if (EVENT == 102) then
	CheckLider = isPartyLeader(UID);
	if (CheckLider) then
		ZoneChangeParty(UID, 75, 150, 150)
	else
		ZoneChange(UID, 75, 150, 150)
	end	
end