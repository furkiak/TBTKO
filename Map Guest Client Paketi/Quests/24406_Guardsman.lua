local Ret = 0;
local NPC = 24406;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then 
		SelectMsg(UID, 2, -1, 1312, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 1313, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 1000) then -- 47 Level Hornet Premium
	SelectMsg(UID, 2, 1840, 8157, NPC, 3003, 1001);
end

if (EVENT == 1001) then
	SaveEvent(UID, 2157);
end

if (EVENT == 1002) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 1840, 8157, NPC, 10, 1010);
	else
		SelectMsg(UID, 2, 1840, 8253, NPC, 10, 193);
	end
end

if (EVENT == 1010) then
	SelectMsg(UID, 4, 1840, 8236, NPC, 22, 1003, 23, 1004);
end

if (EVENT == 1003) then
	SaveEvent(UID, 2158);
end

if (EVENT == 1004) then
	SaveEvent(UID, 2161);
end

if (EVENT == 1005) then
	SelectMsg(UID, 2, 1840, 8416, NPC, 3007, 193);
	SaveEvent(UID, 2160);
end

if (EVENT == 1007) then
	MonsterCount = CountMonsterQuestSub(UID, 1840, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 1840, 8417, NPC, 18, 1008);
	else
		SelectMsg(UID, 4, 1840, 8237, NPC, 10, 1009, 27, 193);
	end
end

if (EVENT == 1008) then
	ShowMap(UID, 545);
end

if (EVENT == 1009) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 560000)
		SaveEvent(UID, 2159);
	else
		ExpChange(UID, 400000)
		SaveEvent(UID, 2159);
	end
end

if (EVENT == 8050) then -- 47 Level Hornet
	SelectMsg(UID, 2, 840, 8234, NPC, 3003, 8051);
end

if (EVENT == 8051) then
	SaveEvent(UID, 8973);
end

if (EVENT == 8052) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 840, 8235, NPC, 10, 8060);
	else
		SelectMsg(UID, 2, 840, 8253, NPC, 10, 193);
	end
end

if (EVENT == 8060) then
	SelectMsg(UID, 4, 840, 8236, NPC, 22, 8053, 23, 8054);
end

if (EVENT == 8053) then
	SaveEvent(UID, 8974);
end

if (EVENT == 8054) then
	SaveEvent(UID, 8977);
end

if (EVENT == 8055) then
	SelectMsg(UID, 2, 840, 8416, NPC, 3007, 193);
	SaveEvent(UID, 8976);
end

if (EVENT == 8057) then
	MonsterCount = CountMonsterQuestSub(UID, 840, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 840, 8417, NPC, 18, 8058);
	else
		SelectMsg(UID, 4, 840, 8237, NPC, 41, 8059, 27, 193);
	end
end

if (EVENT == 8058) then
	ShowMap(UID, 545);
end

if (EVENT == 8059) then
	ExpChange(UID, 1600000)
	GoldGain(UID, 100000)
	SaveEvent(UID, 8975);
end

if (EVENT == 9510) then -- 48 Level Gray Oz
	SelectMsg(UID, 2, 919, 8234, NPC, 3003, 9511);
end

if (EVENT == 9511) then
	SaveEvent(UID, 9639);
end

if (EVENT == 9512) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 919, 8768, NPC, 10, 9515);
	else
		SelectMsg(UID, 2, 919, 8253, NPC, 10, 193);
	end
end

if (EVENT == 9515) then
	SelectMsg(UID, 4, 919, 8768, NPC, 22, 9513, 23, 9514);
end

if (EVENT == 9513) then
	SaveEvent(UID, 9640);
end

if (EVENT == 9514) then
	SaveEvent(UID, 9643);
end

if (EVENT == 9520) then
	SelectMsg(UID, 2, 919, 8416, NPC, 3007, 193);
	SaveEvent(UID, 9642);
end

if (EVENT == 9516) then
	MonsterCount = CountMonsterQuestSub(UID, 919, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 919, 8417, NPC, 18, 9517);
	else
		SelectMsg(UID, 4, 919, 8237, NPC, 41, 9518, 27, 193);
	end
end

if (EVENT == 9517) then
	ShowMap(UID, 508);
end

if (EVENT == 9518) then
	ExpChange(UID, 2000000)
	GoldGain(UID, 300000)
	SaveEvent(UID, 9641);
end

if (EVENT == 200) then -- 52 Level Haunga Warrior Premium
	SelectMsg(UID, 2, 1848, 8165, NPC, 3003, 201);
end

if (EVENT == 201) then
	SaveEvent(UID, 2217);
end

if (EVENT == 202) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 1848, 8158, NPC, 10, 210);
	else
		SelectMsg(UID, 2, 1848, 8253, NPC, 10, 193);
	end
end

if (EVENT == 210) then
	SelectMsg(UID, 4, 1848, 8236, NPC, 22, 203, 23, 204);
end

if (EVENT == 203) then
	SaveEvent(UID, 2218);
end

if (EVENT == 204) then
	SaveEvent(UID, 2221);
end

if (EVENT == 205) then
	SelectMsg(UID, 2, 1848, 8416, NPC, 3007, 193);
	SaveEvent(UID, 2220);
end

if (EVENT == 207) then
	MonsterCount  = CountMonsterQuestSub(UID, 1848, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 1848, 8417, NPC, 18, 208);
	else
		SelectMsg(UID, 4, 1848, 8237, NPC, 41, 209, 27, 193);
	end
end

if (EVENT == 208) then
	ShowMap(UID, 58);
end

if (EVENT == 209) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 760000)
		SaveEvent(UID, 2219);
	else
		ExpChange(UID, 500000)
		SaveEvent(UID, 2219);
	end
end

if (EVENT == 8450) then -- 52 Level Haunga Warrior
	SelectMsg(UID, 2, 848, 8238, NPC, 3003, 8451);
end

if (EVENT == 8451) then
	SaveEvent(UID, 9033);
end

if (EVENT == 8452) then
	MonsterSub = ExistMonsterQuestSub(UID,848);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 848, 8239, NPC, 10, 8460);
	else
		SelectMsg(UID, 2, 848, 8253, NPC, 10, 193);
	end
end

if (EVENT == 8460) then
	SelectMsg(UID, 4, 848, 8240, NPC, 22, 8453, 23, 8454);
end

if (EVENT == 8453) then
	SaveEvent(UID, 9034);
end

if (EVENT == 8454) then
	SaveEvent(UID, 9037);
end

if (EVENT == 8455) then
	SelectMsg(UID, 2, 848, 8416, NPC, 3014, 193);
	SaveEvent(UID, 9036);
end

if (EVENT == 8457) then
	MonsterCount = CountMonsterQuestSub(UID, 848, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 848, 8417, NPC, 18, 8458);
	else
		SelectMsg(UID, 4, 848, 8241, NPC, 41, 8459, 27, 193);
	end
end

if (EVENT == 8458) then
	ShowMap(UID, 58);
end

if (EVENT == 8459) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 925002595, 1)
		SaveEvent(UID, 9035);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 925007596, 1)
		SaveEvent(UID, 9035);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 926002597, 1)
		SaveEvent(UID, 9035);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 926007598, 1)
		SaveEvent(UID, 9035);
	end
end

if (EVENT == 300) then -- 57 Level Phantom Premium
	SelectMsg(UID, 2, 1895, 8678, NPC, 3003, 301);
end

if (EVENT == 301) then
	SaveEvent(UID, 2313);
end

if (EVENT == 302) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 1895, 8157, NPC, 10, 310);
	else
		SelectMsg(UID, 2, 1895, 8253, NPC, 10, 193);
	end
end

if (EVENT == 310) then
	SelectMsg(UID, 4, 1895, 8236, NPC, 22, 303, 23, 304);
end

if (EVENT == 303) then
	SaveEvent(UID, 2314);
end

if (EVENT == 304) then
	SaveEvent(UID, 2317);
end

if (EVENT == 305) then
	SelectMsg(UID, 2, 1895, 8416, NPC, 3007, 193);
	SaveEvent(UID, 2316);
end

if (EVENT == 307) then
	MonsterCount = CountMonsterQuestSub(UID, 1895, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 1895, 8417, NPC, 18, 308);
	else
		SelectMsg(UID, 4, 1895, 8237, NPC, 41, 309, 27, 193);
	end
end

if (EVENT == 308) then
	ShowMap(UID, 703);
end

if (EVENT == 309) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1500000)
		SaveEvent(UID, 2315);
	else
		ExpChange(UID, 1000000)
		SaveEvent(UID, 2315);
	end
end

if (EVENT == 400) then -- 58 Level Groom Hound Premium
	SelectMsg(UID, 2, 1898, 8682, NPC, 3003, 401);
end

if (EVENT == 401) then
	SaveEvent(UID, 2337);
end

if (EVENT == 402) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 1898, 8157, NPC, 10, 410);
	else
		SelectMsg(UID, 2, 1898, 8253, NPC, 10, 193);
	end
end

if (EVENT == 410) then
	SelectMsg(UID, 4, 1898, 8236, NPC, 22, 403, 23, 404);
end

if (EVENT == 403) then
	SaveEvent(UID, 2338);
end

if (EVENT == 404) then
	SaveEvent(UID, 2341);
end

if (EVENT == 405) then
	SelectMsg(UID, 2, 1898, 8416, NPC, 3007, 193);
	SaveEvent(UID, 2340);
end

if (EVENT == 407) then
	MonsterCount = CountMonsterQuestSub(UID, 1898, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 1898, 8417, NPC, 18, 408);
	else
		SelectMsg(UID, 4, 1898, 8237, NPC, 41, 409, 27, 193);
	end
end

if (EVENT == 408) then
	ShowMap(UID, 601);
end

if (EVENT == 409) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1500000)
		SaveEvent(UID, 2339);
	else
		ExpChange(UID, 1000000)
		SaveEvent(UID, 2339);
	end
end


if (EVENT == 9330) then -- 57 Level Phantom
	SelectMsg(UID, 2, 895, 8234, NPC, 3003, 9331);
end

if (EVENT == 9331) then
	SaveEvent(UID, 9351);
end

if (EVENT == 9332) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 895, 8678, NPC, 10, 9340);
	else
		SelectMsg(UID, 2, 895, 8253, NPC, 10, 193);
	end
end

if (EVENT == 9340) then
	SelectMsg(UID, 4, 895, 8678, NPC, 22, 9333, 23, 9334);
end

if (EVENT == 9333) then
	SaveEvent(UID, 9352);
end

if (EVENT == 9334) then
	SaveEvent(UID, 9355);
end

if (EVENT == 9335) then
	SaveEvent(UID, 9354);
	SelectMsg(UID, 2, 895, 8416, NPC, 3014, 193);
end

if (EVENT == 9337) then
	MonsterCount = CountMonsterQuestSub(UID, 895, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 895, 8575, NPC, 10, 9338);
	else
		SelectMsg(UID, 4, 895, 8581, NPC, 41, 9339, 27, 193);
	end
end

if (EVENT == 9338) then
	ShowMap(UID, 702);
end

if (EVENT == 9339) then
	ExpChange(UID, 12000000)
	GiveItem(UID, 381001000, 5)
	SaveEvent(UID, 9353);
end

if (EVENT == 9350) then -- 58 Level Groom Hound
	SelectMsg(UID, 2, 895, 8234, NPC, 3003, 9351);
end

if (EVENT == 9351) then
	SaveEvent(UID, 9375);
end

if (EVENT == 9352) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 898, 8682, NPC, 10, 9360);
	else
		SelectMsg(UID, 2, 898, 8253, NPC, 10, 193);
	end
end

if (EVENT == 9360) then
	SelectMsg(UID, 4, 898, 8236, NPC, 22, 9353, 23, 9354);
end

if (EVENT == 9353) then
	SaveEvent(UID, 9376);
end

if (EVENT == 9354) then
	SaveEvent(UID, 9379);
end

if (EVENT == 9355) then
	SaveEvent(UID, 9378);
	SelectMsg(UID, 2, 898, 8416, NPC, 3014, 193);
end

if (EVENT == 9357) then
	MonsterCount = CountMonsterQuestSub(UID, 898, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 898, 8557, NPC, 18, 9358);
	else
		SelectMsg(UID, 4, 898, 8569, NPC, 41, 9359, 27, 193);
	end
end

if (EVENT == 9358) then
	ShowMap(UID, 601);
end

if (EVENT == 9359) then
	ExpChange(UID, 14000000)
	SaveEvent(UID, 9377);
end