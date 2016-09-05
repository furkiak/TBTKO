local Ret = 0;
local NPC = 14413;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 331, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 331, NPC)
	else 
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 195) then -- 47 Level Tyon Meat
	SaveEvent(UID, 114);
end

if (EVENT == 200) then
	SelectMsg(UID, 4, 108, 1247, NPC, 22, 201, 23, 202);
end

if (EVENT == 201) then
	SaveEvent(UID, 115);
	ShowMap(UID, 14);
end

if (EVENT == 202) then
	SaveEvent(UID, 118);
end

if (EVENT == 205) then
	SelectMsg(UID, 2, 108, 1247, NPC, 10, 193);
	SaveEvent(UID, 117);
end

if (EVENT == 210) then
	ItemA = HowmuchItem(UID, 379204000);
	if (ItemA < 1) then
		SelectMsg(UID, 2, 108, 1248, NPC, 18, 212);
	else
		SelectMsg(UID, 4, 108, 1247, NPC, 41, 211, 27, 193);
	end
end

if (EVENT == 212) then
	ShowMap(UID, 14);
end

if (EVENT == 211) then
	RobItem(UID, 379204000, 1)
	GoldGain(UID, 10000)
	SaveEvent(UID, 116);
end

if (EVENT == 9530) then -- 49 Level Tyon
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9702);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9707);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9712);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9717);
	end
end

if (EVENT == 9532) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 922, 8770, NPC, 22, 9533, 23, 9534);
	else
		SelectMsg(UID, 2, 922, 8770, NPC, 10, 193);
	end
end

if (EVENT == 9533) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9703);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9708);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9713);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9718);
	end
end

if (EVENT == 9534) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9706);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9711);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9716);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9721);
	end
end

if (EVENT == 9540) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9705);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9710);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9715);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9720);
	end
end

if (EVENT == 9536) then
	MonsterCount = CountMonsterQuestSub(UID, 922, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 922, 8770, NPC, 18, 9537);
	else
		SelectMsg(UID, 4, 922, 8770, NPC, 41, 9538, 27, 193);
	end
end

if (EVENT == 9537) then
	ShowMap(UID, 14);
end

if (EVENT == 9538) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 2100000)
		GoldGain(UID, 300000)
		SaveEvent(UID, 9704);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 2100000)
		GoldGain(UID, 300000)
		SaveEvent(UID, 9709);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 2100000)
		GoldGain(UID, 300000)
		SaveEvent(UID, 9714);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 2100000)
		GoldGain(UID, 300000)
		SaveEvent(UID, 9719);
	end
end