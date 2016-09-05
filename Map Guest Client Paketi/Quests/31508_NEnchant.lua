local NPC = 31508;

if (EVENT == 100) then
	SelectMsg(UID, 3, -1, 9138, NPC, 7255, 200, 7316, 300, 8430, 500);
end

if (EVENT == 241) then
	Ret = 1;
end

if (EVENT == 300) then -- [Spirit Alseids] Of mounting
	Ret = 1;
end

if (EVENT == 500) then -- Settlement support free of charge buff
	COUPON = HowmuchItem(UID, 900667000);
	if (COUPON < 1) then
		SelectMsg(UID, 2, -1, 11849, NPC, 10, 241);
	else
		Ret = 1;
	end
end

if (EVENT == 200) then
	Level = CheckLevel(UID);
	if (Level < 35) then
		SelectMsg(UID, 2, -1, 9126, NPC, 4161, 203, 4162, 241);
	elseif (Level > 34 and Level < 61) then
		SelectMsg(UID, 2, -1, 9127, NPC, 4161, 204, 4162, 241);
	elseif (Level > 60) then
		SelectMsg(UID, 2, -1, 9128, NPC, 4161, 205, 4162, 241);
	end
end

if (EVENT == 203) then -- < 35 Level
	SelectMsg(UID, 2, -1, 9129, NPC, 10, 209);
end

if (EVENT == 209) then
	Level = CheckLevel(UID);
	if (Level > 20) then
		NOAH = HowmuchItem(UID, 900000000);
		if (NOAH < 30000) then
			SelectMsg(UID, 2, -1, 9135, NPC, 18, 1000);
		else
			SelectMsg(UID, 3, -1, 9132, NPC, 7091, 400, 7092, 401, 7093, 402, 8891, 403);
		end
	else
		SelectMsg(UID, 3, -1, 9132, NPC, 7091, 666, 7092, 667, 7093, 668, 8891, 669);
	end
end

if (EVENT == 1000) then
	ShowMap(UID, 336);
end

if (EVENT == 204) then -- 35 - 60 Level 
	SelectMsg(UID, 2, -1, 9129, NPC, 10, 210);
end

if (EVENT == 210) then
	NOAH = HowmuchItem(UID, 900000000);
	if (NOAH < 30000) then
		SelectMsg(UID, 2, -1, 9135, NPC, 18, 1000);
	else
		SelectMsg(UID, 3, -1, 9133, NPC, 7091, 700, 7094, 701, 7095, 702, 8891, 703);
	end
end

if (EVENT == 205) then -- +60 Level
	SelectMsg(UID, 2, -1, 9129, NPC, 10, 206);
end

if (EVENT == 206) then
	SelectMsg(UID, 2, -1, 9136, NPC, 7099, 207, 7098, 208);
end

if (EVENT == 207) then
	NOAH = HowmuchItem(UID, 900000000);
	if (NOAH < 50000) then
		SelectMsg(UID, 2, -1, 9135, NPC, 18, 1000);
	else
		SelectMsg(UID, 3, -1, 9134, NPC, 7091, 800, 7096, 801, 7097, 802, 8891, 803);
	end
end

if (EVENT == 666) then -- < 20 Attack
	Cast = CastSkill(UID, 302344);
	if (Cast) then
		CastSkill(UID, 302344)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 667) then -- < 20 Defans
	Cast = CastSkill(UID, 302331);
	if (Cast) then
		CastSkill(UID, 302331)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 668) then -- < 20 HP
	Cast = CastSkill(UID, 302328);
	if (Cast) then
		CastSkill(UID, 302328)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 669) then -- < 20 Swift
	Cast = CastSkill(UID, 107010);
	if (Cast) then
		CastSkill(UID, 107010)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 400) then -- 21 - 35 Attack
	Cast = CastSkill(UID, 302344);
	if (Cast) then
		CastSkill(UID, 302344)
		GoldLose(UID, 10000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 401) then -- 21 - 35 Defans
	Cast = CastSkill(UID, 302331);
	if (Cast) then
		CastSkill(UID, 302331)
		GoldLose(UID, 10000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 402) then -- 21 - 35 HP
	Cast = CastSkill(UID, 302328);
	if (Cast) then
		CastSkill(UID, 302328)
		GoldLose(UID, 10000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 403) then -- 21 - 35 Swift
	Cast = CastSkill(UID, 107010);
	if (Cast) then
		CastSkill(UID, 107010)
		GoldLose(UID, 10000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 700) then -- 35 - 60 Attack
	Cast = CastSkill(UID, 302344);
	if (Cast) then
		CastSkill(UID, 302344)
		GoldLose(UID, 30000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 701) then -- 35 - 60 Defans
	Cast = CastSkill(UID, 302332);
	if (Cast) then
		CastSkill(UID, 302332)
		GoldLose(UID, 30000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 702) then -- 35 - 60 HP
	Cast = CastSkill(UID, 302329);
	if (Cast) then
		CastSkill(UID, 302329)
		GoldLose(UID, 30000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 703) then -- 35 - 60 Swift
	Cast = CastSkill(UID, 107010);
	if (Cast) then
		CastSkill(UID, 107010)
		GoldLose(UID, 30000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 800) then -- +60 Attack
	Cast = CastSkill(UID, 302344);
	if (Cast) then
		CastSkill(UID, 302344)
		GoldLose(UID, 50000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 801) then -- +60 Defans
	Cast = CastSkill(UID, 302333);
	if (Cast) then
		CastSkill(UID, 302333)
		GoldLose(UID, 50000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 802) then -- +60 HP
	Cast = CastSkill(UID, 302330);
	if (Cast) then
		CastSkill(UID, 302330)
		GoldLose(UID, 50000)
	else
		NpcMsg(UID, 9137);
	end
end

if (EVENT == 803) then -- +60 Swift
	Cast = CastSkill(UID, 107010);
	if (Cast) then
		CastSkill(UID, 107010)
		GoldLose(UID, 50000)
	else
		NpcMsg(UID, 9137);
	end
end