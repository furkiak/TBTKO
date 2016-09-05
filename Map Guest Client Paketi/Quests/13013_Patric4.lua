local UserClass;
local QuestNum;
local NPC = 13013;
local Ret = 0;

if EVENT == 165 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then
			SelectMsg(UID, 2, -1, 166, 13013, 10, 168);
			Ret = 1;
		elseif QuestNum > 1 and QuestNum < 100 then
			NpcMsg(UID, 167,NPC)
		else
			EVENT = QuestNum
		end
end

if EVENT == 168 then
    Ret = 1;
end

local NATION = 0;

if EVENT == 170 then -- 1 Level Hunt Worm
      SelectMsg(UID, 1, 101, 170, 13013, 24, 171);
end

if EVENT == 171 then
   ShowMap(UID, 4);
   SaveEvent(UID, 48);
end

if EVENT == 172 then
   SelectMsg(UID, 1, 101, 172, 13013, 24, 171);
end

if EVENT == 175 then
   SelectMsg(UID, 2, 101, 175, 13013,  25, 176, 13, -1);
end

local MonsterSub = 0;

if EVENT == 176 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 101, 176, 13013, 22, 178, 23, 168);
	else
 		SelectMsg(UID, 2, 101, 173, 13013, 10, 168);
   end
end

if EVENT == 178 then
   SaveEvent(UID, 49);
end

if EVENT == 180 then
   SaveEvent(UID, 51);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 101, 181, 13013, 14, 168);
   elseif NATION == 2 then
      SelectMsg(UID, 1, 101, 182, 13013, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 185 then
   MonsterCount  = CountMonsterQuestSub(UID, 101, 1);
   if  MonsterCount < 5 then
      SelectMsg(UID, 2, 101, 186, 13013, 10, 188);
   else
      SelectMsg(UID, 4, 101, 187, 13013, 10, 177, 27, 168);
   end
end

if EVENT == 188 then
   ShowMap(UID, 1);
end

local Check;

if EVENT == 177 then
  Check = CheckExchange(UID, 5)
   if  Check == true then
   RunExchange(UID, 5);
   SaveEvent(UID, 50);
   else
  Ret = 1;	
  end	 
end

if EVENT == 220 then -- 3 Level Hunt Bandicoot
	SelectMsg(UID, 1, 103, 220, 13013, 24, 221, 14, 222);
end

if EVENT == 221 then
	ShowMap(UID, 4);
	SaveEvent(UID, 63);
end

if EVENT == 222 then
	SaveEvent(UID, 63);
end

if EVENT == 223 then
	SelectMsg(UID, 1, 103, 223, 13013, 24, 221, 14, 222);
end

if EVENT == 225 then
	SelectMsg(UID, 2, 103, 225, 13013,  33, 226);
end

local MonsterSub = 0;

if EVENT == 226 then
	MonsterSub = ExistMonsterQuestSub(UID);
	if MonsterSub == 0 then
		SelectMsg(UID, 4, 103, 228, 13013, 22, 229, 23, 168);
	else
		SelectMsg(UID, 2, 103, 173, 13013, 10, 168);
	end
end

if EVENT == 229 then
	SaveEvent(UID, 64);
end

if EVENT == 231 then
	SaveEvent(UID, 66);
	NATION = CheckNation(UID);
	if NATION == 1 then
		SelectMsg(UID, 1, 103, 232, 13013, 14, 168);
	elseif NATION == 2 then
		SelectMsg(UID, 1, 103, 233, 13013, 14, 168);
	end
end

local MonsterCount = 0;

if EVENT == 235 then
	MonsterCount = CountMonsterQuestSub(UID, 103, 1);
	if (MonsterCount < 5) then
		SelectMsg(UID, 2, 103, 237, 13013, 18, 239);
	else
		SelectMsg(UID, 4, 103, 236, 13013, 10, 238, 27, 168);
	end
end

if EVENT == 239 then
	ShowMap(UID, 7);
end

local Check;

if EVENT == 238 then
  Check = CheckExchange(UID, 7)
   if  Check == true then
   RunExchange(UID, 7);
   SaveEvent(UID, 65);
   else
  Ret = 1;	
  end	 
end

if EVENT == 370 then -- 6 Level Hunt Kekoon
	SelectMsg(UID, 1, 320, 3150, 13013, 24, 371);
end

if EVENT == 371 then
	ShowMap(UID, 4);
	SaveEvent(UID, 3322);
end

if EVENT == 372 then
	SelectMsg(UID, 1, 320, 3151, 13013, 24, 371);
end

if EVENT == 300 then
	SelectMsg(UID, 2, 320, 3152, 13013,  3012, 301, 13, 168);
end

local MonsterSub = 0;

if EVENT == 301 then
	MonsterSub = ExistMonsterQuestSub(UID);
	if MonsterSub == 0 then
		SelectMsg(UID, 4, 320, 3153, 13013, 22, 302, 23, 308);
	else
		SelectMsg(UID, 2, 320, 173, 13013, 10, 168);
	end
end

if EVENT == 302 then
	SaveEvent(UID, 3323);
	SelectMsg(UID, 2, 320, 3154, 13013, 10, 168);
end

if EVENT == 303 then
	SaveEvent(UID, 3325);
	NATION = CheckNation(UID);
	if NATION == 1 then
		SelectMsg(UID, 1, 320, 3157, 13013, 14, 168);
	elseif NATION == 2 then
		SelectMsg(UID, 1, 320, 3158, 13013, 14, 168);
	end
end

local MonsterCount = 0;

if EVENT == 305 then
	MonsterCount = CountMonsterQuestSub(UID, 320, 1);
	if MonsterCount < 5 then
		SelectMsg(UID, 2, 320, 3156, 13013, 10, 306);
	else
		SelectMsg(UID, 5, 320, 3159, 13013, 10, 307, 27, 306);
	end
end

if EVENT == 306 then
	ShowMap(UID, 11);
end

local Check;

if EVENT == 307 then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 750) 
		GiveItem(UID, 330150005, 1)
		SaveEvent(UID, 3324);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 750)
		GiveItem(UID, 330150025, 1)
		SaveEvent(UID, 3324);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 750)
		GiveItem(UID, 330150015, 1)
		GiveItem(UID, 330150075, 1)
		SaveEvent(UID, 3324);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 750) 
		GiveItem(UID, 330150035, 1)
		GiveItem(UID, 330150015, 1)
		SaveEvent(UID, 3324);
	end
end

if EVENT == 308 then
	SelectMsg(UID, 2, 320, 3155, 13013, 10, 168);
end

if (EVENT == 470) then -- 8 Level Hunt Bulcan
	SelectMsg(UID, 2, 321, 170, NPC, 24, 471);
end

if (EVENT == 471) then
	ShowMap(UID, 4);
	SaveEvent(UID, 3332);
end

if (EVENT == 472) then
	SelectMsg(UID, 2, 321, 172, NPC, 24, 471);
end

if (EVENT == 400) then
	SelectMsg(UID, 2, 321, 3160, NPC,  3012, 401, 13, 168);
end

if (EVENT == 401) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 321, 3161, NPC, 22, 402, 23, 408);
	else
		SelectMsg(UID, 2, 321, 173, NPC, 10, 168);
	end
end

if (EVENT == 408) then
	SelectMsg(UID, 2, 320, 3163, NPC, 10, 168);
end

if (EVENT == 402) then
	SaveEvent(UID, 3333);
	SelectMsg(UID, 2, 320, 3162, NPC, 10, 168);
end

if (EVENT == 403) then
	SaveEvent(UID, 3335);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 1, 321, 3165, NPC, 14, 168);
	else
		SelectMsg(UID, 1, 321, 3166, NPC, 14, 168);
	end
end

if (EVENT == 405) then
	MonsterCount = CountMonsterQuestSub(UID, 321, 1);
	if (MonsterCount < 5) then
		SelectMsg(UID, 2, 321, 3164, NPC, 10, 406);
	else
		SelectMsg(UID, 5, 321, 3167, NPC, 10, 409, 27, 406);
	end
end

if (EVENT == 406) then
	ShowMap(UID, 34);
end


if (EVENT == 409) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 1400) 
		GiveItem(UID, 202004005, 1)
		SaveEvent(UID, 3334);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 1400) 
		GiveItem(UID, 242004005, 1)
		SaveEvent(UID, 3334);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 1400) 
		GiveItem(UID, 262004005, 1)
		SaveEvent(UID, 3334);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 1400) 
		GiveItem(UID, 282004005, 1)
		SaveEvent(UID, 3334);
	end
end

if (EVENT == 570) then -- 9 Level Hunt Wild Bulcan
	SelectMsg(UID, 2, 322, 170, NPC, 24, 571);
end

if (EVENT == 571) then
	ShowMap(UID, 4);
	SaveEvent(UID, 3342);
end

if (EVENT == 572) then
	SelectMsg(UID, 2, 322, 172, NPC, 24, 571);
end

if (EVENT == 500) then
	SelectMsg(UID, 2, 322, 3168, NPC,  3012, 501, 13, 168);
end

if (EVENT == 501) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 322, 3169, NPC, 22, 502, 23, 508);
	else
		SelectMsg(UID, 2, 322, 173, NPC, 10, 168);
	end
end

if (EVENT == 508) then
	SelectMsg(UID, 2, 320, 3171, NPC, 10, 168);
end

if (EVENT == 502) then
	SelectMsg(UID, 2, 320, 3170, NPC, 10, 168);
	SaveEvent(UID, 3343);
end

if (EVENT == 503) then
	SaveEvent(UID, 3345);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 322, 3173, NPC, 14, 168);
	else
		SelectMsg(UID, 2, 322, 3174, NPC, 14, 168);
	end
end

if (EVENT == 505) then
	MonsterCount = CountMonsterQuestSub(UID, 322, 1);
	if (MonsterCount < 5) then
		SelectMsg(UID, 2, 322, 3172, NPC, 10, 506);
	else
		SelectMsg(UID, 5, 322, 3175, NPC, 10, 509, 27, 506);
	end
end

if (EVENT == 506) then
	ShowMap(UID, 325);
end

if (EVENT == 509) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 1800) 
		GiveItem(UID, 202005005, 1)
		SaveEvent(UID, 3344);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 1800) 
		GiveItem(UID, 242005005, 1)
		SaveEvent(UID, 3344);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 1800) 
		GiveItem(UID, 262005005, 1)
		SaveEvent(UID, 3344);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 1800) 
		GiveItem(UID, 282005005, 1)
		SaveEvent(UID, 3344);
	end
end

if EVENT == 670 then -- 10 Level Hunt Kekoon Warrior
	SelectMsg(UID, 2, 323, 3176, 13013, 3013, 671);
end

if EVENT == 3000 then
   SelectMsg(UID, 1, 323, 3178, 13013, 3014, 3003);
end

local MonsterSub = 0;

if EVENT == 3003 then
	MonsterSub = ExistMonsterQuestSub(UID);
	if MonsterSub == 0 then
	SelectMsg(UID, 1, 323, 3180, 13013, 22, 671, 23,3005);
	else
	SelectMsg(UID, 1, 323, 3191, 13013, 10, 168);
	end
end

if EVENT == 671 then
	SaveEvent(UID, 3352);
	SelectMsg(UID, 2, 323, 3182, NPC, 10, 168);
end

if EVENT == 672 then
	SelectMsg(UID, 2, 323, 3177, NPC, 24, 671);
end

if EVENT == 3002 then
	SelectMsg(UID, 1, 323, 3179, 13013, 3014, 3004);
end

local MonsterSub = 0;

if EVENT == 3004 then
	MonsterSub = ExistMonsterQuestSub(UID);
	if MonsterSub == 0 then
	SelectMsg(UID, 1, 323, 3181, 13013, 22, 3007, 23,3006);
	else
	SelectMsg(UID, 1, 323, 3192, 13013, 10, 168);
   end
end

if EVENT == 3007 then
	SaveEvent(UID, 3353);
	SelectMsg(UID, 1, 323, 3183, 13013, 10, 168);
end

if EVENT == 3005 then
	SelectMsg(UID, 1, 323, 3184, 13013, 10, 168);
end

if EVENT == 3006 then
	SelectMsg(UID, 1, 323, 3185, 13013, 10, 168);
end

if EVENT == 600 then
	SelectMsg(UID, 2, 323, 3193, 13013,  3017, 601);
end

local MonsterSub = 0;

if EVENT == 601 then
	MonsterSub = ExistMonsterQuestSub(UID);
	if MonsterSub == 0 then
		SelectMsg(UID, 4, 323, 3195, 13013, 3018, 602, 3019, 608);
	else
		SelectMsg(UID, 2, 323, 3197, 13013, 3001, 168);
	end
end

if EVENT == 602 then
	SelectMsg(UID, 2, 320, 3193, 13013, 10, 168);
	SaveEvent(UID, 3353);
end

if EVENT == 603 then
	SaveEvent(UID, 3355);
	NATION = CheckNation(UID);
	if NATION == 1 then
		SelectMsg(UID, 2, 323, 3187, 13013, 14, 168);
	elseif NATION == 2 then
		SelectMsg(UID, 2, 323, 3188, 13013, 14, 168);
	end
end

local MonsterCount = 0;

if EVENT == 605 then
	MonsterCount = CountMonsterQuestSub(UID, 323, 1);
	if MonsterCount < 10 then
		SelectMsg(UID, 2, 323, 3197, 13013, 10, 606);
	else
		SelectMsg(UID, 5, 323, 3189, 13013, 10, 607, 27, 168);
	end
end

if EVENT == 606 then
	ShowMap(UID, 326);
end

local Check;

if EVENT == 607 then
	Class = CheckClass(UID);
	if Class == 1 or Class == 5 or Class == 6 then
		ExpChange(UID, 2500) 
		GiveItem(UID, 310150005, 1)
		SaveEvent(UID, 3354);
	elseif Class == 2 or Class == 7 or Class == 8 then
		ExpChange(UID, 2500)
		GiveItem(UID, 310150025, 1)
		SaveEvent(UID, 3354);
	elseif Class == 3 or Class == 9 or Class == 10 then
		ExpChange(UID, 2500) 
		GiveItem(UID, 310150015, 1)
		GiveItem(UID, 310150075, 1)
		SaveEvent(UID, 3354);
	elseif Class == 4 or Class == 11 or Class == 12 then
		ExpChange(UID, 2500) 
		GiveItem(UID, 310150035, 1)
		GiveItem(UID, 310150015, 1)
		SaveEvent(UID, 3354);
	SelectMsg(UID, 2, 323, 3190, 13013, 10, 168); 
	end
end

if EVENT == 608 then
	SelectMsg(UID, 2, 320, 3197, 13013, 10, 168);
end

if (EVENT == 770) then -- 11 Level Hunt Gavolt
	SelectMsg(UID, 2, 324, 3798, NPC, 10, 771);
end

if (EVENT == 771) then
	ShowMap(UID, 4);
	SaveEvent(UID, 3362);
end

if (EVENT == 772) then
	SelectMsg(UID, 2, 324, 3799, NPC, 10, 771);
end

if (EVENT == 700) then
	SelectMsg(UID, 2, 324, 3800, NPC,  3012, 701, 13, 168);
end

if (EVENT == 701) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 324, 3801, NPC, 22, 702, 23, 708);
	else
		SelectMsg(UID, 2, 324, 173, NPC, 10, 168);
	end
end

if (EVENT == 708) then
	SelectMsg(UID, 2, 320, 3803, NPC, 10, 168);
end

if (EVENT == 702) then
	SelectMsg(UID, 2, 320, 3802, NPC, 10, 168);
	SaveEvent(UID, 3363);
end

if (EVENT == 703) then
	SaveEvent(UID, 3365);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 324, 3805, NPC, 14, 168);
	else
		SelectMsg(UID, 2, 324, 3806, NPC, 14, 168);
	end
end

if (EVENT == 705) then
	MonsterCount = CountMonsterQuestSub(UID, 324, 1);
	if (MonsterCount < 5) then
		SelectMsg(UID, 2, 324, 3804, NPC, 10, 706);
	else
		SelectMsg(UID, 5, 324, 3807, NPC, 10, 709, 27, 706);
	end
end

if (EVENT == 706) then
	ShowMap(UID, 12);
end

if (EVENT == 709) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 2500) 
		GiveItem(UID, 202003005, 1)
		SaveEvent(UID, 3364);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 2500) 
		GiveItem(UID, 242003005, 1)
		SaveEvent(UID, 3364);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 2500) 
		GiveItem(UID, 262003005, 1)
		SaveEvent(UID, 3364);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 2500) 
		GiveItem(UID, 282003005, 1)
		SaveEvent(UID, 3364);
	end
end

if EVENT == 9200 then -- 13 Level Hunt Kekoon Captain
	SelectMsg(UID, 2, 886, 175, NPC, 10, 9201);
end

if EVENT == 9201 then
	SaveEvent(UID, 5274);
end

if EVENT == 9202 then
	SelectMsg(UID, 2, 886, 175, NPC, 10, 9201);
end

if (EVENT == 9205) then
	SelectMsg(UID, 2, 886, 175, NPC,  25, 9206, 13, 168);
end

local MonsterSub = 0;

if EVENT == 9206 then
	MonsterSub = ExistMonsterQuestSub(UID);
	if MonsterSub == 0 then
		SelectMsg(UID, 4, 886, 8667, NPC, 22, 9207, 23, 168);
	else
		SelectMsg(UID, 2, 886, 8667, NPC, 10, 168);
	end
end

if EVENT == 9207 then
	SaveEvent(UID, 5275);
end

if EVENT == 9215 then
	MonsterCount = CountMonsterQuestSub(UID, 32001);
	if MonsterCount < 10 then
		SelectMsg(UID, 2, 886, 8667, NPC, 10, 9216);
	else
		SelectMsg(UID, 5, 886, 8667, NPC, 10, 9217, 27, 168);
	end
end

if EVENT == 9216 then
	ShowMap(UID, 54);
end

if EVENT == 9217 then
	Class = CheckClass(UID);
	if Class == 1 or Class == 5 or Class == 6 then
		ExpChange(UID, 4500)
		GoldGain(UID, 50000) 
		GiveItem(UID, 310150005, 1)
		SaveEvent(UID, 5276);
	elseif Class == 2 or Class == 7 or Class == 8 then
		ExpChange(UID, 4500)
		GoldGain(UID, 50000)
		GiveItem(UID, 310150025, 1)
		SaveEvent(UID, 5276);
	elseif Class == 3 or Class == 9 or Class == 10 then
		ExpChange(UID, 4500)
		GoldGain(UID, 50000)
		GiveItem(UID, 310150015, 1)
		GiveItem(UID, 310150075, 1)
		SaveEvent(UID, 5276);
	elseif Class == 4 or Class == 11 or Class == 12 then
		ExpChange(UID, 4500)
		GoldGain(UID, 50000) 
		GiveItem(UID, 310150035, 1)
		GiveItem(UID, 310150015, 1)
		SaveEvent(UID, 5276); 
	end
end

if (EVENT == 870) then -- 14 Level Hunt Bulture
	SelectMsg(UID, 2, 325, 170, NPC, 24, 871);
end

if (EVENT == 871) then
	ShowMap(UID, 4);
	SaveEvent(UID, 3372);
end

if (EVENT == 872) then
	SelectMsg(UID, 2, 325, 172, NPC, 24, 871);
end

if (EVENT == 800) then
	SelectMsg(UID, 2, 325, 3808, NPC,  3012, 801, 13, 168);
end

if (EVENT == 801) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 325, 3809, NPC, 22, 802, 23, 808);
	else
		SelectMsg(UID, 2, 325, 173, NPC, 10, 168);
	end
end

if (EVENT == 808) then
	SelectMsg(UID, 2, 325, 3811, NPC, 10, 168);
end

if (EVENT == 802) then
	SelectMsg(UID, 2, 325, 3810, NPC, 10, 168);
	SaveEvent(UID, 3373);
end

if (EVENT == 803) then
	SaveEvent(UID, 3375);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 325, 3813, NPC, 14, 168);
	else
		SelectMsg(UID, 2, 325, 3814, NPC, 14, 168);
	end
end

if (EVENT == 805) then
	MonsterCount = CountMonsterQuestSub(UID, 32001);
	if (MonsterCount < 15) then
		SelectMsg(UID, 2, 325, 3812, NPC, 10, 806);
	else
		SelectMsg(UID, 5, 325, 3815, NPC, 10, 809, 27, 806);
	end
end

if (EVENT == 806) then
	ShowMap(UID, 38);
end

if (EVENT == 809) then
	Class = CheckClass(UID);
	if Class == 1 or Class == 5 or Class == 6 then
		ExpChange(UID, 5500)
		GoldGain(UID, 50000) 
		GiveItem(UID, 340150005, 1)
		SaveEvent(UID, 3374);
	elseif Class == 2 or Class == 7 or Class == 8 then
		ExpChange(UID, 5500)
		GoldGain(UID, 50000)
		GiveItem(UID, 340150025, 1)
		SaveEvent(UID, 3374);
	elseif Class == 3 or Class == 9 or Class == 10 then
		ExpChange(UID, 5500)
		GoldGain(UID, 50000)
		GiveItem(UID, 340150015, 1)
		GiveItem(UID, 340150075, 1)
		SaveEvent(UID, 3374);
	elseif Class == 4 or Class == 11 or Class == 12 then
		ExpChange(UID, 5500)
		GoldGain(UID, 50000) 
		GiveItem(UID, 340150035, 1)
		GiveItem(UID, 340150015, 1)
		SaveEvent(UID, 3374); 
	end
end

if (EVENT == 9220) then -- 15 Level Hunt Giant Bulcan
	SelectMsg(UID, 2, 887, 170, NPC, 10, 9221);
end

if (EVENT == 9221) then
	SaveEvent(UID, 5281);
end

if (EVENT == 9222) then
	SelectMsg(UID, 2, 887, 172, NPC, 10, 9221);
end

if (EVENT == 9225) then
	SelectMsg(UID, 2, 887, 3168, NPC, 10, 9226);
end

if (EVENT == 9226) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 887, 3169, NPC, 22, 9227, 23, 168);
	else
		SelectMsg(UID, 2, 887, 173, NPC, 10, 168);
	end
end

if (EVENT == 9227) then
	SelectMsg(UID, 2, 887, 3170, NPC, 14, 168);
	SaveEvent(UID, 5282);
end

if (EVENT == 9230) then
	SaveEvent(UID, 5284);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 887, 3173, NPC, 14, 168);
	else
		SelectMsg(UID, 2, 887, 3174, NPC, 14, 168);
	end
end

if (EVENT == 9235) then
	MonsterCount = CountMonsterQuestSub(UID, 32001);
	if (MonsterCount < 25) then
		SelectMsg(UID, 2, 887, 3172, NPC, 10, 9236);
	else
		SelectMsg(UID, 5, 887, 3175, NPC, 10, 9239, 27, 9236);
	end 
end

if (EVENT == 9236) then
	ShowMap(UID, 593);
end

if (EVENT == 9239) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 6000) 
		GiveItem(UID, 202004005, 1)
		SaveEvent(UID, 5283);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 6000) 
		GiveItem(UID, 242004005, 1)
		SaveEvent(UID, 5283);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 6000) 
		GiveItem(UID, 262004005, 1)
		SaveEvent(UID, 5283);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 6000) 
		GiveItem(UID, 282004005, 1)
		SaveEvent(UID, 5283);
	end
end

if (EVENT == 1070) then -- 16 Level Hunt Werewolf
	SelectMsg(UID, 2, 327, 3827, NPC, 3005, 1071);
end

if (EVENT == 1071) then
	ShowMap(UID, 4);
	SaveEvent(UID, 3392);
end

if (EVENT == 1072) then
	SelectMsg(UID, 2, 327, 3828, NPC, 3005, 1071);
end

if (EVENT == 1000) then
	SelectMsg(UID, 2, 327, 3835, NPC,  3012, 1001, 13, 168);
end

if (EVENT == 1001) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 327, 3836, NPC, 22, 1002, 23, 1008);
	else
		SelectMsg(UID, 2, 327, 173, NPC, 10, 168);
	end
end

if (EVENT == 1002) then
	SelectMsg(UID, 2, 320, 3838, NPC, 10, 168);
	SaveEvent(UID, 3393);
end

if (EVENT == 1008) then
	SelectMsg(UID, 2, 320, 3839, NPC, 10, 168);
end

if (EVENT == 1003) then
	SaveEvent(UID, 3395);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 327, 3841, NPC, 14, 168);
	else
		SelectMsg(UID, 2, 327, 3842, NPC, 14, 168);
	end
end

if (EVENT == 1005) then
	MonsterCount = CountMonsterQuestSub(UID, 32001);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 327, 3840, NPC, 10, 1006);
	else
		SelectMsg(UID, 5, 327, 3843, NPC, 10, 1009, 27, 1006);
	end
end

if (EVENT == 1006) then
	ShowMap(UID, 629);
end

if (EVENT == 1009) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 6000) 
		GiveItem(UID, 202005006, 1)
		SaveEvent(UID, 3394);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 6000) 
		GiveItem(UID, 242005006, 1)
		SaveEvent(UID, 3394);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 6000) 
		GiveItem(UID, 262005006, 1)
		SaveEvent(UID, 3394);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 6000) 
		GiveItem(UID, 282005006, 1)
		SaveEvent(UID, 3394);
	end
end

if (EVENT == 970) then -- 18 Level Hunt Silan
	SelectMsg(UID, 2, 326, 170, NPC, 24, 971);
end

if (EVENT == 971) then
	ShowMap(UID, 4);
	SaveEvent(UID, 3382);
end

if (EVENT == 972) then
	SelectMsg(UID, 2, 326, 172, NPC, 24, 971);
end

if (EVENT == 900) then
	SelectMsg(UID, 2, 326, 3816, NPC,  3012, 901, 13, 168);
end

if (EVENT == 901) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 326, 3817, NPC, 22, 902, 23, 908);
	else
		SelectMsg(UID, 2, 326, 173, NPC, 10, 168);
	end
end

if (EVENT == 902) then
	SelectMsg(UID, 2, 320, 3818, NPC, 10, 168);
	SaveEvent(UID, 3383);
end

if (EVENT == 908) then
	SelectMsg(UID, 2, 320, 3819, NPC, 10, 168);
end

if (EVENT == 903) then
	SaveEvent(UID, 3385);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 326, 3821, NPC, 14, 168);
	else
		SelectMsg(UID, 2, 326, 3822, NPC, 14, 168);
	end
end

if (EVENT == 905) then
	MonsterCount = CountMonsterQuestSub(UID, 32001);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 326, 3820, NPC, 10, 906);
	else
		SelectMsg(UID, 5, 326, 3823, NPC, 10, 909, 27, 906);
	end
end

if (EVENT == 906) then
	ShowMap(UID, 60);
end

if (EVENT == 909) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 7000) 
		GoldGain(UID, 150000)
		GiveItem(UID, 202003006, 1)
		SaveEvent(UID, 3384);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 7000) 
		GoldGain(UID, 150000)
		GiveItem(UID, 242003006, 1)
		SaveEvent(UID, 3384);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 7000) 
		GoldGain(UID, 150000)
		GiveItem(UID, 262003006, 1)
		SaveEvent(UID, 3384);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 7000) 
		GoldGain(UID, 150000)
		GiveItem(UID, 282003006, 1)
		SaveEvent(UID, 3384);
	end
end

if (EVENT == 9240) then -- 19 Level Hunt Giant Gavolt
	SelectMsg(UID, 2, 888, 3798, NPC, 10, 9241);
end

if (EVENT == 9241) then
	SaveEvent(UID, 5288);
end

if (EVENT == 9242) then
	SelectMsg(UID, 2, 888, 3799, NPC, 10, 9241);
end

if (EVENT == 9245) then
	SelectMsg(UID, 2, 888, 3800, NPC, 10, 9246);
end

if (EVENT == 9246) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 888, 3801, NPC, 22, 9247, 23, 168);
	else
		SelectMsg(UID, 2, 888, 173, NPC, 10, 168);
	end
end

if (EVENT == 9247) then
	SelectMsg(UID, 2, 888, 3802, NPC, 14, 168);
	SaveEvent(UID, 5289);
end

if (EVENT == 9250) then
	SaveEvent(UID, 5291);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 888, 3805, NPC, 14, 168);
	else
		SelectMsg(UID, 2, 888, 3806, NPC, 14, 168);
	end
end

if (EVENT == 9255) then
	MonsterCount = CountMonsterQuestSub(UID, 32001);
	if (MonsterCount < 25) then
		SelectMsg(UID, 2, 888, 3804, NPC, 10, 9256);
	else
		SelectMsg(UID, 4, 888, 3807, NPC, 10, 9259, 27, 9256);
	end 
end

if (EVENT == 9256) then
	ShowMap(UID, 594);
end

if (EVENT == 9259) then
	ExpChange(UID, 19000)
	SaveEvent(UID, 5290);
end

if (EVENT == 9431) then -- 20 Level Wolf Hide 
	SelectMsg(UID, 2, 889, 3798, NPC, 10, 9432);
end

if (EVENT == 9432) then
	SaveEvent(UID, 5295);
end

if (EVENT == 9433) then
	SelectMsg(UID, 2, 889, 3799, NPC, 10, 9432);
end

if (EVENT == 9434) then
	SelectMsg(UID, 2, 889, 8671, NPC, 10, 9435);
end

if (EVENT == 9435) then
	SelectMsg(UID, 4, 889, 8672, NPC, 22, 9436, 23, 168);
end

if (EVENT == 9436) then
	SelectMsg(UID, 2, 889, 3802, NPC, 14, 168);
	SaveEvent(UID, 5296);
end

if (EVENT == 9437) then
	SaveEvent(UID, 5298);
	NATION = CheckNation(UID);
	if (NATION == 1) then
		SelectMsg(UID, 2, 889, 8671, NPC, 14, 168);
	else
		SelectMsg(UID, 2, 889, 8672, NPC, 14, 168);
	end
end

if (EVENT == 9439) then
	ITEMWH = HowmuchItem(UID, 379254000);
	if (ITEMWH < 15) then
		SelectMsg(UID, 2, 889, 8671, NPC, 10, 9440);
	else
		SelectMsg(UID, 4, 889, 8672, NPC, 10, 9441, 27, 9440);
	end 
end

if (EVENT == 9440) then
	ShowMap(UID, 523);
end

if (EVENT == 9441) then
	RobItem(UID, 379254000, 15)
	ExpChange(UID, 30000)
	SaveEvent(UID, 5297);
end

if (EVENT == 9260) then -- 21 Level Hunt Glyptodont
	SelectMsg(UID, 2, 890, 3168, NPC, 10, 9261);
end

if (EVENT == 9261) then
	SaveEvent(UID, 5302);
end

if (EVENT == 9262) then
	SelectMsg(UID, 2, 890, 3168, NPC, 10, 9261);
end   

if (EVENT == 9265) then
	SelectMsg(UID, 2, 890, 3168, NPC,  3012, 9266, 13, 168);
end

if (EVENT == 9266) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 890, 3169, NPC, 22, 9267, 23, 9268);
	else
		SelectMsg(UID, 2, 890, 173, NPC, 10, 168);
	end
end

if (EVENT == 9267) then
	SelectMsg(UID, 2, 890, 3170, NPC, 10, 168);
	SaveEvent(UID, 5303);
end

if (EVENT == 9268) then
	SelectMsg(UID, 2, 890, 3171, NPC, 10, 168);
end

if (EVENT == 9270) then
	SaveEvent(UID, 5305);
	SelectMsg(UID, 2, 890, 3190, NPC, 14, 168);
end

if (EVENT == 9275) then
	MonsterCount = CountMonsterQuestSub(UID, 32001);
	if (MonsterCount < 1) then
		SelectMsg(UID, 2, 890, 173, NPC, 10, 9276);
	else
		SelectMsg(UID, 4, 890, 3169, NPC, 10, 9277, 27, 9276);
	end
end

if (EVENT == 9276) then
	ShowMap(UID, 595);
end

if (EVENT == 9277) then
	ExpChange(UID, 20000)
	SaveEvent(UID, 5304);
end

if (EVENT == 9280) then -- 22 Level Hunt Gloomwing
	SelectMsg(UID, 2, 891, 3168, NPC, 10, 9281);
end

if (EVENT == 9281) then
	SaveEvent(UID, 5309);
end

if (EVENT == 9282) then
	SelectMsg(UID, 2, 891, 3168, NPC, 10, 9281);
end   

if (EVENT == 9285) then
	SelectMsg(UID, 2, 891, 3800, NPC,  3012, 9286, 13, 168);
end

if (EVENT == 9286) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 891, 3801, NPC, 22, 9287, 23, 9288);
	else
		SelectMsg(UID, 2, 891, 173, NPC, 10, 168);
	end
end

if (EVENT == 9287) then
	SelectMsg(UID, 2, 891, 3802, NPC, 10, 168);
	SaveEvent(UID, 5310);
end

if (EVENT == 9288) then
	SelectMsg(UID, 2, 891, 3803, NPC, 10, 168);
end

if (EVENT == 9290) then
	SaveEvent(UID, 5312);
	SelectMsg(UID, 2, 891, 3805, NPC, 14, 168);
end

if (EVENT == 9295) then
	MonsterCount = CountMonsterQuestSub(UID, 32001);
	if (MonsterCount < 30) then
		SelectMsg(UID, 2, 891, 3804, NPC, 10, 9296);
	else
		SelectMsg(UID, 5, 891, 3815, NPC, 10, 9297, 27, 9296);
	end
end

if (EVENT == 9296) then
	ShowMap(UID, 596);
end

if (EVENT == 9297) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 50000) 
		GiveItem(UID, 330150006, 1)
		SaveEvent(UID, 5311);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 50000)
		GiveItem(UID, 330150026, 1)
		SaveEvent(UID, 5311);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 50000)
		GiveItem(UID, 330150016, 1)
		GiveItem(UID, 330150076, 1)
		SaveEvent(UID, 5311);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 50000) 
		GiveItem(UID, 330150036, 1)
		GiveItem(UID, 330150016, 1)
		SaveEvent(UID, 5311);
	end
end

local savenum = 822;

if (EVENT == 8630) then -- 23 Level Hunt Orch Watcher
	SelectMsg(UID, 2, savenum, 8090, NPC, 10, 8631);
end

if (EVENT == 8631) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8145);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8150);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8155);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8160);
	end
end

if (EVENT == 8632) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 8090, NPC, 22, 8633, 23, 8634);
	else
		SelectMsg(UID, 2, savenum, 8090, NPC, 10, 168);
	end
end

if (EVENT == 8633) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8146);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8151);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8156);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8161);
	end
end

if (EVENT == 8634) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8149);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8154);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8159);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8164);
	end
end

if (EVENT == 8640) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8148);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8153);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8158);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8163);
	end
end

if (EVENT == 8636) then
	MonsterCount = CountMonsterQuestSub(UID, 32001);
	if (MonsterCount < 25) then
		SelectMsg(UID, 2, savenum, 8090, NPC, 21, 8637);
	else
		SelectMsg(UID, 5, savenum, 8090, NPC, 41, 8638, 23, 168);
	end
end

if (EVENT == 8637) then
	ShowMap(UID, 597);
end

if (EVENT == 8638) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 60000)
		GiveItem(UID, 971910732, 1)
		GiveItem(UID, 971920820, 1)
		GiveItem(UID, 971880792, 1)
		SaveEvent(UID, 8147);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 60000)
		GiveItem(UID, 971890916, 1)
		GiveItem(UID, 971850494, 1)
		GiveItem(UID, 971850494, 1)
		SaveEvent(UID, 8152);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 60000)
		GiveItem(UID, 971860356, 1)
		GiveItem(UID, 971860364, 1)
		GiveItem(UID, 971860372, 1)
		SaveEvent(UID, 8157);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 60000)
		GiveItem(UID, 971870764, 1)
		GiveItem(UID, 971900445, 1)
		GiveItem(UID, 971930764, 1)
		SaveEvent(UID, 8162);
	end
end