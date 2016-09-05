local Ret = 0;
local NPC = 21610;
local savenum = -1;

if (EVENT == 240) then
	SelectMsg(UID, 3, savenum, 4150, NPC, 4150, 100, 4151, 360, 4155, 370, 4156, 380, 4154, 241);
end

if (EVENT == 241) then
	Ret = 1;
end

if (EVENT == 100) then
	SelectMsg(UID, 3, savenum, 6382, NPC, 4333, 280, 4334, 110, 4335, 120, 4328, 350, 4154, 241);
end

if (EVENT == 110) then
	GetClanRank = CheckKnight(UID)
	if (GetClanRank == 2) then
		GetClanGrade = CheckClanGrade(UID)
		if (GetClanGrade == 1) then
			Check = isClanLeader(UID)
			if (Check) then
				SelectMsg(UID, 3, savenum, 6381, NPC, 4157, 111, 4158, 114, 4159, 115);
			else
				SelectMsg(UID, 2, savenum, 4164, NPC, 10, 241);
			end
		else
			SelectMsg(UID, 2, savenum, 6385, NPC, 10, 241);
		end
	else
		SelectMsg(UID, 2, savenum, 6404, NPC, 10, 241);
	end
end

if (EVENT == 111) then
	SelectMsg(UID, 2, savenum, 6387, NPC, 4160, 112, 27, 241);
end

if (EVENT == 112) then
	SelectMsg(UID, 2, savenum, 6388, NPC, 4160, 113, 27, 241);
end

if (EVENT == 113) then
	SelectMsg(UID, 2, savenum, 6389, NPC, 27, 241);
end

if (EVENT == 114) then
	SelectMsg(UID, 2, savenum, 6390, NPC, 4161, 116, 4162, 241);
end

if (EVENT == 115) then
	ZoneChangeClan(UID, 93, 63, 474)
end

if (EVENT == 116) then
	ItemA = HowmuchItem(UID, 900000000);
	ItemB = HowmuchItem(UID, 389221000);
	if (ItemA < 10000000) then
		SelectMsg(UID, 2, savenum, 6391, NPC, 10, 241);
	elseif (ItemB == 0) then
		SelectMsg(UID, 2, savenum, 6392, NPC, 18, 244);
	else
		RobItem(UID, 389221000, 1)
		GoldLose(UID, 10000000)
		PromoteKnight(UID, 3)
		SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241)
	end
end

if (EVENT == 244) then
	ShowMap(UID, 667);
end

if (EVENT == 120) then
	GetClanRank = CheckKnight(UID)
	if (GetClanRank == 7) then
		Check = isClanLeader(UID)
		if (Check) then
			SelectMsg(UID, 3, savenum, 6394, NPC, 4157, 121, 4158, 124, 4159, 125);
		else
			SelectMsg(UID, 2, savenum, 4164, NPC, 10, 241);
		end
	else
		SelectMsg(UID, 2, savenum, 6395, NPC, 10, 241);
	end
end

if (EVENT == 121) then
	SelectMsg(UID, 2, savenum, 6396, NPC, 4160, 122, 27, 241);
end

if (EVENT == 122) then
	SelectMsg(UID, 2, savenum, 6397, NPC, 4160, 123, 27, 241);
end

if (EVENT == 123) then
	SelectMsg(UID, 2, savenum, 6398, NPC, 27, 241);
end

if (EVENT == 124) then
	SelectMsg(UID, 2, 954, 6399, NPC, 4161, 126, 4162, 241);
end

if (EVENT == 125) then
	ZoneChangeClan(UID, 94, 110, 20)
end

if (EVENT == 126) then
	ItemA = HowmuchItem(UID, 900000000);
	ItemB = HowmuchItem(UID, 389222000); 
	if (ItemA < 100000000) then
		SelectMsg(UID, 2, savenum, 6400, NPC, 10, 241);
	elseif (ItemB == 0) then
		SelectMsg(UID, 2, savenum, 6401, NPC, 18, 245);
	else
		RobItem(UID, 389222000, 1)
		GoldLose(UID, 100000000)
		PromoteKnight(UID, 8)
		SelectMsg(UID, 2, savenum, 6402, NPC, 10, 241);
	end
end

if (EVENT == 245) then
	ShowMap(UID, 668);
end

if (EVENT == 280) then
	GetClanRank = CheckKnight(UID)
	if (GetClanRank == 1) then
		GetClanGrade = CheckClanGrade(UID)
		if (GetClanGrade < 4) then
			Check = isClanLeader(UID)
			if (Check) then
				SelectMsg(UID, 3, savenum, 4165, NPC, 4157, 281, 4158, 286, 4159, 285);
			else
				SelectMsg(UID, 2, savenum, 4164, NPC, 10, 241);
			end
		else
			SelectMsg(UID, 2, savenum, 4163, NPC, 10, 241);
		end
	else
		SelectMsg(UID, 2, savenum, 6403, NPC, 10, 241);
	end
end

if (EVENT == 281) then
	SelectMsg(UID, 2, savenum, 4166, NPC, 4160, 282, 27, 241);
end

if (EVENT == 282) then
	SelectMsg(UID, 2, savenum, 4167, NPC, 4160, 283, 27, 241);
end

if (EVENT == 283) then
	SelectMsg(UID, 2, savenum, 4168, NPC, 27, 241);
end

if (EVENT == 285) then
	ZoneChangeClan(UID, 54, 150, 150, 50)
end

if (EVENT == 286) then
	SelectMsg(UID, 4, 415, 4172, NPC, 4161, 287, 4162, 241);
end

if (EVENT == 287) then
	ItemA = HowmuchItem(UID, 900000000);
	ItemB = HowmuchItem(UID, 910045000);
	if (ItemA < 10000000) then
		SelectMsg(UID, 2, savenum, 4170, NPC, 10, 241);
	elseif (ItemB == 0) then
		SelectMsg(UID, 2, savenum, 4171, NPC, 18, 242);
	else
		GoldLose(UID, 10000000)
		RobItem(UID , 910045000, 1)
		PromoteKnight(UID, 2)
	end
end

if (EVENT == 242) then
	ShowMap(UID, 422);
end

if (EVENT == 360) then
	Loyalty = CheckLoyalty(UID)
	if (Loyalty > 100) then
		SelectMsg(UID, 2, savenum, 4155, NPC, 10, 241);
	else
		SelectMsg(UID, 3, savenum, 4156, NPC, 4152, 361, 4153, 363, 4154, 241);
	end
end

if (EVENT == 361) then 
	ITEM_COUNT = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT < 1500000) then
		SelectMsg(UID, 2, savenum, 4160, NPC, 10, 241);
	else
		SelectMsg(UID, 4, 413, 4157, NPC, 22, 362, 23, 241);
	end
end

if (EVENT == 362) then 
	GoldLose(UID, 1500000)
	GiveLoyalty(UID, 500)
end

if (EVENT == 363) then
	ITEM_COUNT = HowmuchItem(UID, 900000000);
	if (ITEM_COUNT < 350000) then
		SelectMsg(UID, 2, savenum, 4161, NPC, 10, 241);
	else
		SelectMsg(UID, 4, 414, 4159, NPC, 22, 364, 23, 241);
	end
end

if (EVENT == 364) then 
	GoldLose(UID, 350000)
	GiveLoyalty(UID, 100)
end

if (EVENT == 370) then
	Reward = RequestPersonalRankReward(UID)
	if (Reward == 0) then
		SelectMsg(UID, 2, savenum, 4153, NPC, 10, 241);
	elseif (Reward == 2) then
		SelectMsg(UID, 2, savenum, 4154, NPC, 10, 241);
	else
		Ret = 1;
	end
end

if (EVENT == 380) then
	Reward = RequestReward(UID)
	if (Reward == 0) then
		SelectMsg(UID, 2, savenum, 4151, NPC, 10, 241);
	elseif (Reward == 2) then
		SelectMsg(UID, 2, savenum, 4152, NPC, 10, 241);
	else
		Ret = 1; 
	end
end

if (EVENT == 350) then
	GetClanRank = CheckKnight(UID)
	if (GetClanRank == 3) then -- ACC 5
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6410, NPC, 4330, 371, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
	if (GetClanRank == 4) then -- ACC 4
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6410, NPC, 4330, 372, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
	if (GetClanRank == 5) then -- ACC 3
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6410, NPC, 4330, 368, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
	if (GetClanRank == 6) then -- ACC 2
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6410, NPC, 4330, 373, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
	if (GetClanRank == 7) then -- ACC 1
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6407, NPC, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
	if (GetClanRank == 8) then -- Royal 5
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6410, NPC, 4330, 369, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
	if (GetClanRank == 9) then -- Royal 4
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6410, NPC, 4330, 365, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
	if (GetClanRank == 10) then -- Royal 3
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6410, NPC, 4330, 366, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
	if (GetClanRank == 11) then -- Royal 2
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6410, NPC, 4330, 367, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
	if (GetClanRank == 12) then -- Royal 1
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6409, NPC, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
	if (GetClanRank < 3) then -- Training ve ya Clansiz olanlar
		Leader = isClanLeader(UID)
		if (Leader) then 
			SelectMsg(UID, 2, savenum, 6385, NPC, 27, 241);
		else
			SelectMsg(UID, 2, savenum, 6384, NPC, 27, 241);
		end
	end
end

if (EVENT == 371) then -- ACC 4 ICIN 7K CP
	CP = CheckClanPoint(UID)
	if (CP < 252000) then
		SelectMsg(UID, 2, savenum, 6419, NPC, 27, 241);
	else
		ShowEffect(UID, 300391)
		RobClanPoint(UID, 252000)
		PromoteKnight(UID, 4)
		SelectMsg(UID, 2, savenum, 6411, NPC, 27, 241);
	end
end

if (EVENT == 372) then -- ACC 3 ICIN 10K CP
	CP = CheckClanPoint(UID)
	if (CP < 360000) then
		SelectMsg(UID, 2, savenum, 6418, NPC, 27, 241);
	else
		ShowEffect(UID, 300391)
		RobClanPoint(UID, 360000)
		PromoteKnight(UID, 5)
		SelectMsg(UID, 2, savenum, 6411, NPC, 27, 241);
	end
end

if (EVENT == 368) then -- ACC 2 ICIN 15K CP
	CP = CheckClanPoint(UID)
	if (CP < 540000) then
		SelectMsg(UID, 2, savenum, 6417, NPC, 27, 241);
	else
		ShowEffect(UID, 300391)
		RobClanPoint(UID, 540000)
		PromoteKnight(UID, 6)
		SelectMsg(UID, 2, savenum, 6411, NPC, 27, 241);
	end
end

if (EVENT == 373) then -- ACC 1 ICIN 20K CP
	CP = CheckClanPoint(UID)
	if (CP < 720000) then
		SelectMsg(UID, 2, savenum, 6416, NPC, 27, 241);
	else
		ShowEffect(UID, 300391)
		RobClanPoint(UID, 720000)
		PromoteKnight(UID, 7)
		SelectMsg(UID, 2, savenum, 6411, NPC, 27, 241);
	end
end

if (EVENT == 369) then -- Royal 4 ICIN 30K CP
	CP = CheckClanPoint(UID)
	if (CP < 1080000) then
		SelectMsg(UID, 2, savenum, 6415, NPC, 27, 241);
	else
		ShowEffect(UID, 300391)
		RobClanPoint(UID, 1080000)
		PromoteKnight(UID, 9)
		SelectMsg(UID, 2, savenum, 6411, NPC, 27, 241);
	end
end

if (EVENT == 365) then -- Royal 3 ICIN 35K CP
	CP = CheckClanPoint(UID)
	if (CP < 1260000) then
		SelectMsg(UID, 2, savenum, 6414, NPC, 27, 241);
	else
		ShowEffect(UID, 300391)
		RobClanPoint(UID, 1260000)
		PromoteKnight(UID, 10)
		SelectMsg(UID, 2, savenum, 6411, NPC, 27, 241);
	end
end

if (EVENT == 366) then -- Royal 2 ICIN 40K CP
	CP = CheckClanPoint(UID)
	if (CP < 1440000) then
		SelectMsg(UID, 2, savenum, 6413, NPC, 27, 241);
	else
		ShowEffect(UID, 300391)
		RobClanPoint(UID, 1440000)
		PromoteKnight(UID, 11)
		SelectMsg(UID, 2, savenum, 6411, NPC, 27, 241);
	end
end

if (EVENT == 367) then -- Royal 1 ICIN 45K CP
	CP = CheckClanPoint(UID)
	if (CP < 1620000) then
		SelectMsg(UID, 2, savenum, 6412, NPC, 27, 241);
	else
		ShowEffect(UID, 300391)
		RobClanPoint(UID, 1620000)
		PromoteKnight(UID,12)
		SelectMsg(UID, 2, savenum, 6411, NPC, 27, 241);
	end
end