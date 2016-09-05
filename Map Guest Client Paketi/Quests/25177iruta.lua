local Ret = 0;
local NPC = 13015;

if (EVENT == 165) then
	Level = CheckLevel(UID)
	if (Level > 59) then
		SelectMsg(UID, 2, -1, 4134, NPC, 4075, 168, 4076, 169);
	elseif (Level > 44 and Level < 60) then
		SelectMsg(UID, 2, -1, 4133, NPC, 4075, 170, 4076, 169); 
	else
		SelectMsg(UID, 2, -1, 4135, NPC, 10, 169);
	end
end

if (EVENT == 168) then
	Time = CheckMonsterChallengeTime(UID)
	if (Time == 3) then
		Count = CheckMonsterChallengeUserCount(UID)
		if (Count < 33) then
			ItemA = HowmuchItem(UID, 900000000); 
			if (ItemA > 100000) then
				GoldLose(UID, 100000)
				ZoneChange(UID, 55, 150, 150)
			else
				SelectMsg(UID, 2, -1, 4136, NPC, 18, 200);
			end
		else
			SelectMsg(UID, 2, -1, 4137, NPC, 10, 169);
		end
	else
		SelectMsg(UID, 2, -1, 4138, NPC, 10, 169);
	end
end

if (EVENT == 200) then
	ShowMap(UID, 336);
end

if (EVENT == 170) then
	Time = CheckMonsterChallengeTime(UID)
	if (Time == 2) then
		Count = CheckMonsterChallengeUserCount(UID)
		if (Count < 33) then
			Class = CheckClass (UID);
			if (Class == 6 or Class == 8 or Class == 10 or Class == 12) then
				SelectMsg(UID, 2, -1, 4139, NPC, 10, 169);         
			else
				StatA = CheckStatPoint(UID, 1)
				StatB = CheckStatPoint(UID, 2)
				StatC = CheckStatPoint(UID, 3)
				StatD = CheckStatPoint(UID, 4)
				StatE = CheckStatPoint(UID, 5)
				Sum = StatA+ StatB + StatC+ StatD + StatE 
				if (Sum > 476) then
					SelectMsg(UID, 2, -1, 4139, NPC, 10, 169);         
				else
					ZoneChange(UID, 55, 150, 150)
				end 
			end
		else
			SelectMsg(UID, 2, -1, 4137, NPC, 10, 169);
		end
	else
		SelectMsg(UID, 2, -1, 4140, NPC, 10, 169);
	end
end

if (EVENT == 169) then
	Ret = 1;
end