
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 27100;


if EVENT == 100 then
    SelectMsg(UID, 3, -1, 6038, NPC, 7200, 150,7201,151);
end


local ITEMA = 0;


--Kanat
if EVENT == 150 then
   ITEMA = HowmuchItem(UID, 900000000);
   if ITEMA >= 0 then
      GoldLose(UID, 0)
      GiveItem(UID, 900183678, 1,1)




  
       
   end
end


-- Bahamut Set


if EVENT == 151 then
   ITEMA = HowmuchItem(UID, 900000000);
   if ITEMA < 0 then
      GoldLose(UID, 0)
      GiveItem(UID, 310440795, 1)



   end
end


