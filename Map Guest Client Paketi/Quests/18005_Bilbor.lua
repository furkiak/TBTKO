local Ret = 0;
local NPC = 18005;
local savenum = -1;

if (EVENT == 100) then
	SelectMsg(UID, 3, savenum, 101, NPC, 10, 800);
end

if (EVENT == 101) then
	Ret = 1;
end

if (EVENT == 800) then
	SelectMsg(UID, 2, savenum, 4805, NPC, 4259, 801, 4063, 101);
end

if (EVENT == 801) then
   	--CheckLogTimeAccount(UID, 802, 803)
end

if (EVENT == 802) then
	SelectMsg(UID, 2, savenum, 4806, NPC, 10, 101);
end

if (EVENT == 803) then
	Slot = CheckGiveSlot(UID); 
	if (Slot > 2) then
		GiveLogTimeItem(UID)
		SelectMsg(UID, 2, savenum, 4808, NPC, 10, 101);
	else
		SelectMsg(UID, 2, savenum, 4807, NPC, 10, 101);
	end
end

if (EVENT == 400) then
	SelectMsg(UID, 2, savenum, 4809, NPC, 4260, 401, 4261, 101);
end

if (EVENT == 401) then
	ItemA = HowmuchItem(UID, 379132000);
	if (ItemA < 1) then 
		SelectMsg(UID, 2, savenum, 4810, NPC, 10, 101);
	else
		Check = CheckExchange(UID, 1060)
		if (Check ==1) then   
			Roll = RollDice(UID, 20) 
			found = Roll + 1059
			RunExchange(UID, found)		     
			SelectMsg(UID, 2, savenum, 4808, NPC, 10, 101);
		else
			Ret = 1; 
		end  
	end
end

if (EVENT == 500) then
	SelectMsg(UID, 20, savenum, 4808, NPC, 10, 101);
end