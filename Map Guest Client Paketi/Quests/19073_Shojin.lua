local UserClass;
local QuestNum;
local Ret = 0;
local NPC =19073;

if (EVENT == 100) then
	SelectMsg(UID, 20, -1, 845, NPC, 4520, 101, 4521, 102, 4526, 103, 4522, 104, 4523, 105);
end

if EVENT == 104 then
   SelectMsg(UID, 19, -1, 848, NPC, 4524, 106, 4525, 168);	
end

if EVENT == 105 then
   SelectMsg(UID, 21, -1, -1, NPC, -1, -1 );	
end

if EVENT == 106 then
   SelectMsg(UID, 18, -1, -1, NPC);	
end

if EVENT == 168 then
   Ret = 1;
end

if (EVENT == 101) then
	SelectMsg(UID, 2, -1, 846, NPC, 2003, 100);
end

if (EVENT == 102) then
	SelectMsg(UID, 2, -1, 847, NPC, 2003, 100);
end

if (EVENT == 103) then
	SelectMsg(UID, 2, -1, 849, NPC, 4527, 200, 4528, 201);
end

if (EVENT == 200) then
	Loyalty = CheckLoyalty(UID);
	Money = HowmuchItem(UID, 900000000);
	if (Loyalty < 100) then
		SelectMsg(UID, 2, -1, 852, NPC, 18, 202);
	elseif (Money < 1000000) then
		SelectMsg(UID, 2, -1, 851, NPC, 18, 203);
	else
		RobLoyalty(UID, 100)
		GoldLose(UID, 1000000)
		GiveItem(UID, 389132000, 1)
	end
end

if (EVENT == 202) then
	ShowMap(UID, 338);
end

if (EVENT == 203) then
	ShowMap(UID, 336);
end

if (EVENT == 201) then
	SelectMsg(UID, 2, -1, 854, NPC, 10, 168);
end

