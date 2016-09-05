local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 27100;

if EVENT == 100 then
        SelectMsg(UID, 3, -1, 6038, NPC, 7200,150,7201,151,7203,152,7217,153,7236,158);
end

if EVENT == 150 then
   SelectMsg(UID, 3, -1, 6038, NPC, 7234,154);
end
if EVENT == 154 then
    GiveItem(UID,215003005)
	GiveItem(UID,215001005)
	GiveItem(UID,215002005)
	GiveItem(UID,215004005)
	GiveItem(UID,215005005)
end
if EVENT == 151 then
   SelectMsg(UID, 3, -1, 6038, NPC, 7235,155);
end
if EVENT == 155 then
    GiveItem(UID,255003065)
	GiveItem(UID,255001065)
	GiveItem(UID,255002065)
	GiveItem(UID,255004065)
	GiveItem(UID,255005065)
end
if EVENT == 152 then
   SelectMsg(UID, 3, -1, 6038, NPC, 7238,156);
end
if EVENT == 156 then
    GiveItem(UID,275003125)
	GiveItem(UID,275001125)
	GiveItem(UID,275002125)
	GiveItem(UID,275004125)
	GiveItem(UID,275005125)
 GiveItem(UID,275003035)
	GiveItem(UID,275001035)
	GiveItem(UID,275002035)
	GiveItem(UID,275004035)
	GiveItem(UID,275005035)
end

if EVENT == 153 then
   SelectMsg(UID, 3, -1, 6038, NPC, 7248,157);
end
if EVENT == 157 then
    GiveItem(UID,295003035)
	GiveItem(UID,295001035)
	GiveItem(UID,295002035)
	GiveItem(UID,295004035)
	GiveItem(UID,295005035)
end
if EVENT == 158 then
   SelectMsg(UID, 3, -1, 6038, NPC, 7237,159,7239,160,7240,161,7241,162,7249,163,7250,164,7251,165,7252,166);
end
if EVENT == 159 then
    GiveItem(UID,800078000)
end
if EVENT == 160 then
    GiveItem(UID,900132000)
end
if EVENT == 161 then
    GiveItem(UID,900134000)
end
if EVENT == 162 then
    GiveItem(UID,800008000)
end
if EVENT == 163 then
    GiveItem(UID,800003000)
end
if EVENT == 164 then
    GiveItem(UID,800005000)
end
if EVENT == 165 then
    GiveItem(UID,800004000)
end
if EVENT == 166 then
    GiveItem(UID,800015000)
end