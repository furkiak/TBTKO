local Ret = 0;
local NPC = 18004;
local savenum = -1;

if EVENT == 101 then
	Ret = 1;
end

if EVENT == 100 then   
	Level = CheckLevel(UID)
	if Level > 9 then 
		Class = CheckClass(UID);
		if Class == 1 or Class == 2 or Class == 3 or Class == 4 then
			ITEM_COUNT = HowmuchItem(UID, 900000000);
			if ITEM_COUNT < 3000 then
				SelectMsg(UID, 2, savenum, 4065, NPC, 10, 101);
			else
				SelectMsg(UID, 2, savenum, 4064, NPC, 4062, 404, 4063, 101);
			end
		else
			EVENT = 105
		end
	else
		SelectMsg(UID, 2, savenum, 4069, NPC, 10, 101);
	end
end

if EVENT == 105 then
	SelectMsg(UID, 3, savenum, 147, NPC, 4070, 106, 7772, 107, 8639, 108, 8649, 300);
end

if EVENT == 106 then
	SelectMsg(UID, 2, savenum, 4070, NPC, 4070, 408, 10, 101);
end

if EVENT == 107 then
	Check = NationChange(UID);
	if (Check == 0) then
		SelectMsg(UID, 2, savenum, 1524, NPC, 10, 101);
	elseif (Check == 1) then
		SelectMsg(UID, 2, savenum, 1523, NPC, 18, 1000);
	elseif (Check == 2) then
		SelectMsg(UID, 2, savenum, 1526, NPC, 10, 101);
	elseif (Check == 3) then
		SelectMsg(UID, 2, savenum, 1521, NPC, 10, 101);
	end
end

if EVENT == 108 then
	Race = GetRace(UID);
	Class = CheckClass(UID);
	if (Race == 1 or (Race == 2 and (Class == 2 or Class == 7 or Class == 8))) then
		SelectMsg(UID, 2, -1, 44203, NPC, 3006, 101);
	else
		EVENT = 109
	end
end

if EVENT == 109 then
	GENDERITEM = HowmuchItem(UID, 800560000);
	if (GENDERITEM > 0) then
		Race = GetRace(UID);
		Class = CheckClass(UID);
		if (Race == 11) then
			SelectMsg(UID, 2, -1, 44203, NPC, 8641, 110, 8642, 111);
		elseif (Race == 12) then
			if (Class == 1 or Class == 5 or Class == 6) then
				SelectMsg(UID, 2, -1, 44203, NPC, 8640, 112, 8642, 111);
			else
				SelectMsg(UID, 2, -1, 44203, NPC, 8642, 111);
			end
		elseif (Race == 13) then
			if (Class == 1 or Class == 5 or Class == 6) then
				SelectMsg(UID, 2, -1, 44203, NPC, 8640, 112, 8641, 110);
			else
				SelectMsg(UID, 2, -1, 44203, NPC, 8641, 110);
			end
		elseif (Race == 3 or Race == 2) then
			if (Class == 4 or Class == 11 or Class == 12) then
				SelectMsg(UID, 2, -1, 44203, NPC, 8643, 113);
			else
				SelectMsg(UID, 2, -1, 44203, NPC, 8643, 113);
			end
		elseif (Race == 4) then
			if (Class == 4 or Class == 11 or Class == 12) then
				SelectMsg(UID, 2, -1, 44203, NPC, 8645, 115);
			elseif (Class == 3 or Class == 9 or Class == 10) then
				SelectMsg(UID, 2, -1, 44203, NPC, 8644, 114);
			end
		end
	else
		SelectMsg(UID, 2, -1, 44217, NPC, 18, 1000);
	end
end

if EVENT == 110 then
	GenderChange(UID, 12);
end

if EVENT == 111 then
	GenderChange(UID, 13);
end

if EVENT == 112 then
	GenderChange(UID, 11);
end

if EVENT == 113 then
	GenderChange(UID, 4);
end

if EVENT == 114 then
	GenderChange(UID, 3);
end

if EVENT == 115 then
	GenderChange(UID, 2);
end

if EVENT == 300 then
	JOBCHANGEITEM = HowmuchItem(UID, 800570000);
	if (JOBCHANGEITEM > 0) then
		Class = CheckClass(UID);
		if (Class == 1 or Class == 5 or Class == 6) then
			SelectMsg(UID, 3, -1, 44203, NPC, 8651, 302, 8652, 303, 8653, 304);
		elseif (Class == 2 or Class == 7 or Class == 8) then
			SelectMsg(UID, 3, -1, 44203, NPC, 8650, 301, 8652, 303, 8653, 304);
		elseif (Class == 3 or Class == 9 or Class == 10) then
			SelectMsg(UID, 3, -1, 44203, NPC, 8650, 301, 8651, 302, 8653, 304);
		elseif (Class == 4 or Class == 11 or Class == 12) then
			SelectMsg(UID, 3, -1, 44203, NPC, 8650, 301, 8651, 302, 8652, 303);
		end
	else
		SelectMsg(UID, 2, -1, 44217, NPC, 18, 1000);
	end
end

if EVENT == 301 then
	JobChange(UID,1);
end

if EVENT == 302 then
	JobChange(UID,2);
end

if EVENT == 303 then
	JobChange(UID,3);
end

if EVENT == 304 then
	JobChange(UID,4);
end

if EVENT == 404 then
	SaveEvent(UID, 4063);
	PromoteUserNovice(UID)
	GoldLose(UID, 3000)
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, savenum, 4066, NPC, 4064, 101);
	else
		SelectMsg(UID, 2, savenum, 4067, NPC, 4064, 101);
	end
end

if EVENT == 408 then
	SendStatSkillDistribute(UID)
end

if EVENT == 1000 then
	ShowMap(UID, 450);
end