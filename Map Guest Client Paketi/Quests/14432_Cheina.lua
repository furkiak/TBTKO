local Ret = 0;
local NPC = 14432;

if (EVENT == 160) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 8256, NPC, 10, 163);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 8258, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 163) then
	Ret = 1;
end

local savenum = 1852;

if (EVENT == 1000) then -- 41 Lard Orc Premium
	SaveEvent(UID, 2079);
end

if (EVENT == 1002) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 8152, NPC, 22, 1003, 23, 1004);
	else
		SelectMsg(UID, 2, savenum, 8152, NPC, 10, 163);
	end
end

if (EVENT == 1003) then
	SaveEvent(UID, 2080);
end

if (EVENT == 1004) then
	SaveEvent(UID, 2083);
end

if (EVENT == 1010) then
	SaveEvent(UID, 2082);
end

if (EVENT == 1006) then
	CountMonster = CountMonsterQuestSub(UID, 1852, 1);
	if (MonsterSub < 5) then
		SelectMsg(UID, 2, savenum, 8152, NPC, 18, 1007);
	else
		SelectMsg(UID, 4, savenum, 8152, NPC, 41, 1008, 27, 163);
	end
end

if (EVENT == 1007) then
	ShowMap(UID, 108);
end

if (EVENT == 1008) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 560000)
		SaveEvent(UID, 2081);
	else
		ExpChange(UID, 400000)
		SaveEvent(UID, 2081);   
	end
end

local savenum = 852;

if (EVENT == 8750) then -- 41 Level Lard Orc
	SelectMsg(UID, 2, savenum, 8152, NPC, 10, 8751);
end

if (EVENT == 8751) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8700);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8705);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8710);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8715);
	end
end

if (EVENT == 8752) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 8152, NPC, 22, 8753, 23, 8754);
	else
		SelectMsg(UID, 2, savenum, 8152, NPC, 10, 163);
	end
end

if (EVENT == 8753) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8701);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8706);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8711);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8716);
	end
end

if (EVENT == 8754) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8704);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8709);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8714);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8719);
	end
end

if (EVENT == 8760) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8703);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8708);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8713);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8718);
	end
end

if (EVENT == 8756) then
	MonsterCount = CountMonsterQuestSub(UID, 852, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum, 8152, NPC, 18, 8757);
	else
		SelectMsg(UID, 4, savenum, 8152, NPC, 41, 8758, 23, 163);
	end
end

if (EVENT == 8757) then
	ShowMap(UID, 108);
end

if (EVENT == 8758) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 850000)
		GoldGain(UID, 100000)
		GiveItem(UID, 126210185, 1)
		GiveItem(UID, 135510185, 1)
		GiveItem(UID, 150610195, 1)
		GiveItem(UID, 155510185, 1)
		SaveEvent(UID, 8702);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 850000)
		GoldGain(UID, 100000)
		GiveItem(UID, 111010195, 1)
		GiveItem(UID, 111010195, 1)
		GiveItem(UID, 168210135, 1)
		SaveEvent(UID, 8707);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 850000)
		GoldGain(UID, 100000)
		GiveItem(UID, 180910165, 1)
		GiveItem(UID, 180910175, 1)
		GiveItem(UID, 180910185, 1)
		SaveEvent(UID, 8712);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 850000)
		GoldGain(UID, 100000)
		GiveItem(UID, 190710185, 1)
		GiveItem(UID, 171510125, 1)
		SaveEvent(UID, 8717);
	end
end

if (EVENT == 8170) then -- 45 Level Scolar
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8826);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8831);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8836);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8841);
	end
end

if (EVENT == 8172) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 858, 8394, NPC, 10, 8175);
	else
		SelectMsg(UID, 2, 858, 8282, NPC, 10, 163);
	end
end

if (EVENT == 8175) then
	SelectMsg(UID, 4, 858, 8395, NPC, 22, 8173, 23, 163);
end

if (EVENT == 8173) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8827);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8832);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8837);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8842);
	end
end

if (EVENT == 8180) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8829);
		EVENT = 8181
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8834);
		EVENT = 8181
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8839);
		EVENT = 8181
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8844);
		EVENT = 8181
	end
end

if (EVENT == 8181) then
	SelectMsg(UID, 2, 858, 8393, NPC, 3007, 163);
end

if (EVENT == 8176) then
	MonsterCount = CountMonsterQuestSub(UID, 858, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 858, 8394, NPC, 18, 8177);
	else
		SelectMsg(UID, 4, 858, 8396, NPC, 41, 8178, 27, 163);
	end
end

if (EVENT == 8177) then
	ShowMap(UID, 539);
end

if (EVENT == 8178) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 205001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8828);
		ShowEffect(UID, 300391);
	elseif (Class == 2 or Class == 7 or Class == 8) then      
		GiveItem(UID, 245001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8833);
		ShowEffect(UID, 300391);
	elseif (Class == 3 or Class == 9 or Class == 10) then    
		GiveItem(UID, 265001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8838);
		ShowEffect(UID, 300391);
	elseif (Class == 4 or Class == 11 or Class == 12) then     
		GiveItem(UID, 285001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8843);
		ShowEffect(UID, 300391);
	end	 
end

if (EVENT == 9430) then -- 47 Level Macairodus
	SelectMsg(UID, 2, 912, 8761, NPC, 10, 9431);
end

if (EVENT == 9431) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9492);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9497);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9502);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9507);
	end 
end

if (EVENT == 9432) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 912, 8761, NPC, 22, 9433, 23, 9434);
	else
		SelectMsg(UID, 2, 912, 8761, NPC, 10, 163);
	end
end

if (EVENT == 9433) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9493);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9498);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9503);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9508);
	end
end

if (EVENT == 9434) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9496);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9501);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9506);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9511);
	end
end

if (EVENT == 9440) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9495);
		EVENT = 9441
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9500);
		EVENT = 9441
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9505);
		EVENT = 9441
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9510);
		EVENT = 9441
	end
end

if (EVENT == 9441) then
	SelectMsg(UID, 2, 912, 8759, NPC, 3007, 163);
end

if (EVENT == 9436) then
	MonsterCount = CountMonsterQuestSub(UID, 912, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 912, 8384, NPC, 18, 9437);
	else
		SelectMsg(UID, 4, 912, 8396, NPC, 41, 9438, 27, 163);
	end
end

if (EVENT == 9437) then
	ShowMap(UID, 620);
end

if (EVENT == 9438) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GoldGain(UID, 100000)
		ExpChange(UID, 1900000)
		GiveItem(UID, 910162272, 1)
		GiveItem(UID, 910162272, 1)
		SaveEvent(UID, 9494);
	elseif (Class == 2 or Class == 7 or Class == 8) then      
		GoldGain(UID, 100000)
		ExpChange(UID, 1900000)
		GiveItem(UID, 910163273, 1)
		GiveItem(UID, 910163273, 1)
		SaveEvent(UID, 9499);
	elseif (Class == 3 or Class == 9 or Class == 10) then    
		GoldGain(UID, 100000)
		ExpChange(UID, 1900000)
		GiveItem(UID, 910161271, 1)
		GiveItem(UID, 910161271, 1)
		SaveEvent(UID, 9504);
	elseif (Class == 4 or Class == 11 or Class == 12) then     
		GoldGain(UID, 100000)
		ExpChange(UID, 1900000)
		GiveItem(UID, 910164274, 1)
		GiveItem(UID, 910164274, 1)
		SaveEvent(UID, 9509);
	end	 
end

if (EVENT == 9450) then -- 51 Level Blood Don
	SelectMsg(UID, 2, 914, 8763, NPC, 10, 9451);
end

if (EVENT == 9451) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9534);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9539);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9544);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9549);
	end
end

if (EVENT == 9452) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 914, 8763, NPC, 22, 9453, 23, 163);
	else
		SelectMsg(UID, 2, 914, 8763, NPC, 10, 163);
	end
end

if (EVENT == 9453) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9535);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9540);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9545);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9550);
	end
end

if (EVENT == 9460) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9537);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9542);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9547);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9552);
	end
end

if (EVENT == 9456) then
	MonsterCount = CountMonsterQuestSub(UID, 914, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 914, 8384, NPC, 18, 9457);
	else
		SelectMsg(UID, 4, 914, 8396, NPC, 41, 9458, 27, 163);
	end
end

if (EVENT == 9457) then
	ShowMap(UID, 624);
end

if (EVENT == 9458) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 910160118, 1)
		ExpChange(UID, 4000000)
		SaveEvent(UID, 9536);
		ShowEffect(UID, 300391);
	elseif (Class == 2 or Class == 7 or Class == 8) then      
		GiveItem(UID, 910160118, 1)
		ExpChange(UID, 4000000)
		SaveEvent(UID, 9541);
		ShowEffect(UID, 300391);
	elseif (Class == 3 or Class == 9 or Class == 10) then    
		GiveItem(UID, 910160118, 1)
		ExpChange(UID, 4000000)
		SaveEvent(UID, 9546);
		ShowEffect(UID, 300391);
	elseif (Class == 4 or Class == 11 or Class == 12) then     
		GiveItem(UID, 910160118, 1)
		ExpChange(UID, 4000000)
		SaveEvent(UID, 9551);
		ShowEffect(UID, 300391);
	end	 
end

if (EVENT == 9060) then -- 56 Level Grell
	SelectMsg(UID, 2, 875, 8228, NPC, 3003, 9061);
end

if (EVENT == 9061) then
	SaveEvent(UID, 9123);
end

if (EVENT == 9062) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 875, 8426, NPC, 10, 9070);
	else
		SelectMsg(UID, 2, 875, 8428, NPC, 10, 163);
	end
end

if (EVENT == 9070) then
	SelectMsg(UID, 4, 875, 8427, NPC, 22, 9063, 23, 9064);
end

if (EVENT == 9063) then
	SaveEvent(UID, 9124);
end

if (EVENT == 9064) then
	SaveEvent(UID, 9127);
end

if (EVENT == 9065) then
	SelectMsg(UID, 2, 875, 8429, NPC, 3014, 163);
	SaveEvent(UID, 9126);
end

if (EVENT == 9067) then
	MonsterCount = CountMonsterQuestSub(UID, 875, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 875, 8430, NPC, 18, 9068);
	else
		SelectMsg(UID, 4, 875, 8431, NPC, 41, 9069, 27, 163);
	end
end

if (EVENT == 9068) then
	ShowMap(UID, 318);
end

if (EVENT == 9069) then
	GiveItem(UID, 379155000, 1)
	ExpChange(UID, 12000000)
	SaveEvent(UID, 9125);
end

if (EVENT == 9320) then -- 57 Level Hell Hound
	SelectMsg(UID, 2, 1857, 8677, NPC, 10, 9321);
end

if (EVENT == 9321) then
	SaveEvent(UID, 9345);
end

if (EVENT == 9322) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1857, 8677, NPC, 22, 9323, 23, 9324);
	else
		SelectMsg(UID, 2, 1857, 8677, NPC, 10, 163);
	end
end

if (EVENT == 9323) then
	SaveEvent(UID, 9346);
end

if (EVENT == 9324) then
	SaveEvent(UID, 9349);
end

if (EVENT == 9325) then
	SaveEvent(UID, 9348);
end

if (EVENT == 9327) then
	MonsterCount = CountMonsterQuestSub(UID, 1856, 1);
	if (MonsterCount < 5) then
		SelectMsg(UID, 2, 1857, 8552, NPC, 18, 9328);
	else
		SelectMsg(UID, 4, 1857, 8431, NPC, 41, 9329, 27, 163);
	end
end

if (EVENT == 9328) then
	ShowMap(UID, 36);
end

if (EVENT == 9329) then
	ExpChange(UID, 12000000)
	SaveEvent(UID, 9347); 
end

if (EVENT == 9340) then -- 59 Level Manticore
	SelectMsg(UID, 2, 896, 8681, NPC, 10, 9341);
end

if (EVENT == 9341) then
	SaveEvent(UID, 9369);
end

if (EVENT == 9342) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 896, 8681, NPC, 22, 9343, 23, 9344);
	else
		SelectMsg(UID, 2, 896, 8681, NPC, 10, 163);
	end
end

if (EVENT == 9343) then
	SaveEvent(UID, 9370);
end

if (EVENT == 9344) then
	SaveEvent(UID, 9373);
end

if (EVENT == 9345) then
	SaveEvent(UID, 9372);
end

if (EVENT == 9347) then
	MonsterCount = CountMonsterQuestSub(UID, 1874, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 896, 8566, NPC, 18, 9348);
	else
		SelectMsg(UID, 4, 896, 8431, NPC, 41, 9349, 27, 163);
	end
end

if (EVENT == 9348) then
	ShowMap(UID, 704);
end

if (EVENT == 9349) then
	ExpChange(UID, 13000000)
	SaveEvent(UID, 9371); 
end

if (EVENT == 9140) then -- 60 Level Lich
	SelectMsg(UID, 2, 883, 8212, NPC, 4244, 9141);
end

if (EVENT == 9141) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9276);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9281);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9286);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9291);
	end
end

if (EVENT == 9150) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 883, 8440, NPC, 3018, 9152, 3019, 9159);
	else
		SelectMsg(UID, 2, 883, 8441, NPC, 4242, 163);
	end
end

if (EVENT == 9152) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9277);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9282);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9287);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9292);
	end
end

if (EVENT == 9159) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9280);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9285);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9290);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9295);
	end
end

if (EVENT == 9153) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9279);
		EVENT = 9154
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9284);
		EVENT = 9154
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9289);
		EVENT = 9154
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9294);
		EVENT = 9154
	end
end

if (EVENT == 9154) then
	SelectMsg(UID, 2, 883, 8439, NPC, 57, 163);
end

if (EVENT == 9155) then
	MonsterCount = CountMonsterQuestSub(UID, 883, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 883, 8442, NPC, 18, 9157);
	else
		SelectMsg(UID, 4, 883, 8443, NPC, 41, 9158, 27, 163);
	end
end

if (EVENT == 9157) then
	ShowMap(UID, 16);
end

if (EVENT == 9158) then
	Class = CheckClass(UID);
		if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 206002003, 1)
		SaveEvent(UID, 9278);
		ShowEffect(UID, 300391)
    elseif (Class == 2 or Class == 7 or Class == 8) then
		GiveItem(UID, 246002003, 1)
		SaveEvent(UID, 9283);
		ShowEffect(UID, 300391)
    elseif (Class == 3 or Class == 9 or Class == 10) then
		GiveItem(UID, 266002003, 1)
		SaveEvent(UID, 9288);
		ShowEffect(UID, 300391)
    elseif (Class == 4 or Class == 11 or Class == 12) then
		GiveItem(UID, 286002003, 1)
		SaveEvent(UID, 9293);
		ShowEffect(UID, 300391)
  end	 
end