local UserClass;
local QuestNum;
local Ret = 0;
local NPC=14433;
local savenum = -1;


if EVENT == 500 then
   SelectMsg(UID, 9, savenum, 4704, NPC, 4161, 408, 4162, 101);
end

if EVENT == 502 then
   SelectMsg(UID, 9, savenum, 4704, NPC);
end

if EVENT == 503 then
   SelectMsg(UID, 9, savenum, 4704, NPC);
end

if EVENT == 101 then
   Ret = 1;
end
