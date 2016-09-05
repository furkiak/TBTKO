local Ret = 0;
local NPC = 11810;
local Savenum = 400;

if (EVENT == 4000) then
	Class = CheckClass (UID);
	if (Class == 4 or Class == 11 or Class == 12) then
		SkillPoint = CheckSkillPoint(UID, 5);
		if (SkillPoint > 59) then 
			SelectMsg(UID, 3, -1, 4001, NPC, 4000, 4007, 4001, 4010, 4002, 4013, 4003, 4016, 47, 4002);
		elseif (SkillPoint > 49) then 
			SelectMsg(UID, 3, -1, 4001, NPC, 4000, 4007, 4001, 4010, 4002, 4013, 47, 4002);
		elseif (SkillPoint > 39) then 
			SelectMsg(UID, 3, -1, 4001, NPC, 4000, 4007, 4001, 4010, 47, 4002);
		elseif (SkillPoint > 29) then 
			SelectMsg(UID, 2, -1, 4001, NPC, 4000, 4007, 47, 4002);
		else  
			SelectMsg(UID, 2, -1, 4000, NPC, 10, 4002);
		end
	else
		SelectMsg(UID, 2, -1, 4000, NPC, 10, 4002);
	end
end

if (EVENT == 4002) then
	Ret = 1;
end

if (EVENT == 4007) then
	Check = CheckExchange(UID, 400)
	if (Check) then
		min_count = GetMaxExchange(UID, 400);
		if (min_count > 0) then
			ItemA = HowmuchItem(UID, 389010000);  
			ItemB = HowmuchItem(UID, 379001000); 
			if (ItemA == 0) then
				SelectMsg(UID, 2, Savenum, 4010, NPC, 10, 4002);
			elseif (ItemB == 0)  then
				SelectMsg(UID, 2, Savenum, 4011, NPC, 10, 4002);
			else
				SelectMsg(UID, 4, Savenum, 4006, NPC, 4004, 4008, 4005, 4002);
			end
		else
			SelectMsg(UID, 2, Savenum, 4007, NPC, 10, 4002);
		end
	else
		Ret = 1; 
	end  
end

if (EVENT == 4008) then
	min_count = GetMaxExchange(UID, 400);
	RunCountExchange(UID, 400, min_count);	
end

local Savenum = 410;

if (EVENT == 4010) then
	Check = CheckExchange(UID, 401)
	if (Check) then
		min_count = GetMaxExchange(UID, 401);
		if (min_count > 0) then
			ItemA = HowmuchItem(UID, 389010000);  
			ItemB = HowmuchItem(UID, 379002000); 
			if (ItemA == 0) then
				SelectMsg(UID, 2, Savenum, 4010, NPC, 10, 4002);
			elseif (ItemB == 0) then
				SelectMsg(UID, 2, Savenum, 4011, NPC, 10, 4002);
			else
				SelectMsg(UID, 4, Savenum, 4006, NPC, 4004, 4011, 4005, 4002);
			end
		else
			SelectMsg(UID, 2, Savenum, 4007, NPC, 10, 4002);
		end
	else
		Ret = 1; 
	end  
end

if (EVENT == 4011) then
	min_count = GetMaxExchange(UID, 401);
	RunCountExchange(UID, 401, min_count);	
end

local Savenum = 411;

if (EVENT == 4013) then
	Check = CheckExchange(UID, 402)
	if (Check) then
		min_count = GetMaxExchange(UID, 402);
		if (min_count > 0) then
			ItemA = HowmuchItem(UID, 389010000);  
			ItemB = HowmuchItem(UID, 379003000); 
			if (ItemA == 0) then
				SelectMsg(UID, 2, Savenum, 4010, NPC, 10, 4002);
			elseif (ItemB == 0) then
				SelectMsg(UID, 2, Savenum, 4011, NPC, 10, 4002);
			else
				SelectMsg(UID, 4, Savenum, 4006, NPC, 4004, 4014, 4005, 4002);
			end
		else
			SelectMsg(UID, 2, Savenum, 4007, NPC, 10, 4002);
		end
	else
		Ret = 1; 
	end  
end

if (EVENT == 4014) then
	min_count = GetMaxExchange(UID, 402);
	RunCountExchange(UID, 402, min_count);	
end

local Savenum = 412;

if (EVENT == 4016) then
	Check = CheckExchange(UID, 403)
	if (Check) then
		min_count = GetMaxExchange(UID, 403);
		if (min_count > 0) then
			ItemA = HowmuchItem(UID, 389010000);  
			ItemB = HowmuchItem(UID, 379004000); 
			if (ItemA == 0) then
				SelectMsg(UID, 2, Savenum, 4010, NPC, 10, 4002);
			elseif (ItemB == 0) then
				SelectMsg(UID, 2, Savenum, 4011, NPC, 10, 4002);
			else
				SelectMsg(UID, 4, Savenum, 4006, NPC, 4004, 4017, 4005, 4002);
			end
		else
			SelectMsg(UID, 2, Savenum, 4007, NPC, 10, 4002);
		end
	else
		Ret = 1; 
	end  
end

if (EVENT == 4017) then
	min_count = GetMaxExchange(UID, 403);
	RunCountExchange(UID, 403, min_count);	
end