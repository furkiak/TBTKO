local Ret = 0;
local NPC = 16079;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 191, NPC, 10, 193);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 193,NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 193) then
	Ret = 1;
end

local savenum = 100;

if (EVENT == 105) then -- 2 Level Silk Bundle
	SaveEvent(UID, 6);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, savenum, 105, NPC, 28, 107);
	else
		SelectMsg(UID, 2, savenum, 111, NPC, 28, 107);
	end
end

if (EVENT == 110) then
	SelectMsg(UID, 2, savenum, 150, NPC, 29, 111);
end

if (EVENT == 111) then
	SelectMsg(UID, 4, savenum, 156, NPC, 22, 112, 23, 193);
end

if (EVENT == 112) then
	SaveEvent(UID, 7);
end

if (EVENT == 120) then
	SaveEvent(UID, 9);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, savenum, 131, NPC, 14, 193);
	else
		SelectMsg(UID, 2, savenum, 132, NPC, 14, 193);
	end
end

if (EVENT == 280) then 
	ItemA = HowmuchItem(UID, 379048000);  
	if (ItemA < 3) then 
		SelectMsg(UID, 2, savenum, 157, NPC, 18, 282);
	else
		SelectMsg(UID, 4, savenum, 158, NPC, 4006, 281, 27, 193);
	end
end

if (EVENT == 282) then
	ShowMap(UID, 1);
end

if (EVENT == 281) then 
	RobItem(UID, 379048000, 3)
	ExpChange(UID, 100)
	GoldGain(UID, 500)
	SaveEvent(UID, 8)
end


if (EVENT == 195) then -- 4 Level Teeth of Bandicoot
	SelectMsg(UID, 2, 102, 195, NPC, 28, 196);
end

if (EVENT == 196) then
	ShowMap(UID, 5);
	SaveEvent(UID, 56);
end

if (EVENT == 197) then
	SelectMsg(UID, 2, 102, 197, NPC, 29, 196);
end


if (EVENT == 200) then
	SelectMsg(UID, 2, 102, 200, NPC, 29, 201);
end

if (EVENT == 201) then
	SelectMsg(UID, 4, 102, 201, NPC, 22, 202, 23, 193);
end

if (EVENT == 202) then
	SaveEvent(UID, 57);
end

if (EVENT == 205) then
	SaveEvent(UID, 59);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 102, 206, NPC, 32, 189);
	else
		SelectMsg(UID, 2, 102, 207, NPC, 4080, 189);
	end
end

if (EVENT == 189) then
	ShowMap(UID, 5);
end

if (EVENT == 210) then
	ITEM_COUNT = HowmuchItem(UID, 379078000);
	if (ITEM_COUNT < 2) then
		SelectMsg(UID, 2, 102, 211, NPC, 18, 213);
	else
		SelectMsg(UID, 4, 102, 212, NPC, 4006, 214, 27, 193);
	end
end

if (EVENT == 213) then
	ShowMap(UID, 7);
end

if (EVENT == 214) then
	RobItem(UID, 379078000, 2)
	ExpChange(UID, 340)
	GoldGain(UID, 1500)
	SaveEvent(UID, 58)	 
end

if (EVENT == 300) then -- 6 Level Kekoon Gallbladder
	SelectMsg(UID, 2, 105, 292, NPC, 28, 301);
end

if (EVENT == 301) then
	ShowMap(UID, 5);
	SaveEvent(UID, 93);
end

if (EVENT == 302) then
	SelectMsg(UID, 2, 105, 293, NPC, 29, 301);
end

if (EVENT == 303) then
	SelectMsg(UID, 2, 105, 294, NPC, 29, 304);
end

if (EVENT == 304) then
	SelectMsg(UID, 4, 105, 295, NPC, 22, 305, 23, 193);
end

if (EVENT == 305) then
	SaveEvent(UID, 94);
end

if (EVENT == 306) then
	SaveEvent(UID, 96);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 105, 299, NPC, 32, 307);
	else
		SelectMsg(UID, 2, 105, 300, NPC, 4080, 307);
	end
end

if (EVENT == 307) then
	ShowMap(UID, 5);
end

if (EVENT == 308) then
	ITEM_COUNT = HowmuchItem(UID, 379251000);
	if (ITEM_COUNT < 5) then
		SelectMsg(UID, 2, 105, 298, NPC, 18, 309);
	else
		SelectMsg(UID, 4, 105, 301, NPC, 4006, 310, 27, 193);
	end
end

if (EVENT == 309) then
   ShowMap(UID, 11);
end

if (EVENT == 310) then
	RobItem(UID, 379251000, 5)
	GiveItem(UID, 389034000, 3)
	ExpChange(UID, 1400)
	GoldGain(UID, 3000)
	SaveEvent(UID, 95);
end

if (EVENT == 311) then -- 12 Level Gabolt Scales
	SelectMsg(UID, 2, 106, 302, NPC, 28, 312);
end

if (EVENT == 312) then
	ShowMap(UID, 5);
	SaveEvent(UID, 100);
end

if (EVENT == 313) then
	SelectMsg(UID, 2, 106, 303, NPC, 29, 312);
end

if (EVENT == 314) then
	SelectMsg(UID, 2, 106, 304, NPC, 29, 315);
end   

if (EVENT == 315) then
	SelectMsg(UID, 4, 106, 305, NPC, 22, 316, 23, 193);
end   

if (EVENT == 316) then
	SaveEvent(UID, 101);
end

if (EVENT == 317) then
	SaveEvent(UID, 103);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 106,311, NPC, 32, 318);
	else
		SelectMsg(UID, 2, 106, 312, NPC, 4080, 318);
	end
end

if (EVENT == 318) then
	ShowMap(UID, 5);
end

if (EVENT == 319) then
	ITEM_COUNT = HowmuchItem(UID, 379010000);
	if (ITEM_COUNT < 5) then
		SelectMsg(UID, 2, 106, 310, NPC, 18, 320);
	else
		SelectMsg(UID, 4, 106, 314, NPC, 4006, 321, 27, 193);
	end
end

if (EVENT == 320) then
	ShowMap(UID, 12);
end

if (EVENT == 321) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then 
		RobItem(UID, 379010000, 5) 
		ExpChange(UID, 3000) 
		GiveItem(UID, 379129000, 1)
		GiveItem(UID, 202002005, 1)
		SaveEvent(UID, 102);   
	elseif (Class == 2 or Class == 7 or Class == 8) then 
		RobItem(UID, 379010000, 5) 
		ExpChange(UID, 3000) 
		GiveItem(UID, 379129000, 1)
		GiveItem(UID, 242002005, 1)
		SaveEvent(UID, 102);
	elseif (Class == 3 or Class == 9 or Class == 10) then 
		RobItem(UID, 379010000, 5) 
		ExpChange(UID, 3000) 
		GiveItem(UID, 379129000, 1)
		GiveItem(UID, 262002005, 1)
		SaveEvent(UID, 102);
	elseif (Class == 4 or Class == 11 or Class == 12) then 
		RobItem(UID, 379010000, 5) 
		ExpChange(UID, 3000) 
		GiveItem(UID, 379129000, 1)
		GiveItem(UID, 282002005, 1)
		SaveEvent(UID, 102);
	end   
end

if (EVENT == 350) then -- 17 Level
	SelectMsg(UID, 2, 107, 316, NPC, 28, 351);
end   

if (EVENT == 351) then
	ShowMap(UID, 5);
	SaveEvent(UID, 740);
end

if (EVENT == 352) then
	SelectMsg(UID, 2, 107, 318, NPC, 29, 353);
end   

if (EVENT == 353) then
	SelectMsg(UID, 4, 107, 319, NPC, 22, 354, 23, 193);
end   

if (EVENT == 354) then
	SaveEvent(UID, 741);
end

if (EVENT == 357) then
	SaveEvent(UID, 743);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 107, 320, NPC, 32, 359);
	else
		SelectMsg(UID, 2, 107, 321, NPC, 4080, 359);
	end
end

if (EVENT == 359) then
	ShowMap(UID, 5);
end

if (EVENT == 358) then
	ITEM_COUNT = HowmuchItem(UID, 910020000);
	if (ITEM_COUNT < 5) then
		SelectMsg(UID, 2, 107, 320, NPC, 4080, 355);
	else
		SelectMsg(UID, 4, 107, 321, NPC, 4080, 360, 27, 193);
	end
end

if (EVENT == 355) then
	ShowMap(UID, 629);
end

if (EVENT == 360) then
	RobItem(UID, 910020000, 5)
	GiveItem(UID, 379229000, 3)
	SaveEvent(UID, 742);
end

local savenum = 2500;

if (EVENT == 1000) then -- 20 Level Voucher of Chaos 1
	SelectMsg(UID, 2, savenum, 9350, NPC, 28, 1001);
end

if (EVENT == 1001) then
	SaveEvent(UID, 1861);
end

if (EVENT == 1002) then
	SelectMsg(UID, 2, savenum, 9350, NPC, 29, 1003);
end

if (EVENT == 1003) then
	SelectMsg(UID, 4, savenum, 9350, NPC, 22, 1004, 23, 193);
end

if (EVENT == 1004) then
	SaveEvent(UID, 1862);
end

if (EVENT == 1006) then
	SaveEvent(UID, 1864);
	SelectMsg(UID, 2, savenum, 9350, NPC, 10, 193);
end

if (EVENT == 1005) then
	ITEM_COUNT = HowmuchItem(UID, 900106000);
	if (ITEM_COUNT < 1) then
		SelectMsg(UID, 2, savenum, 9350, NPC, 18, 1007);
	else
		SelectMsg(UID, 4, savenum, 9350, NPC, 41, 1008, 27, 193);
	end
end

if (EVENT == 1007) then
	ShowMap(UID, 338);
end

if (EVENT == 1008) then
	RobItem(UID, 900106000, 1)
	ExpChange(UID, 30000)
	GoldGain(UID, 100000)
	SaveEvent(UID, 1863);
end

local savenum = 2501;

if (EVENT == 1100) then -- 40 Level Voucher of Chaos 2
	SelectMsg(UID, 2, savenum, 9351, NPC, 28, 1101);
end

if (EVENT == 1101) then
	SaveEvent(UID, 1867);
end

if (EVENT == 1102) then
	SelectMsg(UID, 2, savenum, 9351, NPC, 29, 1103);
end

if (EVENT == 1103) then
	SelectMsg(UID, 4, savenum, 9351, NPC, 22, 1104, 23, 193);
end

if (EVENT == 1104) then
	SaveEvent(UID, 1868);
end

if (EVENT == 1106) then
	SaveEvent(UID, 1870);
	SelectMsg(UID, 2, savenum, 9351, NPC, 10, 193);
end

if (EVENT == 1105) then
	ITEM_COUNT = HowmuchItem(UID, 900106000);
	if (ITEM_COUNT < 2) then
		SelectMsg(UID, 2, savenum, 9351, NPC, 18, 1107);
	else
		SelectMsg(UID, 4, savenum, 9351, NPC, 41, 1108, 27, 193);
	end
end

if (EVENT == 1107) then
	ShowMap(UID, 338);
end

if (EVENT == 1108) then
	RobItem(UID, 900106000, 2)
	ExpChange(UID, 800000)
	GiveLoyalty(UID, 50)
	SaveEvent(UID, 1869);
end

local savenum = 2502;

if (EVENT == 1200) then -- 60 Level Voucher of Chaos 3
	SelectMsg(UID, 2, savenum, 9352, NPC, 28, 1201);
end

if (EVENT == 1201) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 1873);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 1878);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 1883);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 1888);
	end
end

if (EVENT == 1202) then
	SelectMsg(UID, 2, savenum, 9352, NPC, 29, 1203);
end

if (EVENT == 1203) then
	SelectMsg(UID, 4, savenum, 9352, NPC, 22, 1204, 23, 193);
end

if (EVENT == 1204) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 1874);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 1879);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 1884);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 1889);
	end
end

if (EVENT == 1206) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 1876);
		SelectMsg(UID, 2, savenum, 9352, NPC, 10, 193);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 1881);
		SelectMsg(UID, 2, savenum, 9352, NPC, 10, 193);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 1886);
		SelectMsg(UID, 2, savenum, 9352, NPC, 10, 193);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 1891);
		SelectMsg(UID, 2, savenum, 9352, NPC, 10, 193);
	end
end

if (EVENT == 1205) then
	ITEM_COUNT = HowmuchItem(UID, 900106000);
	if (ITEM_COUNT < 10) then
		SelectMsg(UID, 2, savenum, 9352, NPC, 18, 1207);
	else
		SelectMsg(UID, 4, savenum, 9352, NPC, 41, 1208, 27, 193);
	end
end

if (EVENT == 1207) then
	ShowMap(UID, 338);
end

if (EVENT == 1208) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		RobItem(UID, 900106000, 10)
		ExpChange(UID, 3000000)
		GiveLoyalty(UID, 100)
		GiveItem(UID, 310530800, 1)
		GiveItem(UID, 330450816, 1)
		GiveItem(UID, 320630800, 1)
		GiveItem(UID, 340520792, 1)
		SaveEvent(UID, 1875);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		RobItem(UID, 900106000, 10)
		ExpChange(UID, 3000000)
		GiveLoyalty(UID, 100)
		GiveItem(UID, 330650807, 1)
		GiveItem(UID, 310650796, 1)
		GiveItem(UID, 320550798, 1)
		GiveItem(UID, 340640795, 1)
		SaveEvent(UID, 1880);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		RobItem(UID, 900106000, 10)
		ExpChange(UID, 3000000)
		GiveLoyalty(UID, 100)
		GiveItem(UID, 340630794, 1)
		GiveItem(UID, 330140811, 1)
		GiveItem(UID, 320640804, 1)
		GiveItem(UID, 310520794, 1)
		SaveEvent(UID, 1885);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		RobItem(UID, 900106000, 10)
		ExpChange(UID, 3000000)
		GiveLoyalty(UID, 100)
		GiveItem(UID, 310120793, 1)
		GiveItem(UID, 340530793, 1)
		GiveItem(UID, 320370801, 1)
		GiveItem(UID, 330440808, 1)
		SaveEvent(UID, 1890);
	end
end

local savenum = 2503;

if (EVENT == 1300) then -- 70 Level Voucher of Chaos 4
	SelectMsg(UID, 2, savenum, 9353, NPC, 28, 1301);
end

if (EVENT == 1301) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 1894);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 1899);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 1904);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 1909);
	end
end

if (EVENT == 1302) then
	SelectMsg(UID, 2, savenum, 9353, NPC, 29, 1303);
end

if (EVENT == 1303) then
	SelectMsg(UID, 4, savenum, 9353, NPC, 22, 1304, 23, 193);
end

if (EVENT == 1304) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 1895);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 1900);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 1905);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 1910);
	end
end

if (EVENT == 1306) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 1897);
		SelectMsg(UID, 2, savenum, 9353, NPC, 10, 193);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 1902);
		SelectMsg(UID, 2, savenum, 9353, NPC, 10, 193);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 1907);
		SelectMsg(UID, 2, savenum, 9353, NPC, 10, 193);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 1912);
		SelectMsg(UID, 2, savenum, 9353, NPC, 10, 193);
	end
end

if (EVENT == 1305) then
	ITEM_COUNT = HowmuchItem(UID, 900106000);
	if (ITEM_COUNT < 20) then
		SelectMsg(UID, 2, savenum, 9353, NPC, 18, 1307);
	else
		SelectMsg(UID, 4, savenum, 9353, NPC, 41, 1308, 27, 193);
	end
end

if (EVENT == 1307) then
	ShowMap(UID, 338);
end

if (EVENT == 1308) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		RobItem(UID, 900106000, 20)
		ExpChange(UID, 10000000)
		GiveLoyalty(UID, 150)
		GiveItem(UID, 156210005, 1)
		SaveEvent(UID, 1896);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		RobItem(UID, 900106000, 20)
		ExpChange(UID, 10000000)
		GiveLoyalty(UID, 150)
		GiveItem(UID, 111210005, 1)
		GiveItem(UID, 168410005, 1)
		SaveEvent(UID, 1901);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		RobItem(UID, 900106000, 20)
		ExpChange(UID, 10000000)
		GiveLoyalty(UID, 150)
		GiveItem(UID, 181110005, 1)
		SaveEvent(UID, 1906);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		RobItem(UID, 900106000, 20)
		ExpChange(UID, 10000000)
		GiveLoyalty(UID, 150)
		GiveItem(UID, 170210275, 1)
		GiveItem(UID, 191112005, 1)
		SaveEvent(UID, 1916);
	end
end