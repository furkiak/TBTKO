local Ret = 0;
local NPC = 24413;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 330, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 330, NPC)
	else 
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 195) then -- 47 Level Tyon Meat
	SaveEvent(UID, 121);
end

if (EVENT == 200) then
	SelectMsg(UID, 4, 109, 1247, NPC, 22, 201, 23, 202);
end

if (EVENT == 201) then
	SaveEvent(UID, 122);
	ShowMap(UID, 344);
end

if (EVENT == 202) then
	SaveEvent(UID, 125);
end

if (EVENT == 205) then
	SelectMsg(UID, 2, 109, 1247, NPC, 10, 193);
	SaveEvent(UID, 124);
end

if (EVENT == 210) then
	ItemA = HowmuchItem(UID, 379204000);
	if (ItemA < 1) then
		SelectMsg(UID, 2, 109, 1248, NPC, 18, 212);
	else
		SelectMsg(UID, 4, 109, 1247, NPC, 41, 211, 27, 193);
	end
end

if (EVENT == 212) then
	ShowMap(UID, 344);
end

if (EVENT == 211) then
	RobItem(UID, 379204000, 1)
	GoldGain(UID, 10000)
	SaveEvent(UID, 123);
end

if (EVENT == 9530) then -- 49 Level Tyon
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9681);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9686);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9691);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9696);
	end
end

if (EVENT == 9532) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 921, 8770, NPC, 22, 9533, 23, 9534);
	else
		SelectMsg(UID, 2, 921, 8770, NPC, 10, 193);
	end
end

if (EVENT == 9533) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9682);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9687);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9692);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9697);
	end
end

if (EVENT == 9534) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9685);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9690);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9695);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9700);
	end
end

if (EVENT == 9540) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9684);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9689);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9694);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9699);
	end
end

if (EVENT == 9536) then
	MonsterCount = CountMonsterQuestSub(UID, 921, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 921, 8770, NPC, 18, 9537);
	else
		SelectMsg(UID, 4, 921, 8770, NPC, 41, 9538, 27, 193);
	end
end

if (EVENT == 9537) then
	ShowMap(UID, 344);
end

if (EVENT == 9538) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 2100000)
		GoldGain(UID, 300000)
		SaveEvent(UID, 9683);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 2100000)
		GoldGain(UID, 300000)
		SaveEvent(UID, 9688);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 2100000)
		GoldGain(UID, 300000)
		SaveEvent(UID, 9693);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 2100000)
		GoldGain(UID, 300000)
		SaveEvent(UID, 9698);
	end
end