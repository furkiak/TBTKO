
-- [대장장이] 해파   

-- EVENT 는 100번 이상 부터 사용하라

-- UID : 서버에서 제공하는 유저번호
-- EVENT : 서버에서 제공하는 퀘스트 번호
-- STEP : 서버에서 제공하는 퀘스트 내부 단계


-- Class  함수 만들어 주세요 (직업 체크하는 함수임)
-- 1:전사, 2:로그, 3:마법사, 4: 사제
-- 1차전직	5	7	9	11
-- 2차전직	6	8	10	12


-- 위의 세가지 파라메타는 루아 실행시 항상 전역변수로 제공?

-- 지역변수 선언...
local UserClass;
local QuestNum;
local Ret = 0;
local Class;
local NPC =14301;
local savenum =104;


-- [대장장이] 해파클릭시 퀘스트 체크  

if EVENT == 240 then
   QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --해당 NPC에게 할수 있는 퀘스트가 0개 일때 
			 SelectMsg(UID, 2, -1, 241, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 Ret = 1; 
		elseif QuestNum > 1 and  QuestNum < 100 then--해당 NPC에게 할수 있는 퀘스트가 1개 일때 
          NpcMsg(UID, 242, NPC)
      else --해당 NPC에게 할수 있는 퀘스트가 1개 이상 일때 
          EVENT = QuestNum
		end
end

if EVENT == 241 then
    Ret = 1;
end

--local SHOW_MAP; -- 지도 보여주눈 함수 만들어 주세요

-----------------------------------------------------------
-- 초보갑옷 시작 
-----------------------------------------------------------
local NATION = 0;

if EVENT == 245 then
    SaveEvent(UID, 71);
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, savenum, 245, NPC, 28, 242, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- 엘모일때
   SelectMsg(UID, 1, savenum, 251, NPC, 28, 242, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 242 then
    ShowMap(UID, 8);
end

-- [대장장이] 해파   104번의 속성 0번 4번일 경우

if EVENT == 255 then
   SelectMsg(UID, 2, savenum, 255, NPC, 3002, 256, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
    
if EVENT == 256 then
   SelectMsg(UID, 4, savenum, 256, NPC, 22, 257, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 257 then
    GiveItem(UID, 110111993, 1);
    GiveItem(UID, 379255000, 1);
    SaveEvent(UID, 72);
end



-- 재료를 다 모았을 때 
local NATION = 0;--국가 체크

if EVENT == 270 then
    SaveEvent(UID, 74);
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, savenum, 271, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- 엘모일때
   SelectMsg(UID, 1, savenum, 278, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


--[대장장이] 해파   104번의 속성 1번 3번일 경우

   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 280 then
    ItemA = HowmuchItem(UID, 110111993);  
    ItemB = HowmuchItem(UID, 379255000); 
    ItemC = HowmuchItem(UID, 110111994); 
    if ItemC == 0 then
        if ItemA == 0 and ItemB == 0 then
        GiveItem(UID, 110111993, 1);
        GiveItem(UID, 379255000, 1);
        SaveEvent(UID, 72);
        else
        SelectMsg(UID, 2, savenum, 281, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);      
        end
   else
        SelectMsg(UID, 2, savenum, 291, NPC, 4006, 281, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);      
   end
end


if EVENT == 281 then 
   RunExchange(UID, 8);
   SaveEvent(UID, 73);
end

-----------------------------------------------------------
-- 초보갑옷 끝
-----------------------------------------------------------

-----------------------------------------------------------
-- 전사 레벨 10 무기 시작
-----------------------------------------------------------

local savenum01 = 401;

local NATION = 0;

if EVENT == 4009 then
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, savenum01, 4018, NPC, 28, 300, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
  else -- 엘모일때
   SelectMsg(UID, 1, savenum01, 4019, NPC, 14, 300, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 4008 then
    Class = CheckClass (UID);
    if Class == 1 or Class == 5 or Class == 6 then
   ShowMap(UID, 8);
   SaveEvent(UID, 660);
    elseif Class == 2 or Class == 7 or Class == 8 then
   ShowMap(UID, 8);
   SaveEvent(UID, 665);
    elseif Class == 3 or Class == 9 or Class == 10 then
   ShowMap(UID, 8);
   SaveEvent(UID, 670);
   elseif Class == 4 or Class == 11 or Class == 12 then
   ShowMap(UID, 8);
   SaveEvent(UID, 675);
   end
end
-- [대장장이] 해파   104번의 속성 0번 4번일 경우

if EVENT == 4011 then
   SelectMsg(UID, 2, savenum01, 4020, NPC, 10, 4012, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 4012 then
   SelectMsg(UID, 4, savenum01, 4022, NPC, 22, 4013, 23, 4014, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 4013 then
    Class = CheckClass (UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 661);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 666);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 671);
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 676);
   end
end

if EVENT == 4014 then
    Class = CheckClass (UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 664);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 669);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 674);
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 679);
   end
end


-- 재료를 다 모았을 때 
local NATION = 0;--국가 체크

if EVENT == 4016 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       SaveEvent(UID, 663);
       EVENT = 4017
       elseif Class == 2 or Class == 7 or Class == 8 then
       SaveEvent(UID, 668);
       EVENT = 4017
       elseif Class == 3 or Class == 9 or Class == 10 then
       SaveEvent(UID, 673);
       EVENT = 4017
      elseif Class == 4 or Class == 11 or Class == 12 then
       SaveEvent(UID, 678);
       EVENT = 4017
      end
end

if EVENT == 4017 then
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, savenum01, 4026, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- 엘모일때
   SelectMsg(UID, 1, savenum01, 4027, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

--[대장장이] 해파   104번의 속성 1번 3번일 경우

   local ItemA = 0;
   local RUN_EXCHANGE ;

if EVENT == 4020 then 
    ItemA = HowmuchItem(UID, 379076000);  
      if  ItemA < 5  then
       SelectMsg(UID, 2, savenum01, 4025, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else
       SelectMsg(UID, 5, savenum01, 4028, NPC, 22, 4025, 23, 4014, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 4025 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 4021
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 4022
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 4023
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 4024
      end
end

local Check;

if EVENT == 4021 then
  Check = CheckExchange(UID, 405)
   if  Check ==1 then
   SaveEvent(UID, 662);
   RunSelectExchange(UID, 405)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 4022 then
  Check1 = CheckExchange(UID, 406)
   if  Check1 ==1 then
   SaveEvent(UID, 667);
   RunSelectExchange(UID, 406)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 4023 then
  Check2 = CheckExchange(UID, 407)
   if  Check2 ==1 then
   SaveEvent(UID, 672);
   RunSelectExchange(UID, 407)
   else
  Ret = 1;	
  end	 
end

local Check3;

if EVENT == 4024 then
  Check3 = CheckExchange(UID, 408)
   if  Check3 ==1 then
   SaveEvent(UID, 677);
   RunSelectExchange(UID, 408)
   else
  Ret = 1;	
  end	 
end


-----------------------------------------------------------
-- 전사 레벨 10 무기 끝 
-----------------------------------------------------------
-----------------------------------------------------------
-- 케쿤 방어구 시작 
-----------------------------------------------------------
local NATION = 0;

if EVENT == 301 then
   SaveEvent(UID, 360);
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, 127, 593, NPC, 28, 300, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
  else -- 엘모일때
   SelectMsg(UID, 1, 127, 594, NPC, 14, 300, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 300 then
   ShowMap(UID, 8);
end


-- [대장장이] 해파   127번의 속성 0번 4번일 경우

if EVENT == 302 then
   SelectMsg(UID, 2, 127, 595, NPC, 10, 303, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 303 then
   SelectMsg(UID, 4, 127, 596, NPC, 22, 304, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 304 then
    SaveEvent(UID, 361);
end

-- 재료를 다 모았을 때 
local NATION = 0;--국가 체크

if EVENT == 306 then
   SaveEvent(UID, 363);
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, 127, 597, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- 엘모일때
   SelectMsg(UID, 1, 127, 598, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


--[대장장이] 해파   127번의 속성 1번 3번일 경우

   local ItemA = 0;
   local ItemB = 0;
   local RUN_EXCHANGE ;

if EVENT == 308 then 
    ItemB = HowmuchItem(UID, 910118000);  
      if ItemB < 5  then
       SelectMsg(UID, 2, 127, 600, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB >= 5 then
       SelectMsg(UID, 2, 127, 601, NPC, 41, 309, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end


local Check;

if EVENT == 309 then
  Check = CheckExchange(UID, 56)
   if  Check ==1 then
   SaveEvent(UID, 362);
   RunExchange(UID, 56)
   else
  Ret = 1;	
  end	 
end


   
----------------------------------------------------------
-- 케쿤 방어구 끝 
-----------------------------------------------------------

-----------------------------------------------------------
-- 16레벨 무기
-----------------------------------------------------------

local NATION = 0;

if EVENT == 313 then
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, 128, 603, NPC, 28, 314, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
  else -- 엘모일때
   SelectMsg(UID, 1, 128, 604, NPC, 14, 314, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 314 then
    Class = CheckClass (UID);
    if Class == 1 or Class == 5 or Class == 6 then
   ShowMap(UID, 8);
   SaveEvent(UID, 382);
    elseif Class == 2 or Class == 7 or Class == 8 then
   ShowMap(UID, 8);
   SaveEvent(UID, 387);
    elseif Class == 3 or Class == 9 or Class == 10 then
   ShowMap(UID, 8);
   SaveEvent(UID, 392);
   elseif Class == 4 or Class == 11 or Class == 12 then
   ShowMap(UID, 8);
   SaveEvent(UID, 397);
   end
end


-- [대장장이] 해파   127번의 속성 0번 4번일 경우

if EVENT == 315 then
   SelectMsg(UID, 2, 128, 605, NPC, 10, 316, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 316 then
   SelectMsg(UID, 4, 128, 606, NPC, 22, 317, 23, 318, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 317 then
    Class = CheckClass (UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 383);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 388);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 393);
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 398);
   end
end

if EVENT == 318 then
    Class = CheckClass (UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 386);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 391);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 393);
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 401);
   end
end


-- 재료를 다 모았을 때 
local NATION = 0;--국가 체크

if EVENT == 319 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       SaveEvent(UID, 385);
       EVENT = 320
       elseif Class == 2 or Class == 7 or Class == 8 then
       SaveEvent(UID, 390);
       EVENT = 320
       elseif Class == 3 or Class == 9 or Class == 10 then
       SaveEvent(UID, 395);
       EVENT = 320
      elseif Class == 4 or Class == 11 or Class == 12 then
       SaveEvent(UID, 400);
       EVENT = 320
      end
end

if EVENT == 320 then
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, 128, 607, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- 엘모일때
   SelectMsg(UID, 1, 128, 608, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


--[대장장이] 해파   127번의 속성 1번 3번일 경우

   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 321 then 
    ItemA = HowmuchItem(UID, 910017000);  
    ItemB = HowmuchItem(UID, 379076000);  
    ItemC = HowmuchItem(UID, 900000000);  
      if  ItemA < 5  then
       SelectMsg(UID, 2, 128, 609, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB < 5  then
       SelectMsg(UID, 2, 128, 610, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 1000 then
       SelectMsg(UID, 2, 128, 611, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if  ItemA >= 5 and ItemB >= 5 and ItemC >= 1000 then
       SelectMsg(UID, 5, 128, 612, NPC, 22, 322, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 322 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 323
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 324
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 325
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 326
      end
end

local Check;

if EVENT == 323 then
  Check = CheckExchange(UID, 60)
   if  Check ==1 then
   SaveEvent(UID, 384);
   RunSelectExchange(UID, 60)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 324 then
  Check1 = CheckExchange(UID, 61)
   if  Check1 ==1 then
   SaveEvent(UID, 389);
   RunSelectExchange(UID, 61)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 325 then
  Check2 = CheckExchange(UID, 62)
   if  Check2 ==1 then
   SaveEvent(UID, 394);
   RunSelectExchange(UID, 62)
   else
  Ret = 1;	
  end	 
end

local Check3;

if EVENT == 326 then
  Check3 = CheckExchange(UID, 63)
   if  Check3 ==1 then
   SaveEvent(UID, 399);
   RunSelectExchange(UID, 63)
   else
  Ret = 1;	
  end	 
end

-----------------------------------------------------------
-- 16레벨 무기 끝
-----------------------------------------------------------

-------------------------------
------늑대인간의 송곳니 수집----------
-------------------------------

local NATION = 0;

if EVENT == 327 then
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, 129, 614, NPC, 28, 328, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
  else -- 엘모일때
   SelectMsg(UID, 1, 129, 615, NPC, 14, 328, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 328 then
   ShowMap(UID, 8);
   SaveEvent(UID, 404);
end

--  102번의 속성 0번 4번일 경우

if EVENT == 329 then
   SelectMsg(UID, 2, 129, 616, NPC, 10, 330, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 330 then
   SelectMsg(UID, 4, 129, 617, NPC, 22, 331, 23, 332, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 331 then
   SaveEvent(UID, 405);
end

if EVENT == 332 then
   SaveEvent(UID, 408);
end

-- 재료를 다 모았을 때 
local NATION = 0;--국가 체크

if EVENT == 333 then
   SaveEvent(UID, 407);
   NATION = CheckNation(UID);
   if NATION == 1 then -- 카루스 일때
      SelectMsg(UID, 1, 129, 618, NPC, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- 엘모일때
      SelectMsg(UID, 1, 129, 619, NPC, 21, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


local ITEM_COUNT=0;
local RUN_EXCHANGE ;--재료 교체 함수 만들어 주세요 

if EVENT == 335 then
   ITEM_COUNT = HowmuchItem(UID, 910020000);
   if  ITEM_COUNT <= 4 then -- 재료 없을때
      SelectMsg(UID, 2, 129, 620, NPC, 18, 336, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      elseif ITEM_COUNT  > 4 then-- 재료 있을때
          SelectMsg(UID, 2, 129, 621, NPC, 41, 337, 27, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
           
   end
end

if EVENT == 336 then
   ShowMap(UID, 35);
end

local Check;

if EVENT == 337 then
  Check = CheckExchange(UID, 64)
   if  Check ==1 then
      SaveEvent(UID, 408);
      RunExchange(UID, 64);       
   else
  Ret = 1;	
  end	 
end
-------------------------------
------파멸의 갑옷 --
-------------------------------

local NATION = 0;

if EVENT == 338 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
      SaveEvent(UID, 411);
       EVENT = 339
       elseif Class == 2 or Class == 7 or Class == 8 then
      SaveEvent(UID, 412);
       EVENT = 339
       elseif Class == 3 or Class == 9 or Class == 10 then
      SaveEvent(UID, 413);
       EVENT = 339
      elseif Class == 4 or Class == 11 or Class == 12 then
      SaveEvent(UID, 414);
       EVENT = 339
      end
end

if EVENT == 339 then
         
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, 130, 623, NPC, 28, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
  else -- 엘모일때
   SelectMsg(UID, 1, 130, 624, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

-- [대장장이] 해파   127번의 속성 0번 4번일 경우

--파멸의 갑옷 상의 시작

if EVENT == 340 then--상의, 하의 , 투구, 장갑, 신발
   SelectMsg(UID, 3, 130, 625, NPC, 36, 341, 37,  350 , 38, 356, 39, 363, 40, 370, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 341 then
   SelectMsg(UID, 4, 130, 626, NPC, 22, 343, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


--[대장장이] 해파  교환

   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 343 then 
    ItemA = HowmuchItem(UID, 379071000);  
    ItemB = HowmuchItem(UID, 379076000);  
    ItemC = HowmuchItem(UID, 900000000);  
      if  ItemA < 7  then
       SelectMsg(UID, 2, 130, 627, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB < 15  then
       SelectMsg(UID, 2, 130, 628, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 500000 then
       SelectMsg(UID, 2, 130, 629, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if  ItemA >= 7 and ItemB >= 15 and ItemC >= 500000 then
       SelectMsg(UID, 2, 130, 630, NPC, 22, 345, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 345 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 346
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 347
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 348
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 349
      end
end

local Check;

if EVENT == 346 then
  Check = CheckExchange(UID, 65)
   if  Check ==1 then
   RunExchange(UID, 65)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 347 then
  Check1 = CheckExchange(UID, 66)
   if  Check1 ==1 then
   RunExchange(UID, 66)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 348 then
  Check2 = CheckExchange(UID, 67)
   if  Check2 ==1 then
   RunExchange(UID, 67)
   else
  Ret = 1;	
  end	 
end


local Check3;

if EVENT == 349 then
  Check3 = CheckExchange(UID, 68)
   if  Check3 ==1 then
   RunExchange(UID, 68)
   else
  Ret = 1;	
  end	 
end



--파멸의 갑옷 상의 끝

--파멸의 갑옷 하의 시?
if EVENT == 350 then
   SelectMsg(UID, 4, 131, 631, NPC, 22, 351, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end



--[대장장이] 해파  교환

   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 351 then 
    ItemA = HowmuchItem(UID, 379071000);  
    ItemB = HowmuchItem(UID, 379076000);  
    ItemC = HowmuchItem(UID, 900000000);  
      if  ItemA < 5  then
       SelectMsg(UID, 2, 131, 632, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB < 12  then
       SelectMsg(UID, 2, 131, 633, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 500000 then
       SelectMsg(UID, 2, 131, 634, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if  ItemA >= 5 and ItemB >= 12 and ItemC >= 500000 then
       SelectMsg(UID, 2, 131, 635, NPC, 22, 390, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 390 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 352
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 353
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 354
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 355
      end
end

local Check;

if EVENT == 352 then
  Check = CheckExchange(UID, 69)
   if  Check ==1 then
   RunExchange(UID, 69)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 353 then
  Check1 = CheckExchange(UID, 70)
   if  Check1 ==1 then
   RunExchange(UID, 70)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 354 then
  Check2 = CheckExchange(UID, 71)
   if  Check2 ==1 then
   RunExchange(UID, 71)
   else
  Ret = 1;	
  end	 
end


local Check3;

if EVENT == 355 then
  Check3 = CheckExchange(UID, 72)
   if  Check3 ==1 then
   RunExchange(UID, 72)
   else
  Ret = 1;	
  end	 
end

--파멸의 갑옷 하의 끝

--파멸의 갑옷 투구 시작
if EVENT == 356 then
   SelectMsg(UID, 4, 132, 636, NPC, 22, 357, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end




--[대장장이] 해파  교환

   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 357 then 
    ItemA = HowmuchItem(UID, 379071000);  
    ItemB = HowmuchItem(UID, 379076000);  
    ItemC = HowmuchItem(UID, 900000000);  
      if  ItemA < 4  then
       SelectMsg(UID, 2, 132, 637, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB < 9  then
       SelectMsg(UID, 2, 132, 638, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 500000 then
       SelectMsg(UID, 2, 132, 639, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if  ItemA >= 4 and ItemB >= 9 and ItemC >= 500000 then
       SelectMsg(UID, 2, 132, 640, NPC, 22, 358, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 358 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 359
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 360
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 361
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 362
      end
end

local Check;

if EVENT == 359 then
  Check = CheckExchange(UID, 73)
   if  Check ==1 then
   RunExchange(UID, 73)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 360 then
  Check1 = CheckExchange(UID, 74)
   if  Check1 ==1 then
   RunExchange(UID, 74)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 361 then
  Check2 = CheckExchange(UID, 75)
   if  Check2 ==1 then
   RunExchange(UID, 75)
   else
  Ret = 1;	
  end	 
end


local Check3;

if EVENT == 362 then
  Check3 = CheckExchange(UID, 76)
   if  Check3 ==1 then
   RunExchange(UID, 76)
   else
  Ret = 1;	
  end	 
end

--파멸의 갑옷 투구 끝

-- 파멸의 갑옷 건틀렛 시작
if EVENT == 363 then
   SelectMsg(UID, 4, 133, 641, NPC, 22, 364, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


--[대장장이] 해파  교환

   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 364 then 
    ItemA = HowmuchItem(UID, 379071000);  
    ItemB = HowmuchItem(UID, 379076000);  
    ItemC = HowmuchItem(UID, 900000000);  
      if  ItemA < 3  then
       SelectMsg(UID, 2, 133, 642, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB < 6  then
       SelectMsg(UID, 2, 133, 643, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 500000 then
       SelectMsg(UID, 2, 133, 644, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if  ItemA >= 3 and ItemB >= 6 and ItemC >= 500000 then
       SelectMsg(UID, 2, 133, 645, NPC, 22, 365, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 365 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 366
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 367
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 368
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 369
      end
end

local Check;

if EVENT == 366 then
  Check = CheckExchange(UID, 77)
   if  Check ==1 then
   RunExchange(UID, 77)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 367 then
  Check1 = CheckExchange(UID, 78)
   if  Check1 ==1 then
   RunExchange(UID, 78)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 368 then
  Check2 = CheckExchange(UID, 79)
   if  Check2 ==1 then
   RunExchange(UID, 79)
   else
  Ret = 1;	
  end	 
end


local Check3;

if EVENT == 369 then
  Check3 = CheckExchange(UID, 80)
   if  Check3 ==1 then
   RunExchange(UID, 80)
   else
  Ret = 1;	
  end	 
end

--파멸의 갑옷 건틀렛 끝 

-- 파멸의 갑옷 부츠 시작

if EVENT == 370 then
   SelectMsg(UID, 4, 134, 646, NPC, 22, 371, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end





--[대장장이] 해파  교환

   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 371 then 
    ItemA = HowmuchItem(UID, 379071000);  
    ItemB = HowmuchItem(UID, 379076000);  
    ItemC = HowmuchItem(UID, 900000000);  
      if  ItemA < 3  then
       SelectMsg(UID, 2, 134, 647, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB < 3  then
       SelectMsg(UID, 2, 134, 648, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 500000 then
       SelectMsg(UID, 2, 134, 649, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if  ItemA >= 3 and ItemB >= 3 and ItemC >= 500000 then
       SelectMsg(UID, 2, 134, 650, NPC, 22, 391, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 391 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 392
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 393
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 394
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 395
      end
end

local Check;

if EVENT == 392 then
  Check = CheckExchange(UID, 81)
   if  Check ==1 then
   RunExchange(UID, 81)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 393 then
  Check1 = CheckExchange(UID, 82)
   if  Check1 ==1 then
   RunExchange(UID, 82)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 394 then
  Check2 = CheckExchange(UID, 83)
   if  Check2 ==1 then
   RunExchange(UID, 83)
   else
  Ret = 1;	
  end	 
end


local Check3;

if EVENT == 395 then
  Check3 = CheckExchange(UID, 84)
   if  Check3 ==1 then
   RunExchange(UID, 84)
   else
  Ret = 1;	
  end	 
end
-- 파멸의 갑옷 부츠 끝
-------------------------------
------파멸의 갑옷 - 상의 끝--
-------------------------------

-------------------------------
------고블린 갑옷--------------
-------------------------------

local NATION = 0;

if EVENT == 400 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
      SaveEvent(UID, 626);
       EVENT = 396
       elseif Class == 2 or Class == 7 or Class == 8 then
      SaveEvent(UID, 627);
       EVENT = 396
       elseif Class == 3 or Class == 9 or Class == 10 then
      SaveEvent(UID, 628);
       EVENT = 396
      elseif Class == 4 or Class == 11 or Class == 12 then
      SaveEvent(UID, 629);
       EVENT = 396
      end
end

if EVENT == 396 then
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, 141, 1200, NPC, 28, 401, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
  else -- 엘모일때
   SelectMsg(UID, 1, 141, 1201, NPC, 14, 401, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 401 then
   ShowMap(UID, 8);
end


-- [대장장이] 해파   127번의 속성 0번 4번일 경우

--파멸의 갑옷 상의 시작

if EVENT == 402 then--상의, 하의 , 투구, 장갑, 신발
   SelectMsg(UID, 3, 141, 1202, NPC, 42, 403, 43,  411 , 44, 419, 45, 427, 46, 435, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 403 then
   SelectMsg(UID, 4, 141, 1203, NPC, 22, 404, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


--[대장장이] 해파  교환

   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 404 then 
    ItemB = HowmuchItem(UID, 379049000);  
    ItemC = HowmuchItem(UID, 900000000);  
      if ItemB < 5  then
       SelectMsg(UID, 2, 141, 1204, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 100000 then
       SelectMsg(UID, 2, 141, 1205, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB >= 5 and ItemC >= 100000 then
       SelectMsg(UID, 2, 141, 1206, NPC, 22, 405, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 405 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 406
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 407
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 408
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 409
      end
end

local Check;

if EVENT == 406 then
  Check = CheckExchange(UID, 601)
   if  Check ==1 then
   RunExchange(UID, 601)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 407 then
  Check1 = CheckExchange(UID, 602)
   if  Check1 ==1 then
   RunExchange(UID, 602)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 408 then
  Check2 = CheckExchange(UID, 603)
   if  Check2 ==1 then
   RunExchange(UID, 603)
   else
  Ret = 1;	
  end	 
end


local Check3;

if EVENT == 409 then
  Check3 = CheckExchange(UID, 604)
   if  Check3 ==1 then
   RunExchange(UID, 604)
   else
  Ret = 1;	
  end	 
end



--파멸의 갑옷 상의 끝

--파멸의 갑옷 하의 시?
if EVENT == 411 then
   SelectMsg(UID, 4, 142, 1207, NPC, 22, 412, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end



--[대장장이] 해파  교환

   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 412 then 

    ItemB = HowmuchItem(UID, 379050000);  
    ItemC = HowmuchItem(UID, 900000000);  
     if ItemB < 5  then
       SelectMsg(UID, 2, 142, 1208, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 80000 then
       SelectMsg(UID, 2, 142, 1209, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB >= 5 and ItemC >= 80000 then
       SelectMsg(UID, 2, 142, 1210, NPC, 22, 413, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT ==413 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 414
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT =415
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT =416
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 417
      end
end

local Check;

if EVENT == 414 then
  Check = CheckExchange(UID, 605)
   if  Check ==1 then
   RunExchange(UID, 605)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 415 then
  Check1 = CheckExchange(UID, 606)
   if  Check1 ==1 then
   RunExchange(UID, 606)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 416 then
  Check2 = CheckExchange(UID, 607)
   if  Check2 ==1 then
   RunExchange(UID, 607)
   else
  Ret = 1;	
  end	 
end


local Check3;

if EVENT == 417 then
  Check3 = CheckExchange(UID, 608)
   if  Check3 ==1 then
   RunExchange(UID, 608)
   else
  Ret = 1;	
  end	 
end

--파멸의 갑옷 하의 끝

--파멸의 갑옷 투구 시작
if EVENT == 419 then
   SelectMsg(UID, 4, 143, 1211, NPC, 22, 420, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end




--[대장장이] 해파  교환

   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 420 then 
    ItemB = HowmuchItem(UID, 379051000);  
    ItemC = HowmuchItem(UID, 900000000);  
    if ItemB < 5  then
       SelectMsg(UID, 2, 143, 1212, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 50000 then
       SelectMsg(UID, 2, 143, 1213, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB >= 5 and ItemC >= 50000 then
       SelectMsg(UID, 2, 143, 1214, NPC, 22, 421, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 421 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 422
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 423
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 424
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 425
      end
end

local Check;

if EVENT == 422 then
  Check = CheckExchange(UID, 609)
   if  Check ==1 then
   RunExchange(UID, 609)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 423 then
  Check1 = CheckExchange(UID, 610)
   if  Check1 ==1 then
   RunExchange(UID, 610)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 424 then
  Check2 = CheckExchange(UID, 611)
   if  Check2 ==1 then
   RunExchange(UID, 611)
   else
  Ret = 1;	
  end	 
end


local Check3;

if EVENT ==425 then
  Check3 = CheckExchange(UID, 612)
   if  Check3 ==1 then
   RunExchange(UID, 612)
   else
  Ret = 1;	
  end	 
end

--파멸의 갑옷 투구 끝

-- 파멸의 갑옷 건틀렛 시작
if EVENT == 427 then
   SelectMsg(UID, 4, 144, 1215, NPC, 22, 428, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


--[대장장이] 해파  교환


   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 428 then 
    ItemB = HowmuchItem(UID, 379052000);  
    ItemC = HowmuchItem(UID, 900000000);  
      if ItemB < 5  then
       SelectMsg(UID, 2, 144, 1216, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 40000 then
       SelectMsg(UID, 2, 144, 1217, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB >= 5 and ItemC >= 40000 then
       SelectMsg(UID, 2, 144, 1218, NPC, 22, 429, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 429 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 430
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 431
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 432
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 433
      end
end

local Check;

if EVENT == 430 then
  Check = CheckExchange(UID, 613)
   if  Check ==1 then
   RunExchange(UID, 613)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 431 then
  Check1 = CheckExchange(UID, 614)
   if  Check1 ==1 then
   RunExchange(UID, 614)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 432 then
  Check2 = CheckExchange(UID, 615)
   if  Check2 ==1 then
   RunExchange(UID, 615)
   else
  Ret = 1;	
  end	 
end


local Check3;

if EVENT == 433 then
  Check3 = CheckExchange(UID, 616)
   if  Check3 ==1 then
   RunExchange(UID, 616)
   else
  Ret = 1;	
  end	 
end

--파멸의 갑옷 건틀렛 끝 

-- 파멸의 갑옷 부츠 시작

if EVENT == 435 then
   SelectMsg(UID, 4, 145, 1219, NPC, 22, 436, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end





--[대장장이] 해파  교환

   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 436 then 
    ItemB = HowmuchItem(UID, 379053000);  
    ItemC = HowmuchItem(UID, 900000000);  
      if ItemB < 5  then
       SelectMsg(UID, 2, 145, 1220, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 30000 then
       SelectMsg(UID, 2, 145, 1221, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB >= 5 and ItemC >= 30000 then
       SelectMsg(UID, 2, 145, 1222, NPC, 22, 437, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 437 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 438
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 439
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 440
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 441
      end
end

local Check;

if EVENT == 438 then
  Check = CheckExchange(UID, 617)
   if  Check ==1 then
   RunExchange(UID, 617)
   else
  Ret = 1;	
  end	 
end

local Check1;

if EVENT == 439 then
  Check1 = CheckExchange(UID, 618)
   if  Check1 ==1 then
   RunExchange(UID, 618)
   else
  Ret = 1;	
  end	 
end

local Check2;

if EVENT == 440 then
  Check2 = CheckExchange(UID, 619)
   if  Check2 ==1 then
   RunExchange(UID, 619)
   else
  Ret = 1;	
  end	 
end


local Check3;

if EVENT == 441 then
  Check3 = CheckExchange(UID, 620)
   if  Check3 ==1 then
   RunExchange(UID, 620)
   else
  Ret = 1;	
  end	 
end
-- 고블린 갑옷 부츠 끝
-------------------------------
------고블린 갑옷 끝--
-------------------------------

-------------------------------
------탈리아 스킨--------------
-------------------------------

local NATION = 0;

if EVENT == 450 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
      SaveEvent(UID, 648);
       EVENT = 442
       elseif Class == 2 or Class == 7 or Class == 8 then
      SaveEvent(UID, 649);
       EVENT = 442
       elseif Class == 3 or Class == 9 or Class == 10 then
      SaveEvent(UID, 650);
       EVENT = 442
      elseif Class == 4 or Class == 11 or Class == 12 then
      SaveEvent(UID, 651)
       EVENT = 442
      end
end

if EVENT == 442 then
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, 146, 1284, NPC, 56, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
  else -- 엘모일때
   SelectMsg(UID, 1, 146, 1285, NPC, 57, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

-- [대장장이] 해파   127번의 속성 0번 4번일 경우

--탈리아 스킨시작

if EVENT == 451 then--상의,
   SelectMsg(UID, 3, 146, 1286, NPC, 6002, 452, -1,  -1 , -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 452 then
   SelectMsg(UID, 4, 146, 1287, NPC, 22, 461, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


--[대장장이] 해파  교환


if EVENT == 461 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 453
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 458
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 459
      elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 460
      end
end


   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

--전사 교환
if EVENT == 453 then 
    ItemA = HowmuchItem(UID, 203011337);  
    ItemB = HowmuchItem(UID, 379072000);  
    ItemC = HowmuchItem(UID, 389075000);  
      if  ItemA < 1  then
       SelectMsg(UID, 2, 146, 1288, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB < 5  then
       SelectMsg(UID, 2, 146, 1289, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 1 then
       SelectMsg(UID, 2, 146, 1290, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if  ItemA >= 1 and ItemB >= 5 and ItemC >= 1 then
       SelectMsg(UID, 2, 146, 1291, NPC, 50, 454, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

local Check;
   
if EVENT == 454 then
  Check = CheckExchange(UID, 100)
   if  Check ==1 then
      Roll = RollDice(UID, 2) 
      if Roll == 1 then
      RunExchange(UID, 100)
      elseif Roll == 2 then
      RunExchange(UID, 101)
      end
   else
   Ret = 1;	
   end	 
end


   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 458 then 
    ItemA = HowmuchItem(UID, 243011338);  
    ItemB = HowmuchItem(UID, 379072000);  
    ItemC = HowmuchItem(UID, 389075000);  
      if  ItemA < 1  then
       SelectMsg(UID, 2, 146, 1288, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB < 5  then
       SelectMsg(UID, 2, 146, 1289, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 1 then
       SelectMsg(UID, 2, 146, 1290, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if  ItemA >= 1 and ItemB >= 5 and ItemC >= 1 then
       SelectMsg(UID, 2, 146, 1291, NPC, 50, 455, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

local Check1;

if EVENT == 455 then
  Check1 = CheckExchange(UID, 102)
   if  Check1 ==1 then
      Roll = RollDice(UID, 2) 
      if Roll == 1 then
      RunExchange(UID, 102)
      elseif Roll == 2 then
      RunExchange(UID, 103)
      end
   else
  Ret = 1;	
  end	 
end

   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 459 then 
    ItemA = HowmuchItem(UID, 263011339);  
    ItemB = HowmuchItem(UID, 379072000);  
    ItemC = HowmuchItem(UID, 389075000);  
      if  ItemA < 1  then
       SelectMsg(UID, 2, 146, 1288, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB < 5  then
       SelectMsg(UID, 2, 146, 1289, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 1 then
       SelectMsg(UID, 2, 146, 1290, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if  ItemA >= 1 and ItemB >= 5 and ItemC >= 1 then
       SelectMsg(UID, 2, 146, 1291, NPC, 50, 456, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

local Check2;

if EVENT == 456 then
  Check2 = CheckExchange(UID, 104)
   if  Check2 ==1 then
      Roll = RollDice(UID, 2) 
      if Roll == 1 then
      RunExchange(UID, 104)
      elseif Roll == 2 then
      RunExchange(UID, 105)
      end
   else
  Ret = 1;	
  end	 
end

   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

if EVENT == 460 then 
    ItemA = HowmuchItem(UID, 283011340);  
    ItemB = HowmuchItem(UID, 379072000);  
    ItemC = HowmuchItem(UID, 389075000);  
      if  ItemA < 1  then
       SelectMsg(UID, 2, 146, 1288, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemB < 5  then
       SelectMsg(UID, 2, 146, 1289, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if ItemC < 0 then
       SelectMsg(UID, 2, 146, 1290, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
      if  ItemA >= 1 and ItemB >= 5 and ItemC >= 1 then
       SelectMsg(UID, 2, 146, 1291, NPC, 50, 457, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end


local Check3;

if EVENT == 457 then
  Check3 = CheckExchange(UID, 106)
   if  Check3 ==1 then
      Roll = RollDice(UID, 2) 
      if Roll == 1 then
      RunExchange(UID, 106)
      elseif Roll == 2 then
      RunExchange(UID, 107)
      end
   else
  Ret = 1;	
  end	 
end


------------------------------
--탈리아 스킨 끝-------------
------------------------------

-------------------------------
------샤일란의 뼈------------
-------------------------------

local NATION = 0;

if EVENT == 470 then
   SaveEvent(UID, 654);
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, 147, 1300, NPC, 56, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
  else -- 엘모일때
   SelectMsg(UID, 1, 147, 1301, NPC, 57, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

-- [대장장이] 해파   147번의 속성 0번 4번일 경우

--탈리아 스킨시작

if EVENT == 471 then--상의,
   SelectMsg(UID, 3, 147, 1302, NPC, 6002, 472, -1,  -1 , -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 472 then
   SelectMsg(UID, 4, 147, 1303, NPC, 22, 473, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 473 then
   SaveEvent(UID, 655);
end

-- 재료를 다 모았을 때 
local NATION = 0;--국가 체크

if EVENT == 483 then
    SaveEvent(UID, 657);
   NATION = CheckNation(UID);
   if NATION == 1 then --카루스 일때 
   SelectMsg(UID, 1, savenum, 1305, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- 엘모일때
   SelectMsg(UID, 1, savenum, 1306, NPC, 14, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end




--[대장장이] 해파  147번의 속성 1번 3번일 경우


   local ItemA = 0;
   local ItemB = 0;
   local ItemC = 0;
   local RUN_EXCHANGE ;

--전사 교환
if EVENT == 474 then 
    ItemA = HowmuchItem(UID, 379077000);  
      if  ItemA < 3 then
       SelectMsg(UID, 2, 147, 1304, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else
       SelectMsg(UID, 2, 147, 1307, NPC, 50, 478, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

local Check;
   
if EVENT == 478 then
  Check = CheckExchange(UID, 108)
   if  Check ==1 then
    SaveEvent(UID, 656);
    RunExchange(UID, 108)
   else
   Ret = 1;	
   end	 
end


------------------------------
--샤일란의 뼈 끝 ------------
------------------------------


return Ret;