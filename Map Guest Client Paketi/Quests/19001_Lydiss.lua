local Ret = 0;
local NPC = 19001;

if (EVENT == 3000) then
	SelectMsg(UID, 2, -1, 8946, NPC, 4424, 3001, 27, 193);
end   

if (EVENT == 193) then
	Ret = 1;
end

if (EVENT == 3001) then
	SelectMsg(UID, 2, -1, 8947, NPC, 4446, 193);
end