local Ret = 0;
local NPC = 19006;

if (EVENT == 500) then
	SelectMsg(UID, 2, -1, 8062, NPC, 4473, 101, 4474, 102)
end

if (EVENT == 168) then
	Ret = 1;
end

if (EVENT == 101) then
	SelectMsg(UID, 2, -1, 8063, NPC, 4063 , 103, 3005, 168)
end

if (EVENT == 102) then
	SelectMsg(UID, 2, -1, 8064, NPC , 4170 , 104 , 3005, 168)
end

if (EVENT == 103) then
	CLANA = isInClan(UID);
	if (CLANA) then
		ZoneChange(UID, 48, 58, 186)
	else
		SelectMsg(UID, 2, -1, 6044, NPC, 27, 168);
	end	  	    
end

if (EVENT == 104) then
	PARTY = isInParty(UID);
	if (PARTY) then
		CLAN = isInClan(UID);
		if (CLAN) then
			ZoneChangeParty(UID, 48, 197, 181)
		else
			SelectMsg(UID, 2, -1, 6405, NPC, 27, 168);
		end
	else
		SelectMsg(UID, 2, -1, 6044, NPC, 4069, 168);
	end
end