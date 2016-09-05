
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 24434;


if EVENT == 3000 then
   NpcMsg(UID, 8201, NPC)
end

if EVENT == 153 then
   Ret = 1;
end

return Ret;
