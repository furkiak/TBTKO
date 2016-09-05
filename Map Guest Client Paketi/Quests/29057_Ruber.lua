local NPC = 29057;
local Ret = 0;

if (EVENT == 100) then
	DCPrem = GetPremium(UID);
	if (DCPremium == 10) then
		SelectMsg(UID, 2, -1, 9529, NPC, 4005, 102, 4006, 101);
	else
		SelectMsg(UID, 2, -1, 9530, NPC, 10, 101);
	end
end

if (EVENT == 101) then
	Ret = 1;
end

if (EVENT == 102) then
	SelectMsg(UID, 3, -1, 100, NPC, 23, 103, 24, 104, 25, 105, 26, 106, 4006, 101);
end

if (EVENT == 103) then
	MONEY = HowmuchItem(UID, 900000000);
	if (MONEY < 500000) then
		SelectMsg(UID, 2, -1, 100, NPC, 18, 101);
	else
		GoldLose(UID, 500000)
		GiveItem(UID, 111111111, 1) -- DC Potion
	end
end

if (EVENT == 104) then
	MONEY = HowmuchItem(UID, 900000000);
	if (MONEY < 500000) then
		SelectMsg(UID, 2, -1, 100, NPC, 18, 101);
	else
		GoldLose(UID, 500000)
		GiveItem(UID, 111111111, 1) -- DC Mana
	end
end

if (EVENT == 105) then
	MONEY = HowmuchItem(UID, 900000000);
	if (MONEY < 500000) then
		SelectMsg(UID, 2, -1, 100, NPC, 18, 101);
	else
		GoldLose(UID, 500000)
		GiveItem(UID, 111111111, 1) -- DC Weapon Enchant Scroll
	end
end

if (EVENT == 106) then
	MONEY = HowmuchItem(UID, 900000000);
	if (MONEY < 500000) then
		SelectMsg(UID, 2, -1, 100, NPC, 18, 101);
	else
		GoldLose(UID, 500000)
		GiveItem(UID, 111111111, 1) -- DC Armor Enchant Scroll
	end
end
    