local UserClass;
local QuestNum;
local Ret = 0;
local NPC =16047;


if EVENT == 240 then
		  NpcMsg(UID, 4031, NPC)
end

if EVENT == 241 then
	Ret = 1;
end

-----------------------------------------------------------
-- ������ ������ ���� ���� ��ü ���� 
-----------------------------------------------------------

   local ItemA = 0;
   local ItemB = 0;
   local RUN_EXCHANGE ;
   local savenum = 402 ;

if EVENT == 280 then
	ItemA = HowmuchItem(UID, 379156000);  -- 1���
	ItemB = HowmuchItem(UID, 379155000);  -- 2���
	  if  ItemA == 0 and  ItemB == 0  then -- ���ڰ� ������
	   SelectMsg(UID, 2, savenum, 4032, NPC, 10, 241);
	  elseif ItemA > 0  and  ItemB == 0 then-- 1��� ���� ���ڰ� ������ 
	   EVENT =  282
	  elseif ItemB > 0 and  ItemA == 0 then-- 2��� ���� ���ڰ� ������
	   EVENT =  283
	  else-- 1���, 2��� ���� ���ڰ� ������ 
	   SelectMsg(UID, 2, savenum, 4035, NPC, 4007, 282, 4008, 283);
	  end
end

   local Roll = 0;
   local found;

if EVENT == 282 then -- 1��� ���� ����
   SelectMsg(UID, 4, savenum, 4034, NPC, 4006, 284, 27, 241);
end

if EVENT == 283 then -- 2��� ���� ���� ?
   SelectMsg(UID, 4, 403, 4033, NPC, 4006, 285, 27, 241);
end

if EVENT == 284 then -- 1���
Check = CheckExchange(UID, 410)
   if  Check == true then   
   Roll = RollDice(UID, 20) 
   found = Roll + 409
   RunExchange(UID, found);		 
   else
   Ret = 1; 
   end  
end


if EVENT == 285 then -- 2���
Check = CheckExchange(UID, 430)
   if  Check == true then   
   Roll = RollDice(UID, 20) 
   found = Roll + 429
   RunExchange(UID, found);		 
   else
   Ret = 1; 
   end  
end

-----------------------------------------------------------
-- ������ ������ ���� ���� ��ü �� 
-----------------------------------------------------------
-----------------------------------------------------------
-- �ɿ��� ���� ����
-----------------------------------------------------------

   local ItemA = 0;
   local ItemB = 0;
   local savenum = 409 ;

if EVENT == 300 then
	ItemA = HowmuchItem(UID, 379106000);  -- �ɿ��� ����
	if  ItemA == 0 then -- �ɿ��� ������ ������
	SelectMsg(UID, 2, savenum, 4142, NPC, 10, 241);
	else
	SelectMsg(UID, 2, savenum, 4141, NPC, 4006, 301, 4076, 241);
	end
end

   local Roll = 0;
   local found = 0;

if EVENT == 301 then  -- �ɿ��� ����
Check = CheckExchange(UID, 2001)
   if  Check == true then
   Roll = RollDice(UID, 60) 
   found = Roll + 2000
   RunExchange(UID, found);	
   else
   Ret = 1; 
   end  
end

-----------------------------------------------------------
-- �ɿ��� ���� ����
-----------------------------------------------------------

-----------------------------------------------------------
-- ���� ���� 
-----------------------------------------------------------

   local ItemA = 0;
   local RUN_EXCHANGE ;
   local savenum = 448 ;

if EVENT == 400 then
	ItemA = HowmuchItem(UID, 379095000);  -- ���� 
	if  ItemA == 0 then -- ������ ������ 
	SelectMsg(UID, 2, savenum, 4664, NPC, 10, 241);
	else
    SelectMsg(UID, 4, savenum, 4665, NPC, 4006, 401, 27, 241);
	end
end

   local Roll = 0;
   local found;


if EVENT == 401 then -- ���� 
Check = CheckExchange(UID, 2070)
   if  Check == true then   
   Roll = RollDice(UID, 20) 
   found = Roll + 2069
   RunExchange(UID, found);		 
   else
   Ret = 1; 
   end  
end

-----------------------------------------------------------
-- ���� �� 
-----------------------------------------------------------
-----------------------------------------------------------
-- ���� ���� 
-----------------------------------------------------------

   local ItemA = 0;
   local RUN_EXCHANGE ;
   local savenum = 557 ;

if EVENT == 500 then
	ItemA = HowmuchItem(UID, 379154000);
	  if  ItemA == 0 then -- ���ڰ� ������
	   SelectMsg(UID, 2, savenum, 4912, NPC, 10, 241);
	  else
		SelectMsg(UID, 4, savenum, 4912, NPC, 4006, 584, 27, 241);
	  end
end

   local Roll = 0;
   local found;

if EVENT == 584 then 
Check = CheckExchange(UID, 2200)
   if  Check == true then   
   Roll = RollDice(UID, 20) 
   found = Roll + 2199
   RunExchange(UID, found);		 
   else
   Ret = 1; 
   end  
end


-----------------------------------------------------------
-- ���� �� 
-----------------------------------------------------------

return Ret;