local Ret = 0;
local NPC = 17007;

if (EVENT == 190) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 4709, NPC, 10, 101);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 4718, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 101) then
	Ret = 1;
end

local savenum = 510;

if (EVENT == 400) then
	ITEM_COUNTA = HowmuchItem(UID, 910092000);
	if (ITEM_COUNTA <= 0) then
		SelectMsg(UID, 2, savenum, 4719, NPC, 10, 101);
	else 
		Check = CheckExchange(UID, 550)
		if (Check ==1) then
			RunExchange(UID, 550);
			SaveEvent(UID, 4511);
			SelectMsg(UID, 2, savenum, 4720, NPC, 10, 401);
		else
			Ret = 1;	
		end	 
	end
end

local savenum = 511;

if (EVENT == 500) then
	ITEM_COUNTA = HowmuchItem(UID, 389158000);
	ITEM_COUNTB = HowmuchItem(UID, 900000000);   
	if (ITEM_COUNTA <= 0) then
		SelectMsg(UID, 2, savenum, 4715, NPC, 10, 101);
	else 
		if (ITEM_COUNTB < 800000) then
			SelectMsg(UID, 2, savenum, 4716, NPC, 10, 101);
		else 
			Check = CheckExchange(UID, 551)
			if (Check ==1) then
				RunExchange(UID, 551);
				SaveEvent(UID, 4514);
				SelectMsg(UID, 2, savenum, 4717, NPC, 10, 401);
			else
				Ret = 1;	
			end	 
		end
	end
end

if (EVENT == 501) then
	SelectMsg(UID, 2, savenum, 4714, NPC, 10, 101);
end