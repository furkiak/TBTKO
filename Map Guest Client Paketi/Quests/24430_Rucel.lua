local Ret = 0;
local NPC = 24430;

if (EVENT == 150) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 8199, NPC, 10, 153);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 8201, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 153) then
	Ret = 1;
end

if (EVENT == 8600) then -- 44 Level Ape
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8889);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8894);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8899);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8904);
	end
end 

if (EVENT == 8610) then
	SelectMsg(UID, 2, 862, 8201, NPC, 3002, 8611);
end

if (EVENT == 8611) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 862, 8181, NPC, 3018, 8612, 3019, 8619);
	else
		SelectMsg(UID, 2, 862, 8182, NPC, 4242, 153);
	end
end

if (EVENT == 8612) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8890);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8895);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8900);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8905);
	end
end

if (EVENT == 8619) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8893);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8898);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8903);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8908);
	end
end 

if (EVENT == 8613) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8892);
		EVENT = 8614
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8897);
		EVENT = 8614
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8902);
		EVENT = 8614
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8907);
		EVENT = 8614
	end
end

if (EVENT == 8614) then
	SelectMsg(UID, 2, 862, 8401, NPC, 4080, 153);
end

if (EVENT == 8615) then
	MonsterCount = CountMonsterQuestSub(UID, 862, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 862, 8182, NPC, 18, 8617);
	else
		SelectMsg(UID, 4, 862, 8411, NPC, 41, 8618, 27, 153);
	end
end

if (EVENT == 8617) then
	ShowMap(UID, 113);
end

if (EVENT == 8618) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		GiveItem(UID, 205003005, 1)
		SaveEvent(UID, 8891);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		GiveItem(UID, 245003005, 1)
		SaveEvent(UID, 8896);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		GiveItem(UID, 265003005, 1)
		SaveEvent(UID, 8901);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		GiveItem(UID, 285003005, 1)
		SaveEvent(UID, 8906);
	end	 	 
end

if (EVENT == 8270) then -- 45 Level Kongau
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8847);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8852);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8857);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8862);
	end
end

if (EVENT == 8272) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 861, 8398, NPC, 10, 8275);
	else
		SelectMsg(UID, 2, 861, 8399, NPC, 10, 153);
	end
end

if (EVENT == 8275) then
	SelectMsg(UID, 4, 861, 8400, NPC, 22, 8273, 23, 8274);
end

if (EVENT == 8273) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8848);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8853);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8858);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8863);
	end
end

if (EVENT == 8274) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8851);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8856);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8861);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8866);
	end
end

if (EVENT == 8280) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8850);
		EVENT = 8281
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8855);
		EVENT = 8281
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8860);
		EVENT = 8281
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8865);
		EVENT = 8281
	end
end

if (EVENT == 8281) then
	SelectMsg(UID, 2, 861, 8401, NPC, 3002, 153);
end

if (EVENT == 8276) then
	MonsterCount = CountMonsterQuestSub(UID, 861, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 861, 8402, NPC, 18, 8277);
	else
		SelectMsg(UID, 4, 861, 8403, NPC, 41, 8278, 27, 153);
	end
end

if (EVENT == 8277) then
	ShowMap(UID, 512);
end

if (EVENT == 8278) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 1500000)
		GoldGain(UID, 100000)
		GiveItem(UID, 205002005, 1)
		SaveEvent(UID, 8849);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 1500000)
		GoldGain(UID, 100000)
		GiveItem(UID, 245002005, 1)
		SaveEvent(UID, 8854);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 1500000)
		GoldGain(UID, 100000)
		GiveItem(UID, 265002005, 1)
		SaveEvent(UID, 8859);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 1500000)
		GoldGain(UID, 100000)
		GiveItem(UID, 285002005, 1)
		SaveEvent(UID, 8864);
	end	 
end

if (EVENT == 8500) then  -- 46 Level Burning Skeleton
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8931);
		EVENT = 8501
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8936);
		EVENT = 8501
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8941);
		EVENT = 8501
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8946);
		EVENT = 8501
	end
end

if (EVENT == 8501) then
	SelectMsg(UID, 2, 827, 8191, NPC, 56, 153);
end

if (EVENT == 8502) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 827, 8192, NPC, 10, 8505);
	else
		SelectMsg(UID, 2, 827, 8399, NPC, 10, 153);
	end
end

if (EVENT == 8505) then
	SelectMsg(UID, 4, 827, 8193, NPC, 22, 8503, 23, 8504);
end

if (EVENT == 8503) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8932);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8937);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8942);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8947);
	end
end

if (EVENT == 8504) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8935);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8940);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8945);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8950);
	end 
end

if (EVENT == 8510) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8934);
		EVENT = 8511
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8939);
		EVENT = 8511
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8944);
		EVENT = 8511
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8949);
		EVENT = 8511
	end
end

if (EVENT == 8511) then
	SelectMsg(UID, 2, 827, 8180, NPC, 3007, 153);
end

if (EVENT == 8506) then
	MonsterCount = CountMonsterQuestSub(UID, 827, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 827, 8402, NPC, 18, 8507);
	else
		SelectMsg(UID, 4, 827, 8194, NPC, 41, 8508, 27, 153);
	end
end

if (EVENT == 8507) then
	ShowMap(UID, 510);
end

if (EVENT == 8508) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8933);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8938);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8943);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8948);
	end 
end

if (EVENT == 8070) then -- 48 Level Ash Knight
	SelectMsg(UID, 2, 818, 8147, NPC, 14, 8071);
end

if (EVENT == 8071) then
	SaveEvent(UID, 8985);
end

if (EVENT == 8072) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 818, 8155, NPC, 10, 8080);
	else
		SelectMsg(UID, 2, 818, 8399, NPC, 10, 153);
	end
end

if (EVENT == 8080) then
	SelectMsg(UID, 4, 818, 8173, NPC, 22, 8073, 23, 8074);
end

if (EVENT == 8073) then
	SaveEvent(UID, 8986);
end

if (EVENT == 8074) then
	SaveEvent(UID, 8989);
end

if (EVENT == 8075) then
	SelectMsg(UID, 2, 818, 8213, NPC, 3014, 153);
	SaveEvent(UID, 8988);
end

if (EVENT == 8077) then
	MonsterCount = CountMonsterQuestSub(UID, 818, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 818, 8402, NPC, 18, 8078);
	else
		SelectMsg(UID, 4, 818, 8214, NPC, 41, 8079, 27, 153);
	end
end

if (EVENT == 8078) then
	ShowMap(UID, 504);
end

if (EVENT == 8079) then
	ExpChange(UID, 1700000)
	GoldGain(UID, 100000)
	SaveEvent(UID, 8987);	 
end

if (EVENT == 8150) then -- 49 Level Haunga
	SelectMsg(UID, 2, 842, 8217, NPC, 3002, 8151);
end

if (EVENT == 8151) then
	SaveEvent(UID, 8997);
end

if (EVENT == 8152) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 842, 8218, NPC, 10, 8160);
	else
		SelectMsg(UID, 2, 842, 8399, NPC, 10, 153);
	end
end

if (EVENT == 8160) then
	SelectMsg(UID, 4, 842, 8219, NPC, 22, 8153, 23, 8154);
end

if (EVENT == 8153) then
	SaveEvent(UID, 8998);
end

if (EVENT == 8154) then
	SaveEvent(UID, 9001);
end

if (EVENT == 8155) then
	SelectMsg(UID, 2, 842, 8213, NPC, 3014, 153);
	SaveEvent(UID, 9000);
end

if (EVENT == 8157) then
	MonsterCount = CountMonsterQuestSub(UID, 842, 1);
	if (MonsterCount < 15) then
		SelectMsg(UID, 2, 842, 8402, NPC, 18, 8158);
	else
		SelectMsg(UID, 4, 842, 8220, NPC, 41, 8159, 27, 153);
	end
end

if (EVENT == 8158) then
	ShowMap(UID, 516);
end

if (EVENT == 8159) then
	ExpChange(UID, 1800000)
	GoldGain(UID, 100000)
	SaveEvent(UID, 8999);	 
end

if (EVENT == 9470) then -- 50 Level Sheriff
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9555);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9560);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9565);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9570);
	end
end

if (EVENT == 9472) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 915, 8766, NPC, 10, 9475);
	else
		SelectMsg(UID, 2, 915, 8766, NPC, 10, 153);
	end
end

if (EVENT == 9475) then
	SelectMsg(UID, 4, 915, 8764, NPC, 22, 9473, 23, 9474);
end

if (EVENT == 9473) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9556);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9561);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9566);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9571);
	end
end

if (EVENT == 9474) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9559);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9564);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9569);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9574);
	end
end

if (EVENT == 9480) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9558);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9563);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9568);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9573);
	end
end

if (EVENT == 9476) then
	MonsterCount = CountMonsterQuestSub(UID, 915, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 915, 8765, NPC, 18, 9477);
	else
		SelectMsg(UID, 4, 915, 8766, NPC, 41, 9478, 27, 153);
	end
end

if (EVENT == 9477) then
	ShowMap(UID, 621);
end

if (EVENT == 9478) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 4000000)
		GiveItem(UID, 910154112, 1)
		GiveItem(UID, 910154112, 1)
		SaveEvent(UID, 9557);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 4000000)
		GiveItem(UID, 910155113, 1)
		GiveItem(UID, 910155113, 1)
		SaveEvent(UID, 9562);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 4000000)
		GiveItem(UID, 910153111, 1)
		GiveItem(UID, 910153111, 1)
		SaveEvent(UID, 9567);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 4000000)
		GiveItem(UID, 910156114, 1)
		GiveItem(UID, 910154112, 1)
		GiveItem(UID, 910156114, 1)
		GiveItem(UID, 910154112, 1)
		SaveEvent(UID, 9572);
	end
end

if (EVENT == 8550) then -- 52 Level Dragon Tooth Soldier
	SelectMsg(UID, 2, 849, 8000, NPC, 14, 8551);
end

if (EVENT == 8551) then
	SaveEvent(UID, 9045);
end

if (EVENT == 8552) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 849, 8001, NPC, 10, 8560);
	else
		SelectMsg(UID, 2, 849, 8399, NPC, 10, 153);
	end
end

if (EVENT == 8560) then
	SelectMsg(UID, 4, 849, 8002, NPC, 22, 8553, 23, 8554);
end

if (EVENT == 8553) then
	SaveEvent(UID, 9046);
end

if (EVENT == 8554) then
	SaveEvent(UID, 9049);
end

if (EVENT == 8555) then
	SelectMsg(UID, 2, 849, 8003, NPC, 3014, 153);
	SaveEvent(UID, 9048);
end

if (EVENT == 8557) then
	MonsterCount = CountMonsterQuestSub(UID, 849, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 849, 8402, NPC, 18, 8558);
	else
		SelectMsg(UID, 4, 849, 8004, NPC, 41, 8559, 27, 153);
	end
end

if (EVENT == 8558) then
	ShowMap(UID, 585);
end

if (EVENT == 8559) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 5500000)
		GiveItem(UID, 925001595)   
		SaveEvent(UID, 9047);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 5500000)
		GiveItem(UID, 925006596)   
		SaveEvent(UID, 9047);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 5500000)
		GiveItem(UID, 926001597)   
		SaveEvent(UID, 9047);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 5500000)
		GiveItem(UID, 926006598)   
		SaveEvent(UID, 9047);
	end
end

if (EVENT == 9490) then -- 52 Level Garuna
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9597);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9602);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9607);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9612);
	end
end

if (EVENT == 9492) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 917, 8192, NPC, 10, 9495);
	else
		SelectMsg(UID, 2, 917, 8402, NPC, 10, 153);
	end
end

if (EVENT == 9495) then
	SelectMsg(UID, 4, 917, 8193, NPC, 22, 9493, 23, 9494);
end

if (EVENT == 9493) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9598);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9603);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9608);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9613);
	end
end

if (EVENT == 9494) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9601);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9606);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9611);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9616);
	end
end

if (EVENT == 9500) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9600);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9605);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9610);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9615);
	end
end

if (EVENT == 9496) then
	MonsterCount = CountMonsterQuestSub(UID, 917, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 917, 8402, NPC, 18, 9497);
	else
		SelectMsg(UID, 4, 917, 8194, NPC, 41, 9498, 27, 153);
	end
end

if (EVENT == 9497) then
	ShowMap(UID, 178);
end

if (EVENT == 9498) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 910157137, 2)
		SaveEvent(UID, 9599);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 910157137, 2)
		SaveEvent(UID, 9604);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 910158138, 2)
		SaveEvent(UID, 9609);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 910159139, 2)
		GiveItem(UID, 910157137, 2)
		SaveEvent(UID, 9614);
	end
end

if (EVENT == 400) then -- 54 Level Dragon Tooth Skeleton Premium
	SaveEvent(UID, 2265);
end

if (EVENT == 402) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1868, 8167, NPC, 22, 403, 23, 404);
	else
		SelectMsg(UID, 2, 1868, 8167, NPC, 10, 153);
	end
end

if (EVENT == 403) then
	SaveEvent(UID, 2266);
end

if (EVENT == 404) then
	SaveEvent(UID, 2269);
end

if (EVENT == 405) then
	SaveEvent(UID, 2268);
end

if (EVENT == 407) then
	MonsterCount = CountMonsterQuestSub(UID, 1868, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 1868, 8167, NPC, 18, 408);
	else
		SelectMsg(UID, 4, 1868, 8167, NPC, 41, 409, 23, 408);
	end
end

if (EVENT == 408) then
	ShowMap(UID, 186);
end

if (EVENT == 409) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 760000)
		SaveEvent(UID, 2267);
	else
		ExpChange(UID, 500000)
		SaveEvent(UID, 2267);
	end
end

if (EVENT == 9000) then -- 54 Level Dragon Tooth Skeleton
	SelectMsg(UID, 2, 868, 8000, NPC, 14, 9001);
end

if (EVENT == 9001) then
	SaveEvent(UID, 9081);
end

if (EVENT == 9002) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 868, 8013, NPC, 10, 9010);
	else
		SelectMsg(UID, 2, 868, 8399, NPC, 10, 153);
	end
end

if (EVENT == 9010) then
	SelectMsg(UID, 4, 868, 8014, NPC, 22, 9003, 23, 9004);
end

if (EVENT == 9003) then
	SaveEvent(UID, 9082);
end

if (EVENT == 9004) then
	SaveEvent(UID, 9085);
end

if (EVENT == 9005) then
	SelectMsg(UID, 2, 868, 8003, NPC, 3014, 153);
	SaveEvent(UID, 9084);
end

if (EVENT == 9007) then
	MonsterCount = CountMonsterQuestSub(UID, 868, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 868, 8402, NPC, 18, 9008);
	else
		SelectMsg(UID, 4, 868, 8220, NPC, 41, 9009, 27, 153);
	end
end

if (EVENT == 9008) then
	ShowMap(UID, 186);
end

if (EVENT == 9009) then
	ExpChange(UID, 6500000)
	SaveEvent(UID, 9083);	 
end