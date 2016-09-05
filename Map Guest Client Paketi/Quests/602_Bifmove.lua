local Ret = 0;
local NPC = 602;

if (EVENT == 165) then
	SelectMsg(UID, 2, -1, 4470, NPC, 4200, 166, 4199, 168);		   
end

if (EVENT == 166) then
	Victory = CheckBeefRoastVictory(UID)
	if (Victory == 1) then
		Nation = CheckNation(UID);
		if (Nation == 1) then
			ZoneChange(UID, 31, 78, 730)
		else
			SelectMsg(UID, 2, -1, 4471, NPC, 10, 168);		 
		end
	elseif (Victory == 2) then
		Nation = CheckNation(UID);
		if (Nation == 2) then
			ZoneChange(UID, 31, 245, 950)
		else
			SelectMsg(UID, 2, -1, 4471, NPC, 10, 168);		 
		end
	elseif (Victory == 3) then
		Nation = CheckNation(UID);
		if (Nation == 1) then
			ZoneChange(UID, 31, 78, 730)
		else
			ZoneChange(UID, 31, 245, 950)
		end
	else
		SelectMsg(UID, 2, -1, 4471, NPC, 10, 168);		 
	end
end

if (EVENT == 168) then
	Ret = 1;
end