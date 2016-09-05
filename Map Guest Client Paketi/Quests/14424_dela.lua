local Ret = 0;
local NPC = 14424;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 4515, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 4516, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 9540) then -- 61 Level Doom Soldier
	SaveEvent(UID, 9729);
end

if (EVENT == 9542) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 924, 8773, NPC, 22, 9543, 23, 9544);
	else
		SelectMsg(UID, 2, 924, 8773, NPC, 10, 193);
	end
end

if (EVENT == 9543) then
	SaveEvent(UID, 9730);
end

if (EVENT == 9544) then
	SaveEvent(UID, 9733);
end

if (EVENT == 9546) then
	SaveEvent(UID, 9732);
end

if (EVENT == 9547) then
	MonsterCount = CountMonsterQuestSub(UID, 924, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 924, 8773, NPC, 18, 9548);
	else
		SelectMsg(UID, 4, 924, 8773, NPC, 41, 9549, 27, 9548);
	end
end

if (EVENT == 9548) then
	ShowMap(UID, 628);
end

if (EVENT == 9549) then
	ExpChange(UID, 19000000)
	SaveEvent(UID, 9731);
end

local savenum = 430;

if (EVENT == 532) then -- 62 Level 7 Certificate of Suffering 
	SelectMsg(UID, 4, savenum, 4509, NPC, 22, 533, 23, 534);
end

if (EVENT == 533) then
	Check = isRoomForItem(UID, 910127000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 193);
	else
		SaveEvent(UID, 4272);
		GiveItem(UID, 910127000, 1);
	end
end

if (EVENT == 534) then
	SaveEvent(UID, 4275);
end

if (EVENT == 536) then
	ItemA = HowmuchItem(UID, 910134000);
	ItemB = HowmuchItem(UID, 910127000);
	if (ItemA < 1) then
		if (ItemB < 1) then
			Check = isRoomForItem(UID, 910127000);
			if (Check == -1) then
				SelectMsg(UID, 2, -1, 832, NPC, 27, 193);
			else
				GiveItem(UID, 910127000, 1)
				SelectMsg(UID, 2, savenum, 4511, NPC, 18, 538);
			end
		else
			SelectMsg(UID, 2, savenum, 4512, NPC, 18, 538);
		end
	else
		SelectMsg(UID, 2, savenum, 4510, NPC, 4172, 537, 4173, 193);
	end
end

if (EVENT == 538) then
	ShowMap(UID, 461);
end

if (EVENT == 537) then
	RobItem(UID, 910134000, 1)
	RobItem(UID, 910127000, 1)
	GiveItem(UID, 910139000, 1)
	GiveItem(UID, 910140000, 1)
	GiveItem(UID, 910141000, 1)
	GiveItem(UID, 910142000, 1)
	SaveEvent(UID, 4273);
end

if (EVENT == 9370) then -- 62 Level Brahman
	SaveEvent(UID, 9405);
end

if (EVENT == 9372) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 900, 8687, NPC, 22, 9373, 23, 9374);
	else
		SelectMsg(UID, 2, 900, 8687, NPC, 10, 193);
	end
end

if (EVENT == 9373) then
	SaveEvent(UID, 9406);
end

if (EVENT == 9374) then
	SaveEvent(UID, 9409);
end

if (EVENT == 9376) then
	SaveEvent(UID, 9408);
end

if (EVENT == 9377) then
	MonsterCount = CountMonsterQuestSub(UID, 900, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 900, 8687, NPC, 18, 9378);
	else
		SelectMsg(UID, 4, 900, 8687, NPC, 41, 9379, 27, 9378);
	end
end

if (EVENT == 9378) then
	ShowMap(UID, 606);
end

if (EVENT == 9379) then
	ExpChange(UID, 21000000)
	SaveEvent(UID, 9407);
end

if (EVENT == 9380) then -- 63 Level Crimson Wing
	SaveEvent(UID, 9417);
end

if (EVENT == 9382) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 902, 8689, NPC, 22, 9383, 23, 9384);
	else
		SelectMsg(UID, 2, 902, 8689, NPC, 10, 193);
	end
end

if (EVENT == 9383) then
	SaveEvent(UID, 9418);
end

if (EVENT == 9384) then
	SaveEvent(UID, 9421);
end

if (EVENT == 9386) then
	SaveEvent(UID, 9420);
end

if (EVENT == 9387) then
	MonsterCount = CountMonsterQuestSub(UID, 902, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 902, 8689, NPC, 18, 9388);
	else
		SelectMsg(UID, 4, 902, 8689, NPC, 41, 9389, 27, 9388);
	end
end

if (EVENT == 9388) then
	ShowMap(UID, 608);
end

if (EVENT == 9389) then
	ExpChange(UID, 20000000)
	SaveEvent(UID, 9419);
end

if (EVENT == 9390) then -- 64 Level Gargoyle
	SaveEvent(UID, 9429);
end

if (EVENT == 9392) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 904, 8691, NPC, 22, 9393, 23, 9394);
	else
		SelectMsg(UID, 2, 904, 8691, NPC, 10, 193);
	end
end

if (EVENT == 9393) then
	SaveEvent(UID, 9430);
end

if (EVENT == 9394) then
	SaveEvent(UID, 9433);
end

if (EVENT == 9396) then
	SaveEvent(UID, 9432);
end

if (EVENT == 9397) then
	MonsterCount = CountMonsterQuestSub(UID, 904, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 904, 8691, NPC, 18, 9398);
	else
		SelectMsg(UID, 4, 904, 8691, NPC, 41, 9399, 27, 9398);
	end
end

if (EVENT == 9398) then
	ShowMap(UID, 610);
end

if (EVENT == 9399) then
	ExpChange(UID, 21000000)
	SaveEvent(UID, 9431);
end

if (EVENT == 9410) then -- 67 Level Apostle Piercing Cold 
	SaveEvent(UID, 9453);
end

if (EVENT == 9412) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 907, 8695, NPC, 22, 9413, 23, 9414);
	else
		SelectMsg(UID, 2, 907, 8695, NPC, 10, 193);
	end
end

if (EVENT == 9413) then
	SaveEvent(UID, 9454);
end

if (EVENT == 9414) then
	SaveEvent(UID, 9457);
end

if (EVENT == 9416) then
	SaveEvent(UID, 9456);
end

if (EVENT == 9417) then
	MonsterCount = CountMonsterQuestSub(UID, 907, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 907, 8695, NPC, 18, 9418);
	else
		SelectMsg(UID, 4, 907, 8695, NPC, 41, 9419, 27, 9418);
	end
end

if (EVENT == 9418) then
	ShowMap(UID, 615);
end

if (EVENT == 9419) then
	ExpChange(UID, 33000000)
	SaveEvent(UID, 9455);
end

if (EVENT == 9420) then -- 69 Level Apostle of Flames
	SaveEvent(UID, 9465);
end

if (EVENT == 9422) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 910, 8697, NPC, 22, 9423, 23, 9424);
	else
		SelectMsg(UID, 2, 910, 8697, NPC, 10, 193);
	end
end

if (EVENT == 9423) then
	SaveEvent(UID, 9466);
end

if (EVENT == 9424) then
	SaveEvent(UID, 9469);
end

if (EVENT == 9426) then
	SaveEvent(UID, 9468);
end

if (EVENT == 9427) then
	MonsterCount = CountMonsterQuestSub(UID, 910, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 910, 8697, NPC, 18, 9428);
	else
		SelectMsg(UID, 4, 910, 8697, NPC, 41, 9429, 27, 9428);
	end
end

if (EVENT == 9428) then
	ShowMap(UID, 617);
end

if (EVENT == 9429) then
	ExpChange(UID, 40000000)
	SaveEvent(UID, 9467);
end

local savenum = 441;

if (EVENT == 630) then -- 70 Level Selfname Quest
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4354);
		EVENT = 631
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4354);
		EVENT = 631
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4354);
		EVENT = 631
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4354);
		EVENT = 631
	end
end

if (EVENT == 631) then
	SelectMsg(UID, 2, savenum, 4622, NPC, 4080, 193);
end

if (EVENT == 632) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 4623, NPC, 22, 633, 23, 634);
	else
		SelectMsg(UID, 2, savenum, 4624, NPC, 10, 193);
	end
end

if (EVENT == 633) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4355);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4360);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4365);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4370);
	end
end

if (EVENT == 634) then
	SaveEvent(UID, 4358);
end
    
if (EVENT == 280) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 4357);
		EVENT = 281
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 4362);
		EVENT = 281
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 4367);
		EVENT = 281
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 4372);
		EVENT = 281
	end
end

if (EVENT == 281) then
	SelectMsg(UID, 2, savenum, 4625, NPC, 14, 193);
end

if (EVENT == 636) then
	MonsterCount01 = CountMonsterQuestSub(UID, 32001); --Quest Uruk Hai
	MonsterCount02 = CountMonsterQuestSub(UID, 32002); --Quest Stone Golem
	MonsterCount03 = CountMonsterQuestSub(UID, 32003); --Quest Troll Berserker
	MonsterCount04 = CountMonsterQuestSub(UID, 32004); --Quest Apostles  
	if (MonsterCount01 > 0 and MonsterCount02 > 0 and MonsterCount03 > 0 and MonsterCount04 > 0) then 
		SelectMsg(UID, 4, savenum, 4630, NPC, 4161, 637, 4162, 193);
	else
		if (MonsterCount01 < 1) then
			SelectMsg(UID, 2, savenum, 4626, NPC, 18, 638);
		elseif ( MonsterCount02 < 1) then
			SelectMsg(UID, 2, savenum, 4627, NPC, 18, 639);
		elseif ( MonsterCount03 < 1) then
			SelectMsg(UID, 2, savenum, 4628, NPC, 18, 640);
		elseif ( MonsterCount04 < 1) then
			SelectMsg(UID, 2, savenum, 4629, NPC, 18, 641);
		end
	end
end

if (EVENT == 638) then
	ShowMap(UID, 481);
end

if (EVENT == 639) then
	ShowMap(UID, 482);
end

if (EVENT == 640) then
	ShowMap(UID, 483);
end

if (EVENT == 641) then
	ShowMap(UID, 484);
end

if (EVENT == 637) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 910120350, 1)
		GiveItem(UID, 910126544, 1)
		GiveItem(UID, 910121300, 1)
		SaveEvent(UID, 4356);
		ShowEffect(UID, 3003910) 
	elseif (Class == 2 or Class == 7 or Class == 8) then
		GiveItem(UID, 910119300, 1)
		GiveItem(UID, 910122350, 1)
		SaveEvent(UID, 4361);
		ShowEffect(UID, 3003910) 
	elseif (Class == 3 or Class == 9 or Class == 10) then
		GiveItem(UID, 910123355, 1)
		GiveItem(UID, 910124351, 1)
		SaveEvent(UID, 4366);
		ShowEffect(UID, 3003910) 
	elseif (Class == 4 or Class == 11 or Class == 12) then
		GiveItem(UID, 910125324, 1)
		GiveItem(UID, 910126544, 1)
		SaveEvent(UID, 4371);
		ShowEffect(UID, 3003910) 
	end
end

if (EVENT == 200) then -- 71 Level Troll Berserker
	SaveEvent(UID, 923);
end

if (EVENT == 202) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1031, 1408, NPC, 22, 203, 23, 204);
	else
		SelectMsg(UID, 2, 1031, 1408, NPC, 10, 193);
	end
end

if (EVENT == 203) then
	SaveEvent(UID, 924);
end

if (EVENT == 204) then
	SaveEvent(UID, 927);
end

if (EVENT == 205) then
	SaveEvent(UID, 926);
end

if (EVENT == 206) then
	MonsterCount = CountMonsterQuestSub(UID, 1031, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 1031, 1408, NPC, 18, 207);
	else
		SelectMsg(UID, 4, 1031, 1408, NPC, 41, 208, 27, 207);
	end
end

if (EVENT == 207) then
	ShowMap(UID, 131);
end

if (EVENT == 208) then
	ExpChange(UID, 55000000)
	SaveEvent(UID, 925);
end

if (EVENT == 210) then -- 71 Level Troll Captain
	SaveEvent(UID, 935);
end

if (EVENT == 212) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1033, 1420, NPC, 22, 213, 23, 214);
	else
		SelectMsg(UID, 2, 1033, 1420, NPC, 10, 193);
	end
end

if (EVENT == 213) then
	SaveEvent(UID, 936);
end

if (EVENT == 214) then
	SaveEvent(UID, 939);
end

if (EVENT == 215) then
	SaveEvent(UID, 938);
end

if (EVENT == 216) then
	MonsterCount = CountMonsterQuestSub(UID, 1033, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 1033, 1420, NPC, 18, 217);
	else
		SelectMsg(UID, 4, 1033, 1420, NPC, 41, 218, 27, 217);
	end
end

if (EVENT == 217) then
	ShowMap(UID, 170);
end

if (EVENT == 218) then
	ExpChange(UID, 55000000)
	SaveEvent(UID, 937);
end

if (EVENT == 220) then -- 72 Level Booro 
	SaveEvent(UID, 947);
end

if (EVENT == 222) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1035, 1434, NPC, 22, 223, 23, 224);
	else
		SelectMsg(UID, 2, 1035, 1434, NPC, 10, 193);
	end
end

if (EVENT == 223) then
	SaveEvent(UID, 948);
end

if (EVENT == 224) then
	SaveEvent(UID, 951);
end

if (EVENT == 225) then
	SaveEvent(UID, 950);
end

if (EVENT == 226) then
	MonsterCount = CountMonsterQuestSub(UID, 1035, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 1035, 1427, NPC, 18, 227);
	else
		SelectMsg(UID, 4, 1035, 1427, NPC, 41, 228, 27, 227);
	end
end

if (EVENT == 227) then
	ShowMap(UID, 172);
end

if (EVENT == 228) then
	ExpChange(UID, 67000000)
	SaveEvent(UID, 949);
end

if (EVENT == 230) then -- 72 Level Dark Stone
	SaveEvent(UID, 959);
end

if (EVENT == 232) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1037, 1446, NPC, 22, 233, 23, 234);
	else
		SelectMsg(UID, 2, 1037, 1446, NPC, 10, 193);
	end
end

if (EVENT == 233) then
	SaveEvent(UID, 960);
end

if (EVENT == 234) then
	SaveEvent(UID, 963);
end

if (EVENT == 235) then
	SaveEvent(UID, 962);
end

if (EVENT == 236) then
	MonsterCount = CountMonsterQuestSub(UID, 1037, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, 1037, 1446, NPC, 18, 237);
	else
		SelectMsg(UID, 4, 1037, 1446, NPC, 41, 238, 27, 237);
	end
end

if (EVENT == 237) then
	ShowMap(UID, 173);
end

if (EVENT == 238) then
	ExpChange(UID, 67000000)
	SaveEvent(UID, 961);
end

if (EVENT == 240) then -- 73 Level Balog
	SaveEvent(UID, 971);
end

if (EVENT == 242) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 1039, 1457, NPC, 22, 243, 23, 244);
	else
		SelectMsg(UID, 2, 1039, 1457, NPC, 10, 193);
	end
end

if (EVENT == 243) then
	SaveEvent(UID, 972);
end

if (EVENT == 244) then
	SaveEvent(UID, 975);
end

if (EVENT == 245) then
	SaveEvent(UID, 974);
end

if (EVENT == 246) then
	MonsterCount = CountMonsterQuestSub(UID, 1039, 1);
	if (MonsterCount < 2) then
		SelectMsg(UID, 2, 1039, 1457, NPC, 18, 247);
	else
		SelectMsg(UID, 4, 1039, 1457, NPC, 41, 248, 27, 247);
	end
end

if (EVENT == 247) then
	ShowMap(UID, 175);
end

if (EVENT == 248) then
	ExpChange(UID, 82000000)
	SaveEvent(UID, 973);
end