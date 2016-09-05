local Ret = 0;
local NPC = 16072;

if (EVENT == 165) then
	SelectMsg(UID, 4, 449, 4667, NPC, 4006, 284, 27, 241);
end

if (EVENT == 241) then
	Ret = 1;
end

if (EVENT == 284) then
	ItemA = HowmuchItem(UID, 910143000)
	if (ItemA > 0) then
		SelectMsg(UID, 2, 449, 4669, NPC, 10, 241);
	else
		ItemB = HowmuchItem(UID, 910023000);
		if (ItemB < 5) then
			SelectMsg(UID, 2, 449, 4668, NPC, 10, 241);
		else
			Check = CheckExchange(UID, 511)
			if (Check == 1) then
				RunExchange(UID,511);	
			else
				Ret = 1; 
			end  
		end
	end
end