local Ret = 0;
local NPC = 19004;

if (EVENT == 165) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 567, NPC, 10, 101);
	elseif (QuestNum > 0 and QuestNum < 100) then
		NpcMsg(UID, 568, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 223;

if (EVENT == 195) then -- 24 Level Princers Scorpion
	SaveEvent(UID, 302);
end

if (EVENT == 200) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 568, NPC, 22, 201, 23, 202);
	else
		SelectMsg(UID, 2, savenum, 568, NPC, 10, 193);
	end
end

if (EVENT == 201) then
	SaveEvent(UID, 303);
end

if (EVENT == 202) then
	SaveEvent(UID, 306);
end

if (EVENT == 205) then
	SelectMsg(UID, 2, savenum, 568, NPC, 10, 193);
	SaveEvent(UID, 305);
end

if (EVENT == 210) then
	MonsterCount = CountMonsterQuestSub(UID, 223, 1);
	if (MonsterCount < 2) then
		SelectMsg(UID, 2, savenum, 568, NPC, 18, 206);
	else
		SelectMsg(UID, 4, savenum, 568, NPC, 41, 207, 27, 193);
	end
end

if (EVENT == 206) then
	ShowMap(UID, 32);
end

if (EVENT == 207) then
	ExpChange(UID, 50000)
	GoldGain(UID, 50000)
	SaveEvent(UID, 304);
end

local savenum = 1023;

if (EVENT == 410) then -- 28 Level Undying Bone
	SaveEvent(UID, 820);
end

if (EVENT == 412) then
	SelectMsg(UID, 4, savenum, 723, NPC, 22, 413, 23, 414);
end

if (EVENT == 413) then
	SaveEvent(UID, 821);
end

if (EVENT == 414) then
	SaveEvent(UID, 824);
end

if (EVENT == 416) then
	SelectMsg(UID, 2, savenum, 723, NPC, 10, 193);
	SaveEvent(UID, 823);
end

if (EVENT == 417) then
	ITEMA = HowmuchItem(UID, 392012000);
	if (ITEMA < 3) then
		SelectMsg(UID, 2, savenum, 723, NPC, 18, 418);
	else
		SelectMsg(UID, 4, savenum, 723, NPC, 41, 419, 27, 193);
	end
end

if (EVENT == 418) then
	ShowMap(UID, 22);
end

if (EVENT == 419) then
	RobItem(UID, 392012000, 3)
	GiveItem(UID, 379205000, 3)
	SaveEvent(UID, 822);
end

local savenum = 226;

if (EVENT == 290) then -- 29 Level Beozar of Glyptodont
	SaveEvent(UID, 510);
end

if (EVENT == 292) then
	SelectMsg(UID, 4, savenum, 1338, NPC, 22, 293, 23, 294);
end

if (EVENT == 293) then
	SaveEvent(UID, 511);
end

if (EVENT == 294) then
	SaveEvent(UID, 514);
end

if (EVENT == 297) then
	SelectMsg(UID, 2, savenum, 1338, NPC, 10, 193);
	SaveEvent(UID, 513);
end

if (EVENT == 298) then
	ITEM = HowmuchItem(UID, 379015000);
	if (ITEM < 5) then
		SelectMsg(UID, 2, savenum, 1338, NPC, 18, 299);
	else
		SelectMsg(UID, 4, savenum, 1338, NPC, 41, 300, 27, 193);
	end
end

if (EVENT == 299) then
	ShowMap(UID, 595);
end

if (EVENT == 300) then
	RobItem(UID, 379015000, 5);
	ExpChange(UID, 60000)
	SaveEvent(UID, 512);
end

local savenum = 125;

if (EVENT == 301) then -- 30 Level Boss Hunt
	SaveEvent(UID, 332);
end

if (EVENT == 303) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 584, NPC, 22, 304, 23, 305);
	else
		SelectMsg(UID, 2, savenum, 584, NPC, 10, 193);
	end
end

if (EVENT == 304) then
	SaveEvent(UID, 333);
end

if (EVENT == 305) then
	SaveEvent(UID, 336);
end

if (EVENT == 307) then
	SelectMsg(UID, 2, savenum, 584, NPC, 10, 193);
	SaveEvent(UID, 335);
end

if (EVENT == 308) then
	MonsterCount = CountMonsterQuestSub(UID, 125, 1);
	if (MonsterCount < 4) then
		SelectMsg(UID, 2, savenum, 584, NPC, 15, 309);
	else
		SelectMsg(UID, 4, savenum, 584, NPC, 41, 310, 27, 193);
	end
end

if (EVENT == 309) then
	ShowMap(UID, 694);
end

if (EVENT == 310) then
	ExpChange(UID, 100000)
	GoldGain(UID, 200000)
	SaveEvent(UID, 334);
end

local savenum = 558;

if (EVENT == 400) then -- 30 Level Keilan Scale
	SaveEvent(UID, 9944);
end

if (EVENT == 402) then
	SelectMsg(UID, 4, savenum, 1232, NPC, 22, 403, 23, 404);
end

if (EVENT == 403) then
	SaveEvent(UID, 9945);
end

if (EVENT == 404) then
	SaveEvent(UID, 9948);
end

if (EVENT == 405) then
	SelectMsg(UID, 2, savenum, 1232, NPC, 10, 193);
	SaveEvent(UID, 9947);
end

if (EVENT == 407) then
	ITEMB = HowmuchItem(UID, 379290000);
	if (ITEMB < 5) then
		SelectMsg(UID, 2, savenum, 1232, NPC, 18, 408);
	else
		SelectMsg(UID, 4, savenum, 1232, NPC, 41, 409, 27, 193);
	end
end

if (EVENT == 408) then
	ShowMap(UID, 527);
end

if (EVENT == 409) then
	RobItem(UID, 379290000, 5)
	ExpChange(UID, 120000)
	SaveEvent(UID, 9946);
end