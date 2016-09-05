local Ret = 0;
local NPC = 29453;
local savenum = -1;

if (EVENT == 100) then
	SelectMsg(UID, 2, savenum, 1547, NPC, 4226, 102, 4227, 101);
end

if (EVENT == 101) then
	Ret = 1;
end

if (EVENT == 102) then
	PARA = HowmuchItem(UID, 900000000);
	if (PARA < 1000000) then
		SelectMsg(UID, 2, savenum, 11338, NPC, 18, 103);
	else
		PVP = GetPVPMonumentNation(UID);
		if (PVP == 1) then
			Nation = CheckNation(UID);
			if (Nation == 1) then
				ZoneChange(UID, 71, 983, 1330);
			else	
				GoldLose(UID, 1000000);
				ZoneChange(UID, 71, 983, 1330);
			end
		elseif (PVP == 2) then
			Nation = CheckNation(UID);
			if (Nation == 2) then
				ZoneChange(UID, 71, 983, 1330);
			else	
				GoldLose(UID, 1000000);
				ZoneChange(UID, 71, 983, 1330);
			end
		else
			GoldLose(UID, 1000000);
			ZoneChange(UID, 71, 983, 1330);
		end
	end
end

if (EVENT == 103) then
	ShowMap(UID, 336);
end