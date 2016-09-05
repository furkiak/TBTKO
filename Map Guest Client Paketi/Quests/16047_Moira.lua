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
-- 잊혀진 신전의 보물 상자 교체 시작 
-----------------------------------------------------------

   local ItemA = 0;
   local ItemB = 0;
   local RUN_EXCHANGE ;
   local savenum = 402 ;

if EVENT == 280 then
	ItemA = HowmuchItem(UID, 379156000);  -- 1등급
	ItemB = HowmuchItem(UID, 379155000);  -- 2등급
	  if  ItemA == 0 and  ItemB == 0  then -- 상자가 없을때
	   SelectMsg(UID, 2, savenum, 4032, NPC, 10, 241);
	  elseif ItemA > 0  and  ItemB == 0 then-- 1등급 보물 상자가 있을때 
	   EVENT =  282
	  elseif ItemB > 0 and  ItemA == 0 then-- 2등급 보물 상자가 있을때
	   EVENT =  283
	  else-- 1등급, 2등급 보물 상자가 있을때 
	   SelectMsg(UID, 2, savenum, 4035, NPC, 4007, 282, 4008, 283);
	  end
end

   local Roll = 0;
   local found;

if EVENT == 282 then -- 1등급 보물 상자
   SelectMsg(UID, 4, savenum, 4034, NPC, 4006, 284, 27, 241);
end

if EVENT == 283 then -- 2등급 보물 상자 ?
   SelectMsg(UID, 4, 403, 4033, NPC, 4006, 285, 27, 241);
end

if EVENT == 284 then -- 1등급
Check = CheckExchange(UID, 410)
   if  Check == true then   
   Roll = RollDice(UID, 20) 
   found = Roll + 409
   RunExchange(UID, found);		 
   else
   Ret = 1; 
   end  
end


if EVENT == 285 then -- 2등급
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
-- 잊혀진 신전의 보물 상자 교체 끝 
-----------------------------------------------------------
-----------------------------------------------------------
-- 심연의 보석 시작
-----------------------------------------------------------

   local ItemA = 0;
   local ItemB = 0;
   local savenum = 409 ;

if EVENT == 300 then
	ItemA = HowmuchItem(UID, 379106000);  -- 심연의 보석
	if  ItemA == 0 then -- 심연의 보석이 없을때
	SelectMsg(UID, 2, savenum, 4142, NPC, 10, 241);
	else
	SelectMsg(UID, 2, savenum, 4141, NPC, 4006, 301, 4076, 241);
	end
end

   local Roll = 0;
   local found = 0;

if EVENT == 301 then  -- 심연의 보석
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
-- 심연의 보석 시작
-----------------------------------------------------------

-----------------------------------------------------------
-- 복권 시작 
-----------------------------------------------------------

   local ItemA = 0;
   local RUN_EXCHANGE ;
   local savenum = 448 ;

if EVENT == 400 then
	ItemA = HowmuchItem(UID, 379095000);  -- 복권 
	if  ItemA == 0 then -- 복권이 없을때 
	SelectMsg(UID, 2, savenum, 4664, NPC, 10, 241);
	else
    SelectMsg(UID, 4, savenum, 4665, NPC, 4006, 401, 27, 241);
	end
end

   local Roll = 0;
   local found;


if EVENT == 401 then -- 복권 
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
-- 복권 끝 
-----------------------------------------------------------
-----------------------------------------------------------
-- 복권 시작 
-----------------------------------------------------------

   local ItemA = 0;
   local RUN_EXCHANGE ;
   local savenum = 557 ;

if EVENT == 500 then
	ItemA = HowmuchItem(UID, 379154000);
	  if  ItemA == 0 then -- 상자가 없을때
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
-- 복권 끝 
-----------------------------------------------------------

return Ret;