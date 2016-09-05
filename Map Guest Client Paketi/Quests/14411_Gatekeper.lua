local NPC = 14411;

if (EVENT == 193) then
	Ret = 1;
end

local ITEM = 0;

if (EVENT == 217) then
	ITEM = HowmuchItem(UID, 910086000);
	if (ITEM < 1) then
		SelectMsg(UID, 2, 66, 691, NPC, 10, 193);
	else
		SelectMsg(UID, 2, 66, 692, NPC, 58, 221, 4005, 193);
	end
end

if (EVENT == 221) then
	Check = isRoomForItem(UID, 910087000);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 193);
	else
		RobItem(UID, 910086000, 1)
		ExpChange(UID, 5000)
		SaveEvent(UID, 458);
		GiveItem(UID, 910087000, 1)
		SelectMsg(UID, 2, 66, 694, NPC, 56, 193);
	end
end