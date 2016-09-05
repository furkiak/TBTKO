
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 14410;

if EVENT == 190 then
   QuestNum = SearchQuest(UID, NPC);
   if QuestNum == 0 then
      SelectMsg(UID, 2, -1, 3000, NPC, 10, 193);
      Ret = 1;
   elseif QuestNum > 1 and  QuestNum < 100 then
      NpcMsg(UID, 192, NPC)
   else
      EVENT = QuestNum
   end
end

if EVENT == 193 then
    Ret = 1;
end

if EVENT == 195 then
   SelectMsg(UID, 1, 319, 3138, NPC, 3006, 1000);
end

if EVENT == 1000 then
   SelectMsg(UID, 1, 319, 3139, NPC, 28, 196);
end

if EVENT == 196 then
   ShowMap(UID, 5);
   SaveEvent(UID, 3303);
end

if EVENT == 197 then
   SelectMsg(UID, 1, 319, 3147, NPC, 3006, 1001);
end

if EVENT == 1001 then
   SelectMsg(UID, 1, 319, 3148, NPC, 28, 196);
end

if EVENT == 200 then
   SelectMsg(UID, 2, 319, 3140, NPC, 29, 201);
end

if EVENT == 201 then
   SelectMsg(UID, 4, 319, 3141, NPC, 22, 202, 23, 193);
end

if EVENT == 202 then
   SaveEvent(UID, 3304);
end

local NATION = 0;

if EVENT == 205 then
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 319, 3145, NPC, 32, 208);
   else
      SelectMsg(UID, 1, 319, 3149, NPC, 21, 208);
   end
end

if EVENT == 208 then
   SaveEvent(UID, 3306);
end


local ITEM_COUNT=0;
local RUN_EXCHANGE ;

if EVENT == 210 then
   ITEM_COUNT = HowmuchItem(UID, 379204000);
   if ITEM_COUNT <= 0 then
      SelectMsg(UID, 2, 319, 3144, NPC, 18, 213);
   elseif ITEM_COUNT  > 0 then
      SelectMsg(UID, 4, 319, 3146, NPC, 10, 214, 27, 193);
   end
end

if EVENT == 213 then
   ShowMap(UID, 7);
end

if EVENT == 214 then
   RunExchange(UID, 6);
   SaveEvent(UID, 3305);
end

return Ret;
