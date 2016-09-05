local Ret = 0;
local NPC = 14301;

if (EVENT == 240) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 241, NPC, 10, 241);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 242, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 241) then
	Ret = 1;
end

local savenum01 = 401;
local NATION = 0;

if (EVENT == 4009) then -- 9 Level Dagger +2
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, savenum01, 4018, NPC, 28, 4008);
	else
		SelectMsg(UID, 2, savenum01, 4019, NPC, 14, 4008);
	end
end

if (EVENT == 4008) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ShowMap(UID, 8);
		SaveEvent(UID, 660);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ShowMap(UID, 8);
		SaveEvent(UID, 665);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ShowMap(UID, 8);
		SaveEvent(UID, 670);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ShowMap(UID, 8);
		SaveEvent(UID, 675);
	end
end

if (EVENT == 4011) then
	SelectMsg(UID, 2, savenum01, 4020, NPC, 10, 4012);
end   

if (EVENT == 4012) then
	SelectMsg(UID, 4, savenum01, 4022, NPC, 22, 4013, 23, 4014);
end   

if (EVENT == 4013) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 661);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 666);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 671);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 676);
	end
end

if (EVENT == 4014) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 664);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 669);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 674);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 679);
	end
end
 
local NATION = 0;

if (EVENT == 4016) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 663);
		EVENT = 4017
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 668);
		EVENT = 4017
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 673);
		EVENT = 4017
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 678);
		EVENT = 4017
	end
end

if (EVENT == 4017) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, savenum01, 4026, NPC, 14, 241);
	else
		SelectMsg(UID, 2, savenum01, 4027, NPC, 14, 241);
	end
end

if (EVENT == 4020) then 
	ItemA = HowmuchItem(UID, 110110002);  
	if (ItemA < 1) then
		SelectMsg(UID, 2, savenum01, 4025, NPC, 18, 4021);
	else
		SelectMsg(UID, 4, savenum01, 4028, NPC, 22, 4025, 23, 4014);
	end
end

if (EVENT == 4021) then
	ShowMap(UID, 349);
end

if (EVENT == 4025) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		RobItem(UID, 110110002, 1)
		GiveItem(UID, 971770453, 1)
		SaveEvent(UID, 662);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		RobItem(UID, 110110002, 1)
		GiveItem(UID, 971760917, 1)
		GiveItem(UID, 971730490, 1)
		SaveEvent(UID, 667);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		RobItem(UID, 110110002, 1)
		GiveItem(UID, 971740362, 1)
		GiveItem(UID, 971740370, 1)
		GiveItem(UID, 971740378, 1)
		SaveEvent(UID, 672);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		RobItem(UID, 110110002, 1)
		GiveItem(UID, 971750759, 1)
		SaveEvent(UID, 677);
	end
end

local NATION = 0;

if (EVENT == 301) then -- 11 Level Kekoon Armor
	SaveEvent(UID, 360);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 127, 593, NPC, 28, 300);
	else
		SelectMsg(UID, 2, 127, 594, NPC, 14, 300);
	end
end

if (EVENT == 300) then
	ShowMap(UID, 8);
end

if (EVENT == 302) then
	SelectMsg(UID, 2, 127, 595, NPC, 10, 303);
end

if (EVENT == 303) then
	SelectMsg(UID, 4, 127, 596, NPC, 22, 304, 23, 241);
end   

if (EVENT == 304) then
	SaveEvent(UID, 361);
end

if (EVENT == 306) then
	SaveEvent(UID, 363);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 127, 597, NPC, 14, 241);
	else
		SelectMsg(UID, 2, 127, 598, NPC, 14, 241);
	end
end

if (EVENT == 308) then 
	ItemB = HowmuchItem(UID, 910118000);  
	if (ItemB < 5) then
		SelectMsg(UID, 2, 127, 600, NPC, 18, 310);
	else
		SelectMsg(UID, 4, 127, 601, NPC, 41, 309, 23, 241);
	end
end

if (EVENT == 310) then
	ShowMap(UID, 326);
end

if (EVENT == 309) then
	RobItem(UID, 910118000, 5)
	ExpChange(UID, 2500)
	GoldGain(UID, 10000) 
	SaveEvent(UID, 362);   
end

if (EVENT == 313) then -- 16 Level Bulture Horn & Iron Bar
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 128, 603, NPC, 28, 314);
	else
		SelectMsg(UID, 2, 128, 604, NPC, 14, 314);
	end
end

if (EVENT == 314) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ShowMap(UID, 8);
		SaveEvent(UID, 382);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ShowMap(UID, 8);
		SaveEvent(UID, 387);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ShowMap(UID, 8);
		SaveEvent(UID, 392);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ShowMap(UID, 8);
		SaveEvent(UID, 397);
	end
end

if (EVENT == 315) then
	SelectMsg(UID, 2, 128, 605, NPC, 10, 316);
end   

if (EVENT == 316) then
	SelectMsg(UID, 4, 128, 606, NPC, 22, 317, 23, 318);
end   

if (EVENT == 317) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 383);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 388);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 393);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 398);
	end
end

if (EVENT == 318) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 386);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 391);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 396);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 401);
	end
end

if (EVENT == 319) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 385);
		EVENT = 320
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 390);
		EVENT = 320
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 395);
		EVENT = 320
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 400);
		EVENT = 320
	end
end

if (EVENT == 320) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 128, 607, NPC, 14, 241);
	else
		SelectMsg(UID, 2, 128, 608, NPC, 14, 241);
	end
end

if (EVENT == 321) then 
	ItemA = HowmuchItem(UID, 910017000);  
	ItemB = HowmuchItem(UID, 379076000);  
	ItemC = HowmuchItem(UID, 900000000);  
	if (ItemA < 3) then
		SelectMsg(UID, 2, 128, 609, NPC, 18, 323);
	end
	if (ItemB < 3) then
		SelectMsg(UID, 2, 128, 610, NPC, 18, 324);
	end
	if (ItemC < 1000) then
		SelectMsg(UID, 2, 128, 611, NPC, 18, 325);
	end
	if (ItemA > 2 and ItemB > 2 and ItemC > 999) then
		SelectMsg(UID, 4, 128, 612, NPC, 22, 322, 23, 241);
	end
end

if (EVENT == 323) then
	ShowMap(UID, 38);
end

if (EVENT == 324) then
	ShowMap(UID, 34);
end

if (EVENT == 325) then
	ShowMap(UID, 336);
end

if (EVENT == 322) then
	Class = CheckClass (UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		RobItem(UID, 910017000, 3)
		RobItem(UID, 379076000, 3)
		GoldLose(UID, 1000)
		GiveItem(UID, 971810435, 1)
		SaveEvent(UID, 384);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		RobItem(UID, 910017000, 3)
		RobItem(UID, 379076000, 3)
		GoldLose(UID, 1000)
		GiveItem(UID, 971780489, 1)
		GiveItem(UID, 971820918, 1)
		SaveEvent(UID, 389);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		RobItem(UID, 910017000, 3)
		RobItem(UID, 379076000, 3)
		GoldLose(UID, 1000)
		GiveItem(UID, 971790363, 1)
		GiveItem(UID, 971790371, 1)
		GiveItem(UID, 971790379, 1)
		SaveEvent(UID, 394);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		RobItem(UID, 910017000, 3)
		RobItem(UID, 379076000, 3)
		GoldLose(UID, 1000)
		GiveItem(UID, 971800760, 1)
		GiveItem(UID, 971830444, 1)
		SaveEvent(UID, 399);
	end
end

if (EVENT == 470) then -- 17 Level Silan Bone
	SaveEvent(UID, 654);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 1, 147, 1300, NPC, 56, 241);
	else
		SelectMsg(UID, 1, 147, 1301, NPC, 57, 241);
	end
end

if (EVENT == 471) then
	SelectMsg(UID, 2, 147, 1302, NPC, 6002, 472);
end   

if (EVENT == 472) then
	SelectMsg(UID, 4, 147, 1303, NPC, 22, 473, 23, 241);
end   

if (EVENT == 473) then
	SaveEvent(UID, 655);
end

if (EVENT == 483) then
	SaveEvent(UID, 657);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, savenum, 1305, NPC, 14, 241);
	else
		SelectMsg(UID, 2, savenum, 1306, NPC, 14, 241);
	end
end

if (EVENT == 474) then 
	ItemA = HowmuchItem(UID, 379077000);  
	if (ItemA < 3) then
		SelectMsg(UID, 2, 147, 1304, NPC, 18, 475);
	else
		SelectMsg(UID, 4, 147, 1307, NPC, 50, 478, 23, 241);
	end
end

if (EVENT == 475) then
	ShowMap(UID, 60);
end
   
if (EVENT == 478) then
	RobItem(UID, 379077000, 3)
	ExpChange(UID, 8000)
	GoldGain(UID, 100000)
	SaveEvent(UID, 656);	 
end

local NATION = 0;

if (EVENT == 327) then -- 18 Level Fang of Wolf Man
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 129, 614, NPC, 28, 328);
	else
		SelectMsg(UID, 2, 129, 615, NPC, 14, 328);
	end
end

if (EVENT == 328) then
	ShowMap(UID, 8);
	SaveEvent(UID, 404);
end

if (EVENT == 329) then
	SelectMsg(UID, 2, 129, 616, NPC, 10, 330);
end   

if (EVENT == 330) then
	SelectMsg(UID, 4, 129, 617, NPC, 22, 331, 23, 332);
end   

if (EVENT == 331) then
	SaveEvent(UID, 405);
end

if (EVENT == 332) then
	SaveEvent(UID, 408);
end

if (EVENT == 333) then
	SaveEvent(UID, 407);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 129, 618, NPC, 32, 241);
	else
		SelectMsg(UID, 2, 129, 619, NPC, 21, 241);
	end
end

if (EVENT == 335) then
	ITEM_COUNT = HowmuchItem(UID, 910020000);
	if (ITEM_COUNT < 9) then
		SelectMsg(UID, 2, 129, 620, NPC, 18, 336);
	else
		SelectMsg(UID, 4, 129, 621, NPC, 41, 337, 27, 241);
	end
end

if (EVENT == 336) then
	ShowMap(UID, 523);
end

if (EVENT == 337) then
	RobItem(UID, 910020000, 10)	 
	ExpChange(UID, 10000)
	SaveEvent(UID, 406);
end