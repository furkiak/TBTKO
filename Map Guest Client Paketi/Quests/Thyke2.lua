
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 16212;


if EVENT == 100 then
    SelectMsg(UID, 3, -1, 6038, NPC ,7203,152,7217,153,7234,154,7235,155);
end


local ITEMA = 0;

--- Warrior 
if EVENT == 152 then
   ITEMA = HowmuchItem(UID, 900132000);
   if ITEMA < 1 then
      GoldLose(UID, 0)
--- Old Takilar
      GiveItem(UID, 0, 1)

   end
end


if EVENT == 153 then

   ITEMA = HowmuchItem(UID, 900133000);
   if ITEMA < 1 then
     
      GiveItem(UID, 0, 1)

     
   end
end

if EVENT == 154 then
   ITEMA = HowmuchItem(UID, 379118000);
   if ITEMA < 1 then
         
      GiveItem(UID, 0, 1)


  end
end

if EVENT == 155 then
   ITEMA = HowmuchItem(UID, 379117000);
   if ITEMA < 1 then
     
      GiveItem(UID, 0, 1)


   end
end

