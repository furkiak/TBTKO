local NPC = 30390;
local Ret = 0;
 
if (EVENT == 100) then
	Victory = CheckWarVictory(UID);
	NATION = CheckNation(UID);
	if (Victory == 1) then
		if (NATION == 2) then
			RED = HowmuchItem(UID, 900129000);
			if (RED < 1) then
				Cast = CastSkill(UID, 610096);
				if (Cast) then
					GiveItem(UID, 900129000, 1)
				else
					Ret = 1;
				end
			else
				Ret = 1;
			end	
		else
			Ret = 1;
		end
	elseif (Victory == 2) then
		if (NATION == 1) then
			RED = HowmuchItem(UID, 900129000);
			if (RED < 1) then
				Cast = CastSkill(UID, 610096);
				if (Cast) then
					GiveItem(UID, 900129000, 1)
				else
					Ret = 1;
				end
			else
				Ret = 1;
			end
		else
			Ret = 1;
		end	
	else
		SelectMsg(UID, 2, -1, 8970, NPC, 10, 101);
	end
end
 
if (EVENT == 101) then
	Ret = 1;
end