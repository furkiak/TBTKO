local Ret = 0;
local NPC = 24426;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 4597, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 4598, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 987;

if (EVENT == 170) then -- 60 Level Darkness Knight
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 235, NPC, 22, 171, 23, 172);
	else
		SelectMsg(UID, 2, savenum, 235, NPC, 10, 193);
	end
end

if (EVENT == 171) then
	SaveEvent(UID, 270);
end

if (EVENT == 172) then
	SaveEvent(UID, 207);
end

if (EVENT == 174) then
	SaveEvent(UID, 206);
	SelectMsg(UID, 2, savenum, 235, NPC, 14, 193);
end

if (EVENT == 175) then
	MonsterCount = CountMonsterQuestSub(UID, 987, 1);
	if (MonsterCount < 120) then
		SelectMsg(UID, 2, savenum, 235, NPC, 18, 193);
	else
		SelectMsg(UID, 4, savenum, 235, NPC, 41, 176, 27, 193);
	end
end

if (EVENT == 177) then
	ShowMap(UID, 80);
end

if (EVENT == 176) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1200000)
		SaveEvent(UID, 271);  
	else
		ExpChange(UID, 500000)
		SaveEvent(UID, 271); 
	end   
end

local savenum = 988;

if (EVENT == 180) then -- 60 Level Troll Shaman
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 253, NPC, 22, 181, 23, 182);
	else
		SelectMsg(UID, 2, savenum, 253, NPC, 10, 193);
	end
end

if (EVENT == 181) then
	SaveEvent(UID, 214);
end

if (EVENT == 182) then
	SaveEvent(UID, 217);
end

if (EVENT == 184) then
	SaveEvent(UID, 216);
	SelectMsg(UID, 2, savenum, 253, NPC, 14, 193);
end

if (EVENT == 185) then
	MonsterCount = CountMonsterQuestSub(UID, 988, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, savenum, 253, NPC, 18, 187);
	else
		SelectMsg(UID, 4, savenum, 253, NPC, 41, 186, 27, 193);
	end
end

if (EVENT == 187) then
	ShowMap(UID, 86);
end

if (EVENT == 186) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 2200000)
		SaveEvent(UID, 215);  
	else
		ExpChange(UID, 1000000)
		SaveEvent(UID, 215); 
	end   
end

local savenum = 989;

if (EVENT == 200) then -- 60 Level Crimson Wing
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 265, NPC, 22, 201, 23, 202);
	else
		SelectMsg(UID, 2, savenum, 265, NPC, 10, 193);
	end
end

if (EVENT == 201) then
	SaveEvent(UID, 224);
end

if (EVENT == 202) then
	SaveEvent(UID, 227);
end

if (EVENT == 204) then
	SaveEvent(UID, 226);
	SelectMsg(UID, 2, savenum, 265, NPC, 14, 193);
end

if (EVENT == 205) then
	MonsterCount = CountMonsterQuestSub(UID, 989, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, savenum, 265, NPC, 18, 207);
	else
		SelectMsg(UID, 4, savenum, 265, NPC, 41, 206, 27, 193);
	end
end

if (EVENT == 207) then
	ShowMap(UID, 83);
end

if (EVENT == 206) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 2000000)
		SaveEvent(UID, 225);  
	else
		ExpChange(UID, 1000000)
		SaveEvent(UID, 225); 
	end   
end

local savenum = 990;

if (EVENT == 210) then -- 60 Level Apostle Piercing
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 276, NPC, 22, 211, 23, 212);
	else
		SelectMsg(UID, 2, savenum, 276, NPC, 10, 193);
	end
end

if (EVENT == 211) then
	SaveEvent(UID, 234);
end

if (EVENT == 212) then
	SaveEvent(UID, 237);
end

if (EVENT == 214) then
	SaveEvent(UID, 236);
	SelectMsg(UID, 2, savenum, 276, NPC, 14, 193);
end

if (EVENT == 215) then
	MonsterCount = CountMonsterQuestSub(UID, 990, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, savenum, 276, NPC, 18, 217);
	else
		SelectMsg(UID, 4, savenum, 276, NPC, 41, 216, 27, 193);
	end
end

if (EVENT == 217) then
	ShowMap(UID, 87);
end

if (EVENT == 216) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 235);  
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 235); 
	end  
end

local savenum = 991;

if (EVENT == 220) then -- 60 Level Apostle Flame
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 8649, NPC, 22, 221, 23, 222);
	else
		SelectMsg(UID, 2, savenum, 8649, NPC, 10, 193);
	end
end

if (EVENT == 221) then
	SaveEvent(UID, 244);
end

if (EVENT == 222) then
	SaveEvent(UID, 247);
end

if (EVENT == 224) then
	SaveEvent(UID, 246);
	SelectMsg(UID, 2, savenum, 8649, NPC, 14, 193);
end

if (EVENT == 225) then
	MonsterCount = CountMonsterQuestSub(UID, 991, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, savenum, 8649, NPC, 18, 227);
	else
		SelectMsg(UID, 4, savenum, 8649, NPC, 41, 226, 27, 193);
	end
end

if (EVENT == 227) then
	ShowMap(UID, 88);
end

if (EVENT == 226) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 245);  
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 245); 
	end  
end

local savenum = 986;

if (EVENT == 160) then -- 60 Level Doom Soldier
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 215, NPC, 22, 161, 23, 163);
	else
		SelectMsg(UID, 2, savenum, 215, NPC, 10, 193);
	end
end

if (EVENT == 161) then
	SaveEvent(UID, 260);
end

if (EVENT == 163) then
	SaveEvent(UID, 263);
end

if (EVENT == 164) then
	SaveEvent(UID, 262);
	SelectMsg(UID, 2, savenum, 215, NPC, 14, 193);
end

if (EVENT == 165) then
	MonsterCount = CountMonsterQuestSub(UID, 986, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, savenum, 215, NPC, 18, 167);
	else
		SelectMsg(UID, 4, savenum, 215, NPC, 41, 166, 27, 193);
	end
end

if (EVENT == 167) then
	ShowMap(UID, 81);
end

if (EVENT == 166) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 1400000)
		SaveEvent(UID, 261);
	else
		ExpChange(UID, 600000)
		SaveEvent(UID, 261); 
	end   
end

local savenum = 1024;

if (EVENT == 530) then -- 70 Level 100 Kill
	SaveEvent(UID, 826);
	SelectMsg(UID, 2, savenum, 723, NPC, 4080, 193);
end

if (EVENT == 532) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 723, NPC, 22, 533, 23, 534);
	else
		SelectMsg(UID, 2, savenum, 723, NPC, 10, 193);
	end
end

if (EVENT == 533) then
	SaveEvent(UID, 827);
end

if (EVENT == 534) then
	SaveEvent(UID, 830);
end

if (EVENT == 535) then
	SaveEvent(UID, 829);
	SelectMsg(UID, 2, savenum, 723, NPC, 14, 193);
end

if (EVENT == 536) then
	MonsterCount = CountMonsterQuestSub(UID, 1024, 1);
	if (MonsterCount < 100) then
		SelectMsg(UID, 2, savenum, 723, NPC, 18, 538);
	else
		SelectMsg(UID, 4, savenum, 723, NPC, 4172, 537, 4173, 193);
	end
end

if (EVENT == 538) then
	ShowMap(UID, 489);
end

if (EVENT == 537) then
	ExpChange(UID, 20000000)
	SaveEvent(UID, 828);   
end

local savenum = 1029;

if (EVENT == 320) then -- 70 Level Ewil Wizard
	SaveEvent(UID, 905);
end

if (EVENT == 321) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 3120, NPC, 22, 322, 23, 323);
	else
		SelectMsg(UID, 2, savenum, 3120, NPC, 10, 193);
	end
end

if (EVENT == 322) then
	SaveEvent(UID, 906);
end

if (EVENT == 323) then
	SaveEvent(UID, 909);
end

if (EVENT == 324) then
	SaveEvent(UID, 908);
	SelectMsg(UID, 2, savenum, 3120, NPC, 14, 193);
end

if (EVENT == 325) then
	MonsterCount = CountMonsterQuestSub(UID, 1029, 1);
	if (MonsterCount < 40) then
		SelectMsg(UID, 2, savenum, 3120, NPC, 18, 327);
	else
		SelectMsg(UID, 4, savenum, 3120, NPC, 41, 326, 27, 193);
	end
end

if (EVENT == 327) then
	ShowMap(UID, 169);
end

if (EVENT == 326) then
	ExpChange(UID, 46000000)
	SaveEvent(UID, 907);   
end

local savenum = 1028;

if (EVENT == 310) then -- 74 Level Keramash & Manicmash & Nigmash
	SaveEvent(UID, 893);
end

if (EVENT == 311) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 365, NPC, 22, 312, 23, 313);
	else
		SelectMsg(UID, 2, savenum, 365, NPC, 10, 193);
	end
end

if (EVENT == 312) then
	SaveEvent(UID, 894);
end

if (EVENT == 323) then
	SaveEvent(UID, 897);
end

if (EVENT == 314) then
	SaveEvent(UID, 896);
	SelectMsg(UID, 2, savenum, 365, NPC, 14, 193);
end

if (EVENT == 315) then
	MonsterCount1 = CountMonsterQuestSub(UID, 1028, 1);
	MonsterCount2 = CountMonsterQuestSub(UID, 1028, 1);
	MonsterCount3 = CountMonsterQuestSub(UID, 1028, 1);
	if (MonsterCount1 < 1) then
		SelectMsg(UID, 2, savenum, 365, NPC, 18, 317);
	elseif (MonsterCount2 < 1) then
		SelectMsg(UID, 2, savenum, 365, NPC, 18, 318);
	elseif (MonsterCount3 < 1) then
		SelectMsg(UID, 2, savenum, 365, NPC, 18, 319);
	else
		SelectMsg(UID, 4, savenum, 365, NPC, 41, 316, 27, 193);
	end
end

if (EVENT == 317) then
	ShowMap(UID, 168);
end

if (EVENT == 318) then
	ShowMap(UID, 167);
end

if (EVENT == 319) then
	ShowMap(UID, 166);
end

if (EVENT == 316) then
	ExpChange(UID, 100000000)
	SaveEvent(UID, 895);   
end

local savenum = 1026;

if (EVENT == 300) then -- 80 Level Enigma & Cruel
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 851);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 856);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 861);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 866);
	end
end

if (EVENT == 302) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 357, NPC, 22, 303, 23, 304);
	else
		SelectMsg(UID, 2, savenum, 357, NPC, 10, 193);
	end
end

if (EVENT == 303) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 852);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 857);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 862);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 867);
	end
end

if (EVENT == 304) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 855);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 860);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 865);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 870);
	end
end

if (EVENT == 305) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 854);
		SelectMsg(UID, 2, savenum, 357, NPC, 14, 193);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 859);
		SelectMsg(UID, 2, savenum, 357, NPC, 14, 193);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 864);
		SelectMsg(UID, 2, savenum, 357, NPC, 14, 193);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 869);
		SelectMsg(UID, 2, savenum, 357, NPC, 14, 193);
	end
end

if (EVENT == 307) then
	MonsterCount1 = CountMonsterQuestSub(UID, 1026, 1);
	MonsterCount2 = CountMonsterQuestSub(UID, 1026, 1);
	if (MonsterCount1 < 1) then
		SelectMsg(UID, 2, savenum, 357, NPC, 18, 306);
	elseif (MonsterCount2 < 1) then
		SelectMsg(UID, 2, savenum, 357, NPC, 18, 309);
	else
		SelectMsg(UID, 4, savenum, 357, NPC, 41, 308, 27, 193);
	end
end

if (EVENT == 306) then
	ShowMap(UID, 165);
end

if (EVENT == 309) then
	ShowMap(UID, 163);
end

if (EVENT == 308) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 910120350, 1)
		GiveItem(UID, 910121300, 1)
		GiveItem(UID, 910126544, 1)
		SaveEvent(UID, 853);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		GiveItem(UID, 910119300, 1)
		GiveItem(UID, 910122350, 1)
		SaveEvent(UID, 858);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		GiveItem(UID, 910123355, 1)
		GiveItem(UID, 910124351, 1)
		SaveEvent(UID, 863);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		GiveItem(UID, 910125324, 1)
		GiveItem(UID, 910126544, 1)
		SaveEvent(UID, 868);
	end  
end