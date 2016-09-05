local Ret = 0;
local NPC = 13016;

if EVENT == 500 then
   SelectMsg(UID, 3, -1, 4834, NPC, 4263, 101, 4264, 102, 4265, 103, 4337, 104, 4199, 3001);
end

if (EVENT == 800) then
	SelectMsg(UID, 3, -1, 4834, NPC, 4263, 101, 4264, 102, 4265, 103, 4337, 104, 4199, 3001);
end

if (EVENT == 104) then
	SelectMsg(UID, 3, -1, 820, NPC, 4344, 105, 4345, 106, 4199, 3001);
end

if (EVENT == 3001) then
	Ret = 1;
end

if (EVENT == 101) then
	-- Familiar Transform
end

if (EVENT == 102) then
	ITEMA = HowmuchItem(UID, 800090000);
	if (ITEMA > 0) then
		-- Familiar Name Change Fonksiyonu yok
	else
		SelectMsg(UID, 2, -1, 4833, NPC, 27, 3001);
	end
end	      

if (EVENT == 103) then
	SelectMsg(UID, 14, -1, NPC);
end    

if (EVENT == 105) then
	MagicBag = HowmuchItem(UID, 800440000);
	if (MagicBag > 0) then
		RobItem(UID, 800440000, 1)
		GiveItem(UID, 700011001, 1, 30)
	else
		SelectMsg(UID, 2, -1, 823, NPC, 10, 3001)
	end
end

if (EVENT == 106) then
	ITEM = HowmuchItem(UID, 800450000);
	if (ITEM > 0) then
		RobItem(UID, 800450000, 1)	
		GiveItem(UID, 700012000, 1, 30)
	else
		SelectMsg(UID, 2, -1, 824, NPC, 10, 3001)
	end
end

local savenum = 525;

if (EVENT == 602) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, savenum, 4704, NPC, 3000, 609, 3005, 3001);
	else
		SelectMsg(UID, 2, savenum, 4705, NPC, 10, 3001);
	end
end

if (EVENT == 609) then
	SelectMsg(UID, 4, savenum, 4706, NPC, 22, 603, 23, 604);
end

if (EVENT == 603) then
	SaveEvent(UID, 5402);
end

if (EVENT == 604) then
	SaveEvent(UID, 5405);
end

if (EVENT == 605) then
	SaveEvent(UID, 5404);
end

if (EVENT == 606) then
	MonsterCount = CountMonsterQuestSub(UID, 525, 1);
	if (MonsterSub > 10) then
		SelectMsg(UID, 2, savenum, 4721, NPC, 10, 607);   
	else
		SelectMsg(UID, 4, savenum, 4706, NPC, 22, 608, 23, 3001);
	end
end

if (EVENT == 607) then
	ShowMap(UID, 1);
end

if (EVENT == 608) then
	GiveItem(UID, 600001000, 1)
	GiveItem(UID, 389191000, 5)
	SaveEvent(UID, 5403);
end