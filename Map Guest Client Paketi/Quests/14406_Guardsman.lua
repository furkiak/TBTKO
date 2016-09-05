local Ret = 0;
local NPC = 14406;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 559, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 560, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 1839;

if (EVENT == 1000) then -- 47 Level Hornet Premium
	SaveEvent(UID, 2163);
end

if (EVENT == 1002) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 8158, NPC, 22, 1003, 23, 1004);
	else
		SelectMsg(UID, 2, savenum, 8158, NPC, 10, 193);
	end
end

if (EVENT == 1003) then
	SaveEvent(UID, 2164);
end

if (EVENT == 1004) then
	SaveEvent(UID, 2167);
end

if (EVENT == 1005) then
	SelectMsg(UID, 2, savenum, 8418, NPC, 3007, 193);
	SaveEvent(UID, 2166);
end

if (EVENT == 1007) then
	MonsterCount = CountMonsterQuestSub(UID, 1839, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, savenum, 8419, NPC, 18, 1008);
	else
		SelectMsg(UID, 4, savenum, 8248, NPC, 41, 1009, 27, 193);
	end
end

if (EVENT == 1008) then
	ShowMap(UID, 27);
end

if (EVENT == 1009) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 560000)
		SaveEvent(UID, 2165);
	else
		ExpChange(UID, 400000)
		SaveEvent(UID, 2165);
	end
end

if (EVENT == 8050) then -- 47 Level Hornet
	SelectMsg(UID, 2, 839, 8245, NPC, 3003, 8051);
end

if (EVENT == 8051) then
	SaveEvent(UID, 8979);
end

if (EVENT == 8052) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 839, 8246, NPC, 10, 8060);
	else
		SelectMsg(UID, 2, 839, 8254, NPC, 10, 193);
	end
end

if (EVENT == 8060) then
	SelectMsg(UID, 4, 839, 8247, NPC, 22, 8053, 23, 8054);
end

if (EVENT == 8053) then
	SaveEvent(UID, 8980);
end

if (EVENT == 8054) then
	SaveEvent(UID, 8983);
end

if (EVENT == 8055) then
	SelectMsg(UID, 2, 839, 8418, NPC, 3007, 193);
	SaveEvent(UID, 8982);
end

if (EVENT == 8057) then
	MonsterCount = CountMonsterQuestSub(UID, 839, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 839, 8419, NPC, 18, 8058);
	else
		SelectMsg(UID, 4, 839, 8248, NPC, 41, 8059, 27, 193);
	end
end

if (EVENT == 8058) then
	ShowMap(UID, 27);
end

if (EVENT == 8059) then
	ExpChange(UID, 1600000)
	GoldGain(UID, 100000)
	SaveEvent(UID, 8981);
end

if (EVENT == 9510) then -- 48 Level Gray Oz
	SelectMsg(UID, 2, 920, 8235, NPC, 3003, 9511);
end

if (EVENT == 9511) then
	SaveEvent(UID, 9660);
end

if (EVENT == 9512) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 920, 8769, NPC, 10, 9515);
	else
		SelectMsg(UID, 2, 920, 8254, NPC, 10, 193);
	end
end

if (EVENT == 9515) then
	SelectMsg(UID, 4, 920, 8769, NPC, 22, 9513, 23, 9514);
end


if (EVENT == 9513) then
	SaveEvent(UID, 9661);
end

if (EVENT == 9514) then
	SaveEvent(UID, 9664);
end

if (EVENT == 9520) then
	SelectMsg(UID, 2, 920, 8418, NPC, 3007, 193);
	SaveEvent(UID, 9663);
end

if (EVENT == 9516) then
	MonsterCount = CountMonsterQuestSub(UID, 920, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 920, 8419, NPC, 18, 9517);
	else
		SelectMsg(UID, 4, 920, 8238, NPC, 41, 9518, 27, 193);
	end
end

if (EVENT == 9517) then
	ShowMap(UID, 507);
end

if (EVENT == 9518) then
	ExpChange(UID, 2000000)
	GoldGain(UID, 300000)
	SaveEvent(UID, 9662);
end

if (EVENT == 200) then -- 52 Level Haunga Warrior Premium
	SaveEvent(UID, 2223);
end

if (EVENT == 202) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1847, 8166, NPC, 22, 203, 23, 204);
	else
		SelectMsg(UID, 2, 1847, 8166, NPC, 10, 193);
	end
end

if (EVENT == 203) then
	SaveEvent(UID, 2224);
end

if (EVENT == 204) then
	SaveEvent(UID, 2227);
end

if (EVENT == 205) then
	SaveEvent(UID, 2226);
end

if (EVENT == 207) then
	MonsterCount = CountMonsterQuestSub(UID, 1847, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 1847, 8166, NPC, 18, 208);
	else
		SelectMsg(UID, 4, 1847, 8166, NPC, 41, 209, 27, 193);
	end
end

if (EVENT == 208) then
	ShowMap(UID, 59);
end

if (EVENT == 209) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 760000)
		SaveEvent(UID, 2225);
	else
		ExpChange(UID, 500000)
		SaveEvent(UID, 2225);
	end
end

if (EVENT == 8450) then -- 52 Level Haunga Warrior
	SelectMsg(UID, 2, 847, 8249, NPC, 3003, 8451);
end

if (EVENT == 8451) then
	SaveEvent(UID, 9039);
end

if (EVENT == 8452) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 847, 8250, NPC, 10, 8460);
	else
		SelectMsg(UID, 2, 847, 8254, NPC, 10, 193);
	end
end

if (EVENT == 8460) then
	SelectMsg(UID, 4, 847, 8251, NPC, 22, 8453, 23, 8454);
end

if (EVENT == 8453) then
	SaveEvent(UID, 9040);
end

if (EVENT == 8454) then
	SaveEvent(UID, 9043);
end

if (EVENT == 8455) then
	SelectMsg(UID, 2, 847, 8418, NPC, 3014, 193);
	SaveEvent(UID, 9042);
end

if (EVENT == 8457) then
	MonsterCount = CountMonsterQuestSub(UID, 847, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 847, 8419, NPC, 18, 8458);
	else
		SelectMsg(UID, 4, 847, 8252, NPC, 41, 8459, 27, 193);
	end
end

if (EVENT == 8458) then
	ShowMap(UID, 59);
end

if (EVENT == 8459) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 925002595, 1)
		SaveEvent(UID, 9041);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 925007596, 1)
		SaveEvent(UID, 9041);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 926002597, 1)
		SaveEvent(UID, 9041);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 926007598, 1)
		SaveEvent(UID, 9041);
	end
end

if (EVENT == 300) then -- 57 Level Phantom Premium
	SaveEvent(UID, 2319);
end

if (EVENT == 302) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1895, 8166, NPC, 22, 303, 23, 304);
	else
		SelectMsg(UID, 2, 1895, 8166, NPC, 10, 193);
	end
end

if (EVENT == 303) then
	SaveEvent(UID, 2320);
end

if (EVENT == 304) then
	SaveEvent(UID, 2323);
end

if (EVENT == 305) then
	SaveEvent(UID, 2322);
end

if (EVENT == 307) then
	MonsterCount = CountMonsterQuestSub(UID, 1895, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 1895, 8166, NPC, 18, 308);
	else
		SelectMsg(UID, 4, 1895, 8166, NPC, 41, 309, 27, 193);
	end
end

if (EVENT == 308) then
	ShowMap(UID, 702);
end

if (EVENT == 309) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1500000)
		SaveEvent(UID, 2321);
	else
		ExpChange(UID, 1000000)
		SaveEvent(UID, 2321);
	end
end

if (EVENT == 400) then -- 58 Level Groom Hound Premium
	SaveEvent(UID, 2343);
end

if (EVENT == 402) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1898, 8166, NPC, 22, 403, 23, 404);
	else
		SelectMsg(UID, 2, 1898, 8166, NPC, 10, 193);
	end
end

if (EVENT == 403) then
	SaveEvent(UID, 2344);
end

if (EVENT == 404) then
	SaveEvent(UID, 2347);
end

if (EVENT == 405) then
	SaveEvent(UID, 2346);
end

if (EVENT == 407) then
	MonsterCount = CountMonsterQuestSub(UID, 1898, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 1898, 8166, NPC, 18, 408);
	else
		SelectMsg(UID, 4, 1898, 8166, NPC, 41, 409, 27, 193);
	end
end

if (EVENT == 408) then
	ShowMap(UID, 601);
end

if (EVENT == 409) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1500000)
		SaveEvent(UID, 2345);
	else
		ExpChange(UID, 1000000)
		SaveEvent(UID, 2345);
	end
end

if (EVENT == 9330) then -- 58 Level Phantom
	SelectMsg(UID, 2, 895, 8245, NPC, 3003, 9331);
end

if (EVENT == 9331) then
	SaveEvent(UID, 9357);
end

if (EVENT == 9332) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 895, 8679, NPC, 10, 9340);
	else
		SelectMsg(UID, 2, 895, 8254, NPC, 10, 193);
	end
end

if (EVENT == 9340) then
	SelectMsg(UID, 4, 895, 8679, NPC, 22, 9333, 23, 9334);
end

if (EVENT == 9333) then
	SaveEvent(UID, 9358);
end

if (EVENT == 9334) then
	SaveEvent(UID, 9361);
end

if (EVENT == 9335) then
	SaveEvent(UID, 9360);
	SelectMsg(UID, 2, 895, 8418, NPC, 3014, 193);
end

if (EVENT == 9337) then
	MonsterCount = CountMonsterQuestSub(UID, 895, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 895, 8576, NPC, 18, 9338);
	else
		SelectMsg(UID, 4, 895, 8582, NPC, 41, 9339, 27, 193);
	end
end

if (EVENT == 9338) then
	ShowMap(UID, 702);
end

if (EVENT == 9339) then
	ExpChange(UID, 12000000)
	GiveItem(UID, 381001000, 5)
	SaveEvent(UID, 9359);
end


if (EVENT == 9350) then -- 58 Level Groom Hound
	SelectMsg(UID, 2, 895, 8245, NPC, 3003, 9351);
end

if (EVENT == 9351) then
	SaveEvent(UID, 9381);
end

if (EVENT == 9352) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 898, 8683, NPC, 10, 9360);
	else
		SelectMsg(UID, 2, 898, 8254, NPC, 10, 193);
	end
end

if (EVENT == 9360) then
	SelectMsg(UID, 4, 898, 8247, NPC, 22, 9353, 23, 9354);
end

if (EVENT == 9353) then
	SaveEvent(UID, 9382);
end

if (EVENT == 9354) then
	SaveEvent(UID, 9385);
end

if (EVENT == 9355) then
	SaveEvent(UID, 9384);
	SelectMsg(UID, 2, 898, 8418, NPC, 3014, 193);
end

if (EVENT == 9357) then
	MonsterCount = CountMonsterQuestSub(UID, 898, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 898, 8558, NPC, 18, 9358);
	else
		SelectMsg(UID, 4, 898, 8560, NPC, 41, 9359, 27, 193);
	end
end

if (EVENT == 9358) then
	ShowMap(UID, 601);
end

if (EVENT == 9359) then
	ExpChange(UID, 14000000)
	SaveEvent(UID, 9383);
end