
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 11510;


if (EVENT == 190) then
	SelectMsg(UID, 3, savenum, 147, NPC, 10,6092);
end

if EVENT == 193 then
    Ret = 1;
end

--ÇÉ¼­µ¶ ¼öÁı
--. ¹Ì½©

if EVENT == 195 then
   SelectMsg(UID, 1, 8, 666, NPC, 28, 196);
end

if EVENT == 196 then
   ShowMap(UID, 39);
   SaveEvent(UID, 439);
end

--  102¹øÀÇ ¼Ó¼º 0¹ø 4¹øÀÏ °æ¿ì

if EVENT == 200 then
   SelectMsg(UID, 2, 8, 667, NPC, 10, 201);
end

if EVENT == 201 then
   SelectMsg(UID, 4, 8, 668, NPC, 22, 202, 23, 193);
end

local ITEM_COUNT3=0;
local Weight;
local Slot;

if EVENT == 202 then
     ITEM_COUNT3 = HowmuchItem(UID, 910044000); 
   if  ITEM_COUNT3 <= 0 then -- Àç·á ¾øÀ»¶§
   Weight = CheckGiveWeight(UID, 910044000, 1) ;
   Slot = CheckGiveSlot(UID);
   if Weight==1 and Slot >= 1 then 
   GiveItem(UID, 910044000, 1);
   SaveEvent(UID, 440);
   else
   ret = 1 ;
   end
   end
   if  ITEM_COUNT3 > 0 then -- Àç·á ÀÖÀ»¶§
      SelectMsg(UID, 2, 8, 671, NPC, 18, 213);
   end
end


-- Àç·á¸¦ ´Ù ¸ğ¾ÒÀ» ¶§ 
local NATION = 0;--±¹°¡ Ã¼Å©

if EVENT == 205 then
   SaveEvent(UID, 442);
   NATION = CheckNation(UID);
   if NATION == 1 then -- Ä«·ç½º ÀÏ¶§
      SelectMsg(UID, 1, 8, 669, NPC, 32, 208);
   else -- ¿¤¸ğÀÏ¶§
      SelectMsg(UID, 1, 8, 670, NPC, 21, 208);
   end
end


local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local RUN_EXCHANGE ;--Àç·á ±³Ã¼ ÇÔ¼ö ¸¸µé¾î ÁÖ¼¼¿ä 

if EVENT == 210 then
     ITEM_COUNT1 = HowmuchItem(UID, 910040000); 
     ITEM_COUNT2 = HowmuchItem(UID, 910041000); 
		if ITEM_COUNT1 < 5 then 
        SelectMsg(UID, 2, 8, 671, NPC, 18, 213);
		elseif ITEM_COUNT2 < 1 then--ÇØ´ç NPC¿¡°Ô ÇÒ¼ö ÀÖ´Â Äù½ºÆ®°¡ 1°³ ÀÏ¶§ 
        SelectMsg(UID, 2, 8, 672, NPC, 18, 213);
        else --ÇØ´ç NPC¿¡°Ô ÇÒ¼ö ÀÖ´Â Äù½ºÆ®°¡ 1°³ ÀÌ»ó ÀÏ¶§ 
        SelectMsg(UID, 4, 8, 673, NPC, 41, 214, 27, 193);
		end
end

if EVENT == 213 then
   ShowMap(UID, 40);
end

local Check;

if EVENT == 214 then
        Check = CheckExchange(UID, 88)
        if  Check == true then
        RunExchange(UID, 88);	   
        SaveEvent(UID, 441);      
        else
        Ret = 1;	
        end	 
end

-------------------------------
------Ã´ÈÄ º¸°í¼­  ³¡---
-------------------------------


--******************************************************--
-- ÀÏ°ö ¿­¼è ¼öÈ£ÀÚ ½ÃÀÛ 
--******************************************************--

local NPC = 11510;
local savenum = 9;

-- 9¹øÀÇ ¼Ó¼º 0¹ø 4¹øÀÏ °æ¿ì

if EVENT == 532 then   
    SelectMsg(UID, 4, savenum, 4296, NPC, 22, 533, 23, 534);
end

if EVENT == 533 then
   SaveEvent(UID, 4211); --¼ö¶ô½Ã
   GiveItem(UID, 910050000, 1);
end

if EVENT == 534 then
   SaveEvent(UID, 4214); -- °ÅÀı½Ã 
end

-- 9¹øÀÇ ¼Ó¼º 1¹ø 3¹øÀÏ °æ¿ì

local ItemA
local ItemB

if EVENT == 536 then
ItemA = HowmuchItem(UID, 910057000); --7¹øÂ° ¿­¼è
ItemB = HowmuchItem(UID, 910050000); -- ¸í·É¼­
    if  ItemA == 0 then -- Àç·á°¡ ¾øÀ»¶§
       if ItemB == 0 then -- ¸í·É¼­µµ  ¾øÀ»¶§
       GiveItem(UID, 910050000, 1);
       SelectMsg(UID, 2, savenum, 4298, NPC, 10, 193);
       else -- B Àç·á ¾øÀ»¶§ 
       SelectMsg(UID, 2, savenum, 4299, NPC, 10, 193);
       end
    else --7¹øÂ° ¿­¼è ÀÖÀ»¶§ 
    SelectMsg(UID, 2, savenum, 4297, NPC, 4172, 537, 4173, 193);
   end
end

if EVENT == 537 then
        SaveEvent(UID, 4212);
         RunExchange(UID, 470);
end


--******************************************************--
-- ÀÏ°ö ¿­¼è ¼öÈ£ÀÚ ³¡ 
--******************************************************--

--San-juck captian start
-----------------------------------------------------------
-- ¸ó½ºÅÍ Åä¹ú´ë ½ÃÀÛ - Áß±Ş
-----------------------------------------------------------
local NPC = 11510;
local savenum = 603;
local savenum1 = 604;

-----------------------------------------------------------

--½Ãµå ¹Ì¼¿ È£Ãâ
if EVENT == 6090 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       SaveEvent(UID, 6039);
       EVENT = 7009
       elseif Class == 2 or Class == 7 or Class == 8 then
       SaveEvent(UID, 6045);
       EVENT = 7009
       elseif Class == 3 or Class == 9 or Class == 10 then
       SaveEvent(UID, 6051);
       EVENT = 7009
      elseif Class == 4 or Class == 11 or Class == 12 then
       SaveEvent(UID, 6057);
       EVENT = 7009
      end
end

if EVENT == 7009 then
   NATION = CheckNation(UID);
   if NATION == 1 then --Ä«ç½?ï¿?
   SelectMsg(UID, 1, savenum, 6039, NPC, 28, 6091);
   else -- ï¿½Ï?
   SelectMsg(UID, 1, savenum, 6040, NPC, 28, 6091);
   end
end

if EVENT == 6091 then
   ShowMap(UID,6);
end

------------------------------------------------------------------------
-- SANJUK Campaign Troops Start
------------------------------------------------------------------------

local Level = 0;
if EVENT == 6092 then
   Level = CheckLevel(UID);
   if Level >= 40 and Level <= 50 then
   	SelectMsg(UID, 2, savenum, 6041, NPC, 6007, 6093, 6008, 7002);
   else 
	SelectMsg(UID, 2, savenum, 6042, NPC, 10, 193);
   end
end

if EVENT == 6093 then
    SelectMsg(UID, 4, savenum, 6043, NPC, 22, 6094, 23, 193);
end


local WATING = 0;
local PARTYCOUNT = 0;
if EVENT == 6094 then
	PartyCheck = isInParty(UID);
	if (PartyCheck) then
		ZoneChangeParty(UID, 82, 202, 199);
		CheckWaiting(UID, 82, 600);
		EVENT = 6097
	else
		SelectMsg(UID, 2, savenum, 6044, NPC, 10, 193);
	end
end


if EVENT == 6096 then   -- A region passed  UID is contained zonenumber... broadcasting packets
  SelectMsg(UID, 6, 8201, 6059, NPC, 10, 193);
end
--/*ÀüÃ¼ UI Á¦°Å
if EVENT == 6097 then   -- B region passed
  SelectMsg(UID, 6, 8202, 6060, NPC, 10, 193);
end

if EVENT == 6098 then   -- C region passed
   SelectMsg(UID, 6, 8203, 6061, NPC, 10, 193);
end


if EVENT == 6099 then   -- Quest Completed  WARNINIG!!! UID is contained zonenumber... broadcasting packets
     GiveItem(UID, 910135000, 1);		
       SaveEvent(UID, 6041);
          EVENT = 7204
 end


if EVENT == 6099 then   -- Quest Completed  WARNINIG!!! UID is contained zonenumber... broadcasting packets
     GiveItem(UID, 910135000, 1);		
	 SaveEvent(UID, 6080);
end



--ÀüÃ¼ UIÁ¦°Å */
------------------------------------------------------------------------
-- SANJUK Campaign Troops End
------------------------------------------------------------------------

---------ï¿?ï¿½ï¿½ï¿?

local quest_ITEM_COUNT=0;
if EVENT == 7000 then
   quest_ITEM_COUNT = HowmuchItem(UID, 910135000);
if quest_ITEM_COUNT == 1 then
   NATION = CheckNation(UID);
   --SaveEvent(UID, 6043);
   if NATION == 1 then --Ä«ç½?ï¿?
   SelectMsg(UID, 1, savenum1, 6046, NPC, 28, 7001);
   else -- ï¿½Ï?
   SelectMsg(UID, 1, savenum1, 6047, NPC, 28, 7001);
   end
  end
end

if EVENT == 7001 then
      ShowMap(UID, 6);
end

--1, 3
local ITEM_COUNT=0;
local ITEM_COUNT1=0;
local RUN_EXCHANGE ;--ï¿½ï¿½Ã¼ ï¿½ï¿½ï¿?ï¿½ï¿½

if EVENT == 7002 then
   ITEM_COUNT = HowmuchItem(UID, 910135000);   
   ITEM_COUNT1 = HowmuchItem(UID, 910138000);
   if  ITEM_COUNT <= 0 then -- ï¿½ï¿½;
      SelectMsg(UID, 2, savenum1, 6048, NPC, 18, 7003);
   end
   if  ITEM_COUNT1 <= 2 then -- ï¿½ï¿½;
      SelectMsg(UID, 2, savenum1, 6048, NPC, 18, 7003);
   end
   if ITEM_COUNT  > 0 and ITEM_COUNT1 > 2 then-- ï¿½ï¿½ï¿?
      --SaveEvent(UID, 6004);
      SelectMsg(UID, 5, savenum1, 6049, NPC, 4006, 7004, 27, 193);
   end
end

if EVENT == 7003 then
--   SaveEvent(UID, 6002);
   ShowMap(UID, 6);
end

if EVENT == 7004 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 7005
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 7006
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 7007
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 7008
      end
end


local Check;
if EVENT == 7005 then
        Check = CheckExchange(UID, 94)
        if  Check == true then
        RunExchange(UID, 94)
        else
        Ret = 1;	
        end	 
end

local Check1;

if EVENT == 7006 then
        Check1 = CheckExchange(UID, 95)
        if  Check1 == true then
        RunExchange(UID, 95)
        else
        Ret = 1;	
        end	 
end

local Check2;

if EVENT == 7007 then
        Check2 = CheckExchange(UID, 96)
        if  Check2 == true then
        RunExchange(UID, 96)
        else
        Ret = 1;	
        end	 
end


local Check3;

if EVENT == 7008 then
        Check3 = CheckExchange(UID, 97)
        if  Check3 == true then
        RunExchange(UID, 97)
        else
        Ret = 1;	
        end	 
end
--------------------------------------
-----¸ó½ºÅÍ Åä¹ú´ë ³¡-----------------
--------------------------------------


--San-juck captian start
-----------------------------------------------------------
-- ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½- ï¿?
-----------------------------------------------------------
local NPC = 11510;
local savenum = 607;
local savenum1 = 608;

-----------------------------------------------------------

--Ãµï¿½Ì?È£ï¿?

if EVENT == 7010 then
       SaveEvent(UID, 6071);
   NATION = CheckNation(UID);
   if NATION == 1 then --Ä«ç½?ï¿?
   SelectMsg(UID, 1, savenum, 6080, NPC, 28, 7011);
   else -- ï¿½Ï?
   SelectMsg(UID, 1, savenum, 6081, NPC, 28, 7011);
   end
end

if EVENT == 7011 then
   ShowMap(UID,39);
end

------------------------------------------------------------------------
-- SANJUK Campaign Troops Start
------------------------------------------------------------------------

local Level = 0;
if EVENT == 7012 then
   Level = CheckLevel(UID);
   if Level >= 60 and Level <= 80 then
   	SelectMsg(UID, 2, savenum, 6051, NPC, 6009, 7013, 6008, 7022);
   else 
	SelectMsg(UID, 2, savenum, 6052, NPC, 10, 193);
   end
end

if EVENT == 7013 then
   SelectMsg(UID, 4, savenum, 6053, NPC, 22, 7014, 23, 193);
end

local WATING = 0;
local PARTYCOUNT = 0;
if EVENT == 7014 then
	PartyCheck = isInParty(UID);
	if (PartyCheck) then
		ZoneChangeParty(UID, 83, 202, 199);
		CheckWaiting(UID, 83, 600);
		EVENT = 7018;
	else
		SelectMsg(UID, 2, savenum, 6044, NPC, 10, 193);
	end
end

if EVENT == 7026 then   -- A region passed  UID is contained zonenumber... broadcasting packets
   SelectMsg(UID, 6, 8304, 6084, NPC, 10, 193);
end

if EVENT == 7016 then   -- A region passed  UID is contained zonenumber... broadcasting packets
   SelectMsg(UID, 6, 8301, 6062, NPC, 10, 193);
end
--/*ï¿½Ã?UI fï¿?
if EVENT == 7017 then   -- B region passed
  SelectMsg(UID, 6, 8302, 6063, NPC, 10, 193);
end

if EVENT == 7018 then   -- C region passed
   SelectMsg(UID, 6, 8303, 6064, NPC, 10, 193);
end


local ITEM_COUNT=0;
local ITEM_COUNT1=0;
local RUN_EXCHANGE ;--ï¿½ï¿½Ã¼ ï¿½ï¿½ï¿?ï¿½ï¿½

local Check;
if EVENT == 7019 then   -- Quest Completed  WARNINIG!!! UID is contained zonenumber... broadcasting packets
     GiveItem(UID, 910136000, 1);		
        RunExchange(UID, 98)
      SaveEvent(UID, 6073);
end




--ï¿½Ã?UIfï¿?/
------------------------------------------------------------------------
-- SANJUK Campaign Troops End
------------------------------------------------------------------------

---------ï¿?ï¿½ï¿½ï¿?

local quest_ITEM_COUNT=0;
if EVENT == 7020 then
   quest_ITEM_COUNT = HowmuchItem(UID, 910136000);
if quest_ITEM_COUNT == 1 then
   NATION = CheckNation(UID);
   if NATION == 1 then --Ä«ç½?ï¿?
   SelectMsg(UID, 1, savenum1, 6082, NPC, 28, 7021);
   else -- ï¿½Ï?
   SelectMsg(UID, 1, savenum1, 6083, NPC, 28, 7021);
   end
  end
end

if EVENT == 7021 then
      ShowMap(UID, 6);
end

--1, 3
local ITEM_COUNT=0;
local ITEM_COUNT1=0;
local RUN_EXCHANGE ;--ï¿½ï¿½Ã¼ ï¿½ï¿½ï¿?ï¿½ï¿½

if EVENT == 7022 then
   ITEM_COUNT1 = HowmuchItem(UID, 910137000);
   ITEM_COUNT = HowmuchItem(UID, 910136000);
   if  ITEM_COUNT <= 0 then -- ï¿½ï¿½;
      SelectMsg(UID, 2, savenum1, 6056, NPC, 18, 7023);
   end
   if  ITEM_COUNT1 <= 2 then -- ï¿½ï¿½;
      SelectMsg(UID, 2, savenum1, 6056, NPC, 18, 7023);
   end
   if ITEM_COUNT  > 0 and  ITEM_COUNT1 > 2 then-- ï¿½ï¿½ï¿?
      --SaveEvent(UID, 6004);
      SelectMsg(UID, 2, savenum1, 6057, NPC, 4006, 7025, 27, 3001);
   end
end

if EVENT == 7023 then
--   SaveEvent(UID, 6002);
   ShowMap(UID, 39);
end


local Check;
if EVENT == 7025 then
        Check = CheckExchange(UID, 98)
        if  Check == true then
        RunExchange(UID, 98)
        else
        Ret = 1;	
        end	 
end


--------------------------------------
-----ï¿½ï¿½ï¿½ï¿½-----------------
--------------------------------------

return Ret;
