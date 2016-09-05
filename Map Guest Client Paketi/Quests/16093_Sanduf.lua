local Ret = 0;
local NPC = 16093;

if (EVENT == 190) then
	SelectMsg(UID, 2, -1, 4631, NPC, 4226, 191, 4227, 168);        
end

if (EVENT == 191) then
	Level = CheckLevel(UID)
	Nation = CheckNation(UID)
	if (Level < 60) then
		SelectMsg(UID, 2, -1, 4705, NPC, 10, 168);        
	else
		if (Nation == 1) then
			GoldLose(UID, 6000)
			ZoneChange(UID, 85, 235, 489)
		else
			GoldLose(UID, 6000)
			ZoneChange(UID, 86, 235, 489)
		end
	end
end

if (EVENT == 168) then
	Ret = 1;
end