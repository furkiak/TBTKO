local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 29235;


if EVENT == 100 then
   SelectMsg(UID, 3, -1, 3336, NPC, 9000, 204, 9001, 200, 9002, 201,27,-1);
end

if EVENT == 200 then
   -- Premium hp potion 100 ea
   ITEMA = HowmuchItem(UID, 889310000);
   if ITEMA == 0 then
      SelectMsg(UID, 2, -1, 1113, NPC, 27, 101);
   else
      SelectMsg(UID, 2, -1, 1112, NPC, 4006, 202, 4005, 101);
   end
end

if EVENT == 202 then
   RobItem(UID, 889310000, 1)
   GiveItem(UID, 389310000, 1)
   SelectMsg(UID, 2, -1, 1114, NPC, 27, 168);
end

if EVENT == 201 then
   -- Premium mp potion 100 ea
   ITEMC = HowmuchItem(UID, 889340000);
   if ITEMC == 0 then
      SelectMsg(UID, 2, -1, 1118, NPC, 27, 168);
   else
      SelectMsg(UID, 2, -1, 1117, NPC, 4006, 203, 4005, 101);
   end
end

if EVENT == 203 then
   RobItem(UID, 889340000, 1)
   GiveItem(UID, 389340000, 1)
   SelectMsg(UID, 2, -1, 1114, NPC, 27, 101);
end

if EVENT == 101 then
   Ret = 1;
end

if EVENT == 204 then
   -- Level Jumping Event
      SelectMsg(UID, 2, -1, 3336, NPC, 22, 300, 23, -1);
end

if EVENT == 300 then
      GetLevel(UID, 70); -- Fonksiyon ekli değil eklenince aktif olacaktır.
end

