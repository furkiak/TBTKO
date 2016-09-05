local Num = GetEventTrigger(UID)
local NPC = 7001;
local i = 0;

if (EVENT == 240) then
	EVENT =  Num
end

if (EVENT == 241) then
	Ret = 1;
end

if (Num < 41000) then

local HellX = {50, 50, 50, 50, 150, 150, 150, 150, 250, 250, 250, 250, 350, 350, 350, 352, 450, 450, 450, 450}
local HellY = {74, 197, 316, 437, 118, 237, 353, 473, 77, 192, 315, 435, 117, 235, 356, 477, 76, 195, 316, 433}

	if (EVENT == Num) then
		ItemA = HowmuchItem(UID, 379111000);  
		if (ItemA == 0)  then
			EVENT =  30078
		else
			SelectMsg(UID, 2, -1, 40071, NPC, 40075, 30075, 40009, 30078);
		end
	end

	if (EVENT == 30078) then
		i = Num - 40001 
		if (i < 1)  then
			SelectMsg(UID, 3, -1, 40001, NPC, 40010, 30010, 40041, 30041, 40099, 30099);
		elseif (i > 18) then
			SelectMsg(UID, 3, -1, 40020, NPC, 40010, 30100, 40041, 30041, 40090, 30090);
		elseif (i == 11 or i == 12 or i == 13 or i == 15 or i == 16) then 
			SelectMsg(UID, 3, -1, Num, NPC, 40010, 30011, 40041, 30041, 40090, 30090);
		else
			SelectMsg(UID, 3, -1, Num, NPC, 40010, 30010, 40041, 30041, 40090, 30090);
		end
	end

	if (EVENT == 300759) then
		RobItem(UID, 379111000, 1)
		ZoneChangeParty(UID, 33, 62, 91)
	end

	if (EVENT == 30010) then
		i = Num - 39999
		ZoneChange(UID, 32, HellX[i], HellY[i])
	end

	if (EVENT == 30041) then
		ItemA = HowmuchItem(UID, 379081000);
		ItemB = HowmuchItem(UID, 379082000);
		if (ItemA > 0 and ItemB > 0) then
			SelectMsg(UID, 3, -1, 40040, NPC, 40061, 30070, 40062, 30071, 40060, 241);
		elseif (ItemA > 0 and ItemB == 0) then
			SelectMsg(UID, 2, -1, 40058, NPC, 40061, 30070, 40060, 241);
		elseif (ItemA == 0 and ItemB > 0) then 
			SelectMsg(UID, 2, -1, 40056, NPC, 40062, 30071, 40060, 241);
		else
			SelectMsg(UID, 2, -1, 40022, NPC, 10, 241);
		end
	end

	if (EVENT == 30070) then
		RobItem(UID, 379081000, 1)
		ZoneChangeParty(UID, 32, 250, 192)
	end

	if (EVENT == 30071) then
		RobItem(UID, 379082000, 1)
		ZoneChangeParty(UID, 32, 450, 437)
	end

	if (EVENT == 30011) then
		ItemA = HowmuchItem(UID, 379080000);  
		if (ItemA > 0) then
			RobAllItemParty(UID, 379080000)
			i = Num - 39999
			ZoneChangeParty(UID, 32, HellX[i], HellY[i])
		else
			SelectMsg(UID, 2, -1, 40021, NPC, 10, 241);
		end
	end

	if (EVENT == 30090) then
		SelectMsg(UID, 2, -1, 40090, NPC, 40090, 30395, 40099, 30099);
	end

	if (EVENT == 30395) then 
		i = Num - 40001
		ZoneChange(UID, 32, HellX[i], HellY[i])
	end

	if (EVENT == 30099) then
		ZoneChange(UID, 30, 500, 250)
	end

	if (EVENT == 30100) then
		SelectMsg(UID, 2, -1, 40070, NPC, 10, 241);
	end

elseif (Num > 41000 and Num < 43000) then

local HellX = {62, 62, 62, 62, 189, 189, 189, 189, 315, 315, 316, 315, 444, 444, 444, 444}
local HellY = {91, 226, 351, 477, 94, 225, 348, 458, 90, 225, 354, 475, 102, 224, 353, 458}

	if (EVENT == Num) then
		i = Num - 42001 
		if (i < 1) then
			SelectMsg(UID, 3, -1, 42001, NPC, 40010, 30110, 40041, 30141, 40099, 30496,  40076, 30076, 40077, 30077);
		elseif (i > 14) then
			SelectMsg(UID, 3, -1, 42016, NPC, 40041, 30141, 40090, 30190,  40076, 30076, 40077, 30077);
		elseif (i == 10 or i == 12 or i == 13 or i == 14) then
			SelectMsg(UID, 3, -1, Num, NPC, 40010, 30111, 40041, 30141, 40090, 30190,  40076, 30076, 40077, 30077);
		else
			SelectMsg(UID, 3, -1, Num, NPC, 40010, 30110, 40041, 30141, 40090, 30190,  40076, 30076, 40077, 30077);
		end
	end

	if (EVENT == 30077) then
		ItemA = HowmuchItem(UID, 389200000);  
		if (ItemA == 0) then
			SelectMsg(UID, 2, -1, 43603, NPC, 10, 241);
		else
			SelectMsg(UID, 2, -1, 43602, NPC, 40077, 30112, 40060, 30077);
		end
	end

	if (EVENT == 30112) then
		RobItem(UID, 389200000, 1)
		ZoneChangeParty(UID, 34, 112, 15)
	end

	if (EVENT == 30076) then
		ZoneChange(UID, 32, 50, 74) 
	end

	if (EVENT == 30110) then
		i = Num - 41999
		ZoneChange(UID, 33, HellX[i], HellY[i])
	end

	if (EVENT == 30141) then
		ItemA = HowmuchItem(UID, 379083000);
		ItemB = HowmuchItem(UID, 379084000);
		if (ItemA > 0 and ItemB > 0) then
			SelectMsg(UID, 3, -1, 40055, NPC, 40063, 30170, 40064, 30171, 40060, 241);
		elseif (ItemA > 0 and ItemB == 0) then
			SelectMsg(UID, 2, -1, 40054, NPC, 40063, 30170, 40060, 241);
		elseif (ItemA == 0 and ItemB > 0) then
			SelectMsg(UID, 2, -1, 40052, NPC, 40064, 30171, 40060, 241);
		else
			SelectMsg(UID, 2, -1, 40022, NPC, 10, 241);
		end
	end

	if (EVENT == 30170) then
		RobItem(UID, 379083000, 1)
		ZoneChangeParty(UID, 33, 189, 458)
	end

	if (EVENT == 30171) then
		RobItem(UID, 379084000, 1)
		ZoneChangeParty(UID, 33, 444, 458)
	end

	if (EVENT == 30111) then
		ItemA = HowmuchItem(UID, 379080000);  
		if (ItemA > 0) then
			RobItem(UID, 379080000, 1)
			i = Num - 41999
			ZoneChangeParty(UID, 33, HellX[i], HellY[i])
		else
			SelectMsg(UID, 2, -1, 40021, NPC, 10, 241);
		end
	end

	if (EVENT == 30190) then
		SelectMsg(UID, 2, -1, 40090, NPC, 40090, 30495, 40099, 30496);
	end

	if (EVENT == 30495) then 
		i = Num - 42001
		ZoneChange(UID, 33, HellX[i], HellY[i])
	end
 
	if (EVENT == 30496) then
		ZoneChange(UID, 30, 500, 250)
	end

else

	if (EVENT == 43601) then 
		SelectMsg(UID, 3, -1, 43601, NPC, 4071, 30096,  4072, 241);
	end

	if (EVENT == 30096) then
		ZoneChange(UID, 33, 445, 459)
	end
end