local Ret = 0;
local NPC = 14430;

if (EVENT == 150) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 8200, NPC, 10, 153);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 8202, NPC)
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
		SaveEvent(UID, 8910);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8915);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8920);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8925);
	end
end

if (EVENT == 8610) then
	SelectMsg(UID, 2, 863, 843, NPC, 3002, 8611);
end

if (EVENT == 8611) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 863, 843, NPC, 3018, 8612, 3019, 8619);
	else
		SelectMsg(UID, 2, 863, 843, NPC, 4242, 153);
	end
end

if (EVENT == 8612) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8911);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8916);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8921);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8926);
	end
end

if (EVENT == 8619) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8914);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8919);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8924);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8929);
	end
end

if (EVENT == 8613) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8913);
		EVENT = 8614
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8918);
		EVENT = 8614
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8923);
		EVENT = 8614
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8928);
		EVENT = 8614
	end
end

if (EVENT == 8614) then
	SelectMsg(UID, 2, 863, 8415, NPC, 4080, 153);
end

if (EVENT == 8615) then
	MonsterCount  = CountMonsterQuestSub(UID, 863, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 863, 8190, NPC, 18, 8617);
	else
		SelectMsg(UID, 4, 863, 8413, NPC, 41, 8618, 27, 153);
	end
end

if (EVENT == 8617) then
	ShowMap(UID, 114);
end

if (EVENT == 8618) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		GiveItem(UID, 205003005, 1)
		SaveEvent(UID, 8912);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		GiveItem(UID, 245003005, 1)
		SaveEvent(UID, 8917);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		GiveItem(UID, 265003005, 1)
		SaveEvent(UID, 8922);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		GiveItem(UID, 285003005, 1)
		SaveEvent(UID, 8927);
	end	 
end

if (EVENT == 8270) then -- 45 Level Kongau
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8868);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8873);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8878);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8883);
	end
end

if (EVENT == 8272) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 860, 8405, NPC, 10, 8275);
	else
		SelectMsg(UID, 2, 860, 8406, NPC, 10, 153);
	end
end

if (EVENT == 8275) then
	SelectMsg(UID, 4, 860, 8407, NPC, 22, 8273, 23, 8274);
end

if (EVENT == 8273) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8869);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8874);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8879);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8884);
	end
end

if (EVENT == 8274) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8872);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8877);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8882);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8887);
	end
end

if (EVENT == 8280) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8871);
		EVENT = 8281
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8876);
		EVENT = 8281
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8881);
		EVENT = 8281
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8886);
		EVENT = 8281
	end
end

if (EVENT == 8281) then
	SelectMsg(UID, 2, 860, 8408, NPC, 3002, 153);
end

if (EVENT == 8276) then
	MonsterCount = CountMonsterQuestSub(UID, 860, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 860, 8409, NPC, 18, 8277);
	else 
		SelectMsg(UID, 4, 860, 8410, NPC, 41, 8278, 27, 153);
	end
end

if (EVENT == 8277) then
	ShowMap(UID, 511);
end

if (EVENT == 8278) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 1500000)
		GoldGain(UID, 100000)
		GiveItem(UID, 205002005, 1)
		SaveEvent(UID, 8870);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 1500000)
		GoldGain(UID, 100000)
		GiveItem(UID, 245002005, 1)
		SaveEvent(UID, 8875);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 1500000)
		GoldGain(UID, 100000)
		GiveItem(UID, 265002005, 1)
		SaveEvent(UID, 8880);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 1500000)
		GoldGain(UID, 100000)
		GiveItem(UID, 285002005, 1)
		SaveEvent(UID, 8885);
	end
end

if (EVENT == 8500) then -- 46 Level Burning Skeleton
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8952);
		EVENT = 8501
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8957);
		EVENT = 8501
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8962);
		EVENT = 8501
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8967);
		EVENT = 8501
	end
end

if (EVENT == 8501) then
	SelectMsg(UID, 2, 817, 8195, NPC, 56, 153);
end

if (EVENT == 8502) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 817, 8196, NPC, 10, 8505);
	else
		SelectMsg(UID, 2, 817, 8406, NPC, 10, 153);
	end
end

if (EVENT == 8505) then
	SelectMsg(UID, 4, 817, 8197, NPC, 22, 8503, 23, 8504);
end

if (EVENT == 8503) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8953);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8958);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8963);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8968);
	end
end

if (EVENT == 8504) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8956);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8961);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8966);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8971);
	end
end

if (EVENT == 8510) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8955);
		EVENT = 8511
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8960);
		EVENT = 8511
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8965);
		EVENT = 8511
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8970);
		EVENT = 8511
	end
end

if (EVENT == 8511) then
	SelectMsg(UID, 2, 817, 8188, NPC, 3007, 153);
end

if (EVENT == 8506) then
	MonsterCount = CountMonsterQuestSub(UID, 817, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 817, 8409, NPC, 18, 8507);
	else
		SelectMsg(UID, 4, 817, 8198, NPC, 41, 8508, 27, 153);
	end
end

if (EVENT == 8507) then
	ShowMap(UID, 509);
end

if (EVENT == 8508) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8954);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8959);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8964);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 1000000)
		GoldGain(UID, 100000)
		SaveEvent(UID, 8969);
	end
end

if (EVENT == 8070) then -- 48 Level Ash Knight
	SelectMsg(UID, 2, 800, 8148, NPC, 14, 8071);
end

if (EVENT == 8071) then
	SaveEvent(UID, 8991);
end

if (EVENT == 8072) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 800, 8156, NPC, 10, 8080);
	else
		SelectMsg(UID, 2, 800, 8406, NPC, 10, 153);
	end
end

if (EVENT == 8080) then
	SelectMsg(UID, 4, 800, 8174, NPC, 22, 8073, 23, 8074);
end

if (EVENT == 8073) then
	SaveEvent(UID, 8992);
end

if (EVENT == 8074) then
	SaveEvent(UID, 8995);
end

if (EVENT == 8075) then
	SelectMsg(UID, 2, 800, 8215, NPC, 3014, 153);
	SaveEvent(UID, 8994);
end

if (EVENT == 8077) then
	MonsterCount = CountMonsterQuestSub(UID, 800, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 800, 8409, NPC, 18, 8078);
	else
		SelectMsg(UID, 4, 800, 8216, NPC, 41, 8079, 27, 153);
	end
end

if (EVENT == 8078) then
	ShowMap(UID, 503);
end

if (EVENT == 8079) then
	ExpChange(UID, 1700000)
	GoldGain(UID, 100000)
	SaveEvent(UID, 8993);    
end

if (EVENT == 8150) then -- 49 Level Haunga
	SelectMsg(UID, 2, 841, 8221, NPC, 3002, 8151);
end

if (EVENT == 8151) then
	SaveEvent(UID, 9003);
end

if (EVENT == 8152) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 841, 8222, NPC, 10, 8160);
	else
		SelectMsg(UID, 2, 841, 8406, NPC, 10, 153);
	end
end

if (EVENT == 8160) then
	SelectMsg(UID, 4, 841, 8223, NPC, 22, 8153, 23, 8154);
end

if (EVENT == 8153) then
	SaveEvent(UID, 9004);
end

if (EVENT == 8154) then
	SaveEvent(UID, 9007);
end

if (EVENT == 8155) then
	SelectMsg(UID, 2, 841, 8215, NPC, 3014, 153);
	SaveEvent(UID, 9006);
end

if (EVENT == 8157) then
	MonsterCount = CountMonsterQuestSub(UID, 841, 1);
	if (MonsterCount < 15) then
		SelectMsg(UID, 2, 841, 8409, NPC, 18, 8158);
	else
		SelectMsg(UID, 4, 841, 8224, NPC, 41, 8159, 27, 153);
	end
end

if (EVENT == 8158) then
	ShowMap(UID, 515);
end

if (EVENT == 8159) then
	ExpChange(UID, 1800000)
	GoldGain(UID, 100000)
	SaveEvent(UID, 9005);	 
end

if (EVENT == 9470) then -- 50 Level Sheriff
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9576);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9581);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9586);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9591);
	end
end

if (EVENT == 9472) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 916, 8196, NPC, 10, 9475);
	else
		SelectMsg(UID, 2, 916, 8406, NPC, 10, 153);
	end
end

if (EVENT == 9475) then
	SelectMsg(UID, 4, 916, 8197, NPC, 22, 9473, 23, 9474);
end

if (EVENT == 9473) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9577);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9582);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9587);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9592);
	end
end

if (EVENT == 9474) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9580);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9585);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9590);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9595);
	end
end

if (EVENT == 9480) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9579);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9584);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9589);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9594);
	end
end

if (EVENT == 9476) then
	MonsterCount = CountMonsterQuestSub(UID, 916, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 916, 8409, NPC, 18, 9477);
	else
		SelectMsg(UID, 4, 916, 8198, NPC, 41, 9478, 27, 153);
	end
end

if (EVENT == 9477) then
	ShowMap(UID, 622);
end

if (EVENT == 9478) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 4000000)
		GiveItem(UID, 910154112, 1)
		GiveItem(UID, 910154112, 1)
		SaveEvent(UID, 9578);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 4000000)
		GiveItem(UID, 910155113, 1)
		GiveItem(UID, 910155113, 1)
		SaveEvent(UID, 9583);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 4000000)
		GiveItem(UID, 910153111, 1)
		GiveItem(UID, 910153111, 1)
		SaveEvent(UID, 9588);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 4000000)
		GiveItem(UID, 910156114, 1)
		GiveItem(UID, 910154112, 1)
		GiveItem(UID, 910156114, 1)
		GiveItem(UID, 910154112, 1)
		SaveEvent(UID, 9593);
	end
end

if (EVENT == 8550) then -- 52 Level Dragon Tooth Soldier
	SelectMsg(UID, 2, 866, 8005, NPC, 14, 8551);
end

if (EVENT == 8551) then
	SaveEvent(UID, 9051);
end

if (EVENT == 8552) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 866, 8006, NPC, 10, 8560);
	else
		SelectMsg(UID, 2, 866, 8406, NPC, 10, 153);
	end
end

if (EVENT == 8560) then
	SelectMsg(UID, 4, 866, 8007, NPC, 22, 8553, 23, 8554);
end

if (EVENT == 8553) then
	SaveEvent(UID, 9052);
end

if (EVENT == 8554) then
	SaveEvent(UID, 9055);
end

if (EVENT == 8555) then
	SelectMsg(UID, 2, 866, 8008, NPC, 3014, 153);
	SaveEvent(UID, 9054);
end

if (EVENT == 8557) then
	MonsterCount = CountMonsterQuestSub(UID, 866, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 866, 8409, NPC, 18, 8558);
	else
		SelectMsg(UID, 4, 866, 8012, NPC, 41, 8559, 27, 153);
	end
end

if (EVENT == 8558) then
	ShowMap(UID, 584);
end

if (EVENT == 8559) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 5500000)
		GiveItem(UID, 925001595, 1)   
		SaveEvent(UID, 9053);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 5500000)
		GiveItem(UID, 925006596, 1)   
		SaveEvent(UID, 9053);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 5500000)
		GiveItem(UID, 926001597, 1)   
		SaveEvent(UID, 9053);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 5500000)
		GiveItem(UID, 926006598, 1)   
		SaveEvent(UID, 9053);
	end
end

if (EVENT == 9490) then -- 52 Level Garuna
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9618);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9623);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9628);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9633);
	end
end

if (EVENT == 9492) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 918, 8196, NPC, 10, 9495);
	else
		SelectMsg(UID, 2, 918, 8406, NPC, 10, 153);
	end
end

if (EVENT == 9495) then
	SelectMsg(UID, 4, 918, 8197, NPC, 22, 9493, 23, 9494);
end

if (EVENT == 9493) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9619);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9624);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9629);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9634);
	end
end

if (EVENT == 9494) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9622);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9627);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9632);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9637);
	end
end

if (EVENT == 9500) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9621);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9626);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9631);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9636);
	end
end

if (EVENT == 9496) then
	MonsterCount = CountMonsterQuestSub(UID, 918, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 918, 8409, NPC, 18, 9497);
	else
		SelectMsg(UID, 4, 918, 8198, NPC, 41, 9498, 27, 153);
	end
end

if (EVENT == 9497) then
	ShowMap(UID, 179);
end

if (EVENT == 9498) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 910157137, 1)
		SaveEvent(UID, 9620);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 910157137, 1)
		SaveEvent(UID, 9625);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 910158138, 1)
		SaveEvent(UID, 9630);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 4500000)
		GiveItem(UID, 910159139, 1)
		GiveItem(UID, 910157137, 1)
		SaveEvent(UID, 9635);
	end
end

if (EVENT == 400) then -- 54 Level Dragon Tooth Skeleton Premium
	SaveEvent(UID, 2271);
end

if (EVENT == 402) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1869, 8168, NPC, 22, 403, 23, 404);
	else
		SelectMsg(UID, 2, 1869, 8168, NPC, 10, 153);
	end
end

if (EVENT == 403) then
	SaveEvent(UID, 2272);
end

if (EVENT == 404) then
	SaveEvent(UID, 2275);
end

if (EVENT == 405) then
	SaveEvent(UID, 2274);
end

if (EVENT == 407) then
	MonsterCount = CountMonsterQuestSub(UID, 1869, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 1869, 8168, NPC, 18, 408);
	else
		SelectMsg(UID, 4, 1869, 8169, NPC, 41, 409, 23, 408);
	end
end

if (EVENT == 408) then
	ShowMap(UID, 29);
end

if (EVENT == 409) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 205004005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 2273);
		ShowEffect(UID, 300391);
	elseif (Class == 2 or Class == 7 or Class == 8) then      
		GiveItem(UID, 245004005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 2273);
		ShowEffect(UID, 300391);
	elseif (Class == 3 or Class == 9 or Class == 10) then    
		GiveItem(UID, 265004005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 2273);
		ShowEffect(UID, 300391);
    elseif (Class == 4 or Class == 11 or Class == 12) then     
		GiveItem(UID, 285004005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 2273);
		ShowEffect(UID, 300391);
	end	
end

if (EVENT == 9000) then -- 54 Level Dragon Tooth Skeleton
	SelectMsg(UID, 2, 869, 8005, NPC, 14, 9001);
end

if (EVENT == 9001) then
	SaveEvent(UID, 9087);
end

if (EVENT == 9002) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 869, 8015, NPC, 10, 9010);
	else
		SelectMsg(UID, 2, 869, 8406, NPC, 10, 153);
	end
end

if (EVENT == 9010) then
	SelectMsg(UID, 4, 869, 8016, NPC, 22, 9003, 23, 9004);
end

if (EVENT == 9003) then
	SaveEvent(UID, 9088);
end

if (EVENT == 9004) then
	SaveEvent(UID, 9091);
end

if (EVENT == 9005) then
	SelectMsg(UID, 2, 869, 8008, NPC, 3014, 153);
	SaveEvent(UID, 9090);
end

if (EVENT == 9007) then
	MonsterCount = CountMonsterQuestSub(UID, 869, 1);
	if (MonsterCount < 5) then
		SelectMsg(UID, 2, 869, 8409, NPC, 18, 9008);
	else
		SelectMsg(UID, 4, 869, 8224, NPC, 41, 9009, 27, 153);
	end
end

if (EVENT == 9008) then
	ShowMap(UID, 29);
end

if (EVENT == 9009) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 205005005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 9089);
		ShowEffect(UID, 300391);
	elseif (Class == 2 or Class == 7 or Class == 8) then      
		GiveItem(UID, 245005005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 9089);
		ShowEffect(UID, 300391);
	elseif (Class == 3 or Class == 9 or Class == 10) then    
		GiveItem(UID, 265005005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 9089);
		ShowEffect(UID, 300391);
    elseif (Class == 4 or Class == 11 or Class == 12) then     
		GiveItem(UID, 285005005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 9089);
		ShowEffect(UID, 300391);
	end 
end