local Ret = 0;
local NPC = 24424;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 4513, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 4514, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 9540) then -- 61 Level Doom Soldier
	SaveEvent(UID, 9723);
end

if (EVENT == 9542) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 923, 8772, NPC, 22, 9543, 23, 9544);
	else
		SelectMsg(UID, 2, 923, 8772, NPC, 10, 193);
	end
end

if (EVENT == 9543) then
	SaveEvent(UID, 9724);
end

if (EVENT == 9544) then
	SaveEvent(UID, 9727);
end

if (EVENT == 9546) then
	SaveEvent(UID, 9726);
end

if (EVENT == 9547) then
	MonsterCount = CountMonsterQuestSub(UID, 923, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 923, 8772, NPC, 18, 9548);
	else
		SelectMsg(UID, 4, 923, 8772, NPC, 41, 9549, 27, 9548);
	end
end

if (EVENT == 9548) then
	ShowMap(UID, 627);
end

if (EVENT == 9549) then
	ExpChange(UID, 19000000)
	SaveEvent(UID, 9725);
end

local savenum = 430;

if (EVENT == 530) then -- 62 Level 7 Certificate of Suffering
	SaveEvent(UID, 4266);
	SelectMsg(UID, 2, savenum, 4503, NPC, 4080, 193);
end

if (EVENT == 532) then   
	SelectMsg(UID, 4, savenum, 4505, NPC, 22, 533, 23, 534);
end

if (EVENT == 533) then
	Check = isRoomForItem(UID, 910127000);
	if (Check == -1) then
		SelectMsg(UID, 2, savenum, 832, NPC, 27, 193);
	else
		GiveItem(UID, 910127000, 1);
		SaveEvent(UID, 4267);
	end
end

if (EVENT == 534) then
	SaveEvent(UID, 4270);
end

if (EVENT == 536) then
	ItemA = HowmuchItem(UID, 910134000);
	ItemB = HowmuchItem(UID, 910127000);
	if (ItemA < 1) then
		if (ItemB < 1) then
			Check = isRoomForItem(UID, 910127000);
			if (Check == -1) then
				SelectMsg(UID, 2, savenum, 832, NPC, 27 , 193);
			else
				GiveItem(UID, 910127000, 1)
				SelectMsg(UID, 2, savenum, 4507, NPC, 18, 538);
			end
		else
			SelectMsg(UID, 2, savenum, 4508, NPC, 18, 538);
		end
	else
		SelectMsg(UID, 4, savenum, 4506, NPC, 4172, 537, 4173, 193);
	end
end

if (EVENT == 538) then
	ShowMap(UID, 454);
end

if (EVENT == 537) then
	RobItem(UID, 910134000, 1)
	RobItem(UID, 910127000, 1)
	GiveItem(UID, 910139000, 1)
	GiveItem(UID, 910140000, 1)
	GiveItem(UID, 910141000, 1)
	GiveItem(UID, 910142000, 1)
	SaveEvent(UID, 4268); 
end

if (EVENT == 9370) then -- 62 Level Brahman
	SaveEvent(UID, 9399);
end

if (EVENT == 9372) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 901, 8686, NPC, 22, 9373, 23, 9374);
	else
		SelectMsg(UID, 2, 901, 8686, NPC, 10, 193);
	end
end

if (EVENT == 9373) then
	SaveEvent(UID, 9400);
end

if (EVENT == 9374) then
	SaveEvent(UID, 9403);
end

if (EVENT == 9376) then
	SaveEvent(UID, 9402);
end

if (EVENT == 9377) then
	MonsterCount = CountMonsterQuestSub(UID, 901, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 901, 8686, NPC, 18, 9378);
	else
		SelectMsg(UID, 4, 901, 8686, NPC, 41, 9379, 27, 9378);
	end
end

if (EVENT == 9378) then
	ShowMap(UID, 607);
end

if (EVENT == 9379) then
	ExpChange(UID, 21000000)
	SaveEvent(UID, 9401);
end

if (EVENT == 9380) then -- 63 Level Crimson Wing
	SaveEvent(UID, 9411);
end

if (EVENT == 9382) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 903, 8688, NPC, 22, 9383, 23, 9384);
	else
		SelectMsg(UID, 2, 903, 8688, NPC, 10, 193);
	end
end

if (EVENT == 9383) then
	SaveEvent(UID, 9412);
end

if (EVENT == 9384) then
	SaveEvent(UID, 9415);
end

if (EVENT == 9386) then
	SaveEvent(UID, 9414);
end

if (EVENT == 9387) then
	MonsterCount = CountMonsterQuestSub(UID, 903, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 903, 8688, NPC, 18, 9388);
	else
		SelectMsg(UID, 4, 903, 8688, NPC, 41, 9389, 27, 9388);
	end
end

if (EVENT == 9388) then
	ShowMap(UID, 609);
end

if (EVENT == 9389) then
	ExpChange(UID, 20000000)
	SaveEvent(UID, 9413);
end

if (EVENT == 9390) then -- 64 Level Gargoyle
	SaveEvent(UID, 9423);
end

if (EVENT == 9392) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 905, 8690, NPC, 22, 9393, 23, 9394);
	else
		SelectMsg(UID, 2, 905, 8690, NPC, 10, 193);
	end
end

if (EVENT == 9393) then
	SaveEvent(UID, 9424);
end

if (EVENT == 9394) then
	SaveEvent(UID, 9427);
end

if (EVENT == 9396) then
	SaveEvent(UID, 9426);
end

if (EVENT == 9397) then
	MonsterCount = CountMonsterQuestSub(UID, 905, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 905, 8690, NPC, 18, 9398);
	else
		SelectMsg(UID, 4, 905, 8690, NPC, 41, 9399, 27, 9398);
	end
end

if (EVENT == 9398) then
	ShowMap(UID, 611);
end

if (EVENT == 9399) then
	ExpChange(UID, 21000000)
	SaveEvent(UID, 9425);
end

if (EVENT == 9410) then -- 67 Level Apostle Piercing Cold 
	SaveEvent(UID, 9447);
end

if (EVENT == 9412) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 908, 8694, NPC, 22, 9413, 23, 9414);
	else
		SelectMsg(UID, 2, 908, 8694, NPC, 10, 193);
	end
end

if (EVENT == 9413) then
	SaveEvent(UID, 9448);
end

if (EVENT == 9414) then
	SaveEvent(UID, 9451);
end

if (EVENT == 9416) then
	SaveEvent(UID, 9450);
end

if (EVENT == 9417) then
	MonsterCount = CountMonsterQuestSub(UID, 908, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 908, 8694, NPC, 18, 9418);
	else
		SelectMsg(UID, 4, 908, 8694, NPC, 41, 9419, 27, 9418);
	end
end

if (EVENT == 9418) then
	ShowMap(UID, 616);
end

if (EVENT == 9419) then
	ExpChange(UID, 33000000)
	SaveEvent(UID, 9449);
end

if (EVENT == 9420) then -- 69 Level Apostle of Flames
	SaveEvent(UID, 9459);
end

if (EVENT == 9422) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 909, 8696, NPC, 22, 9423, 23, 9424);
	else
		SelectMsg(UID, 2, 909, 8696, NPC, 10, 193);
	end
end

if (EVENT == 9423) then
	SaveEvent(UID, 9460);
end

if (EVENT == 9424) then
	SaveEvent(UID, 9463);
end

if (EVENT == 9426) then
	SaveEvent(UID, 9462);
end

if (EVENT == 9427) then
	MonsterCount = CountMonsterQuestSub(UID, 909, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 909, 8696, NPC, 18, 9428);
	else
		SelectMsg(UID, 4, 909, 8696, NPC, 41, 9429, 27, 9428);
	end
end

if (EVENT == 9428) then
	ShowMap(UID, 618);
end

if (EVENT == 9429) then
	ExpChange(UID, 40000000)
	SaveEvent(UID, 9461);
end

local savenum = 440;

if (EVENT == 630) then -- 70 Level Selfname Quest
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4333);
		EVENT = 631
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4338);
		EVENT = 631
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4343);
		EVENT = 631
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4348);
		EVENT = 631
	end
end

if (EVENT == 631) then
	SelectMsg(UID, 2, savenum, 4613, NPC, 4080, 193);
end

if (EVENT == 632) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 4614, NPC, 22, 633, 23, 634);
	else
		SelectMsg(UID, 2, savenum, 4615, NPC, 10, 193);
	end
end

if (EVENT == 633) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4334);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4339);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4344);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4349);
	end
end

if (EVENT == 634) then
	SaveEvent(UID, 4337);
end

if (EVENT == 280) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4336);
		EVENT = 281
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4341);
		EVENT = 281
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4346);
		EVENT = 281
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4351);
		EVENT = 281
	end
end

if (EVENT == 281) then
	SelectMsg(UID, 2, savenum, 4616, NPC, 14, 193);
end

if (EVENT == 636) then
	MonsterCount01 = CountMonsterQuestSub(UID, 1); --Quest Uruk Hai
	MonsterCount02 = CountMonsterQuestSub(UID, 2); --Quest Stone Golem
	MonsterCount03 = CountMonsterQuestSub(UID, 3); --Quest Troll Berserker
	MonsterCount04 = CountMonsterQuestSub(UID, 4); --Quest Apostles
	if (MonsterCount01 > 0 and MonsterCount02 > 0 and MonsterCount03 > 0 and MonsterCount04 > 0) then 
		SelectMsg(UID, 4, savenum, 4621, NPC, 4161, 637, 4162, 193);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, savenum, 4617, NPC, 18, 638);
		elseif ( MonsterCount02 < 1) then
			SelectMsg(UID, 2, savenum, 4618, NPC, 18, 639);
		elseif ( MonsterCount03 < 1) then
			SelectMsg(UID, 2, savenum, 4619, NPC, 18, 640);
		elseif ( MonsterCount04 < 1) then
			SelectMsg(UID, 2, savenum, 4620, NPC, 18, 641);
		end
	end
end

if (EVENT == 638) then
	ShowMap(UID, 474);
end

if (EVENT == 639) then
	ShowMap(UID, 475);
end

if (EVENT == 640) then
	ShowMap(UID, 476);
end

if (EVENT == 641) then
	ShowMap(UID, 477);
end

if (EVENT == 637) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 910120350, 1)
		GiveItem(UID, 910126544, 1)
		GiveItem(UID, 910121300, 1)
		SaveEvent(UID, 4335);
		ShowEffect(UID, 300391) 
	elseif (Class == 2 or Class == 7 or Class == 8) then
		GiveItem(UID, 910119300, 1)
		GiveItem(UID, 910122350, 1)
		SaveEvent(UID, 4340);
		ShowEffect(UID, 300391) 
	elseif (Class == 3 or Class == 9 or Class == 10) then
		GiveItem(UID, 910123355, 1)
		GiveItem(UID, 910124351, 1)
		SaveEvent(UID, 4345);
		ShowEffect(UID, 300391) 
	elseif (Class == 4 or Class == 11 or Class == 12) then
		GiveItem(UID, 910125324, 1)
		GiveItem(UID, 910126544, 1)
		SaveEvent(UID, 4350);
		ShowEffect(UID, 300391) 
	end	 
end

if (EVENT == 200) then -- 71 Level Troll Berserker
	SaveEvent(UID, 917);
end

if (EVENT == 202) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1030, 1401, NPC, 22, 203, 23, 204);
	else
		SelectMsg(UID, 2, 1030, 1401, NPC, 10, 193);
	end
end

if (EVENT == 203) then
	SaveEvent(UID, 918);
end

if (EVENT == 204) then
	SaveEvent(UID, 921);
end

if (EVENT == 205) then
	SaveEvent(UID, 920);
end

if (EVENT == 206) then
	MonsterCount = CountMonsterQuestSub(UID, 1030, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 1030, 1401, NPC, 18, 207);
	else
		SelectMsg(UID, 4, 1030, 1401, NPC, 41, 208, 27, 207);
	end
end

if (EVENT == 207) then
	ShowMap(UID, 130);
end

if (EVENT == 208) then
	ExpChange(UID, 55000000)
	SaveEvent(UID, 919);
end

if (EVENT == 210) then -- 71 Level Troll Captain
	SaveEvent(UID, 929);
end

if (EVENT == 212) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1032, 1414, NPC, 22, 213, 23, 214);
	else
		SelectMsg(UID, 2, 1032, 1414, NPC, 10, 193);
	end
end

if (EVENT == 213) then
	SaveEvent(UID, 930);
end

if (EVENT == 214) then
	SaveEvent(UID, 933);
end

if (EVENT == 215) then
	SaveEvent(UID, 932);
end

if (EVENT == 216) then
	MonsterCount = CountMonsterQuestSub(UID, 1032, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 1032, 1414, NPC, 18, 217);
	else
		SelectMsg(UID, 4, 1032, 1414, NPC, 41, 218, 27, 217);
	end
end

if (EVENT == 217) then
	ShowMap(UID, 171);
end

if (EVENT == 218) then
	ExpChange(UID, 55000000)
	SaveEvent(UID, 931);
end

if (EVENT == 220) then -- 72 Level Booro 
	SaveEvent(UID, 941);
end

if (EVENT == 222) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1034, 1427, NPC, 22, 223, 23, 224);
	else
		SelectMsg(UID, 2, 1034, 1427, NPC, 10, 193);
	end
end

if (EVENT == 223) then
	SaveEvent(UID, 942);
end

if (EVENT == 224) then
	SaveEvent(UID, 945);
end

if (EVENT == 225) then
	SaveEvent(UID, 944);
end

if (EVENT == 226) then
	MonsterCount = CountMonsterQuestSub(UID, 1034, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 1034, 1427, NPC, 18, 227);
	else
		SelectMsg(UID, 4, 1034, 1427, NPC, 41, 228, 27, 227);
	end
end

if (EVENT == 227) then
	ShowMap(UID, 172);
end

if (EVENT == 228) then
	ExpChange(UID, 67000000)
	SaveEvent(UID, 943);
end

if (EVENT == 230) then -- 72 Level Dark Stone
	SaveEvent(UID, 953);
end

if (EVENT == 232) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1036, 1440, NPC, 22, 233, 23, 234);
	else
		SelectMsg(UID, 2, 1036, 1440, NPC, 10, 193);
	end
end

if (EVENT == 233) then
	SaveEvent(UID, 954);
end

if (EVENT == 234) then
	SaveEvent(UID, 957);
end

if (EVENT == 235) then
	SaveEvent(UID, 956);
end

if (EVENT == 236) then
	MonsterCount = CountMonsterQuestSub(UID, 1036, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 1036, 1440, NPC, 18, 237);
	else
		SelectMsg(UID, 4, 1036, 1440, NPC, 41, 238, 27, 237);
	end
end

if (EVENT == 237) then
	ShowMap(UID, 174);
end

if (EVENT == 238) then
	ExpChange(UID, 67000000)
	SaveEvent(UID, 955);
end

if (EVENT == 240) then -- 73 Level Balog
	SaveEvent(UID, 965);
end

if (EVENT == 242) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1038, 1451, NPC, 22, 243, 23, 244);
	else
		SelectMsg(UID, 2, 1038, 1451, NPC, 10, 193);
	end
end

if (EVENT == 243) then
	SaveEvent(UID, 966);
end

if (EVENT == 244) then
	SaveEvent(UID, 969);
end

if (EVENT == 245) then
	SaveEvent(UID, 968);
end

if (EVENT == 246) then
	MonsterCount = CountMonsterQuestSub(UID, 1038, 1);
	if (MonsterCount < 250) then
		SelectMsg(UID, 2, 1038, 1451, NPC, 18, 247);
	else
		SelectMsg(UID, 4, 1038, 1451, NPC, 41, 248, 27, 247);
	end
end

if (EVENT == 247) then
	ShowMap(UID, 175);
end

if (EVENT == 248) then
	ExpChange(UID, 82000000)
	SaveEvent(UID, 967);
end