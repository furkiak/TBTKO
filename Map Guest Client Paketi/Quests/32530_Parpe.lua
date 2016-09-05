local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 27100;


if EVENT == 100 then
    SelectMsg(UID, 3, -1, 7100, NPC, 9100, 150, 9103, 103, 9102, 102);
end


local ITEMA = 0;
local ITEMB = 0;
local ITEMC = 0;

--Scroll and ibex potion.
if EVENT == 150 then
   ITEMA = HowmuchItem(UID, 700021000);
   if (ITEMA >= 1) then
      RobItem(UID, 700021000)
      GiveItem(UID, 508011442)
      GiveItem(UID, 508013319)
      GiveItem(UID, 800250000)
      GiveItem(UID, 800250000)
      GiveItem(UID, 810179840)
   else
      SelectMsg(UID, 3, -1, 7101, NPC, 9101, 151);
    end
end
   
--Exit Box
if (EVENT == 151) then
	Ret = 1;
end

--______________________________________________________

--Yellow Treasure

if (EVENT == 103) then
	UserClass = CheckClass(UID);
	ITEMB = HowmuchItem(UID, 379150000);
	if (UserClass == 6) then
		if (ITEMB >= 1) then 
		RobItem(UID, 379150000)
		GiveItem(UID, 1111476905)
      		GiveItem(UID, 1111481905)
		else
		SelectMsg(UID, 3, -1, 7101, NPC, 9101, 151);	
		end

	elseif (UserClass == 8) then
		if (ITEMB >= 1) then 
		RobItem(UID, 379150000)
		GiveItem(UID, 1111474905)
      		GiveItem(UID, 1111475905)
		GiveItem(UID, 1111477905)
		else
		SelectMsg(UID, 3, -1, 7101, NPC, 9101, 151);	
		end

	elseif (UserClass == 10) then
		if (ITEMB >= 1) then 
		RobItem(UID, 379150000)
		GiveItem(UID, 1111478905)
      		GiveItem(UID, 1111478935)
		GiveItem(UID, 1111478965)
		else
		SelectMsg(UID, 3, -1, 7101, NPC, 9101, 151);	
		end

	elseif (UserClass == 12) then
		if (ITEMB >= 1) then 
		RobItem(UID, 379150000)
		GiveItem(UID, 1111479905)
      		GiveItem(UID, 1111480905)
		else
		SelectMsg(UID, 3, -1, 7101, NPC, 9101, 151);
		end
	end
	
end

--_______________________________________________________

--Black Treasure

if (EVENT == 102) then
	UserClass = CheckClass(UID);
	ITEMC = HowmuchItem(UID, 379148000);
	if (UserClass == 6) then
		if (ITEMC >= 1) then 
		RobItem(UID, 379148000)
		GiveItem(UID, 1110531575)
      		else
		SelectMsg(UID, 3, -1, 7101, NPC, 9101, 151);	
		end

	elseif (UserClass == 8) then
		if (ITEMC >= 1) then 
		RobItem(UID, 379148000)
		GiveItem(UID, 1110529575)
      		GiveItem(UID, 1110530575)
		GiveItem(UID, 1110532575)
		else
		SelectMsg(UID, 3, -1, 7101, NPC, 9101, 151);	
		end

	elseif (UserClass == 10) then
		if (ITEMC >= 1) then 
		RobItem(UID, 379148000)
		GiveItem(UID, 1110533635)
      		GiveItem(UID, 1110533665)
		GiveItem(UID, 1110533695)
		else
		SelectMsg(UID, 3, -1, 7101, NPC, 9101, 151);	
		end

	elseif (UserClass == 12) then
		if (ITEMC >= 1) then 
		RobItem(UID, 379148000)
		GiveItem(UID, 1110534575)
      		GiveItem(UID, 1110535575)
		else
		SelectMsg(UID, 3, -1, 7101, NPC, 9101, 151);
		end
	end
	
end