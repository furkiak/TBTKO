local NPC = 32608;
local Ret = 0;

if (EVENT == 100) then
	NATION = CheckNation(UID);
	if (NATION == 2) then
		GiveItem(UID, 900035000, 1)
		SelectMsg(UID, 2, -1, 9846, NPC, 10, 101);
	else
		SelectMsg(UID, 2, -1, 1028, NPC, 10, 101);
	end	
end

if (EVENT == 101) then
	Ret = 1;
end