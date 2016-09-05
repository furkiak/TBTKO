-- [무명 전사]

-- EVENT 는 100번 이상 부터 사용하라

-- UID : 서버에서 제공하는 유저번호
-- EVENT : 서버에서 제공하는 퀘스트 번호
-- STEP : 서버에서 제공하는 퀘스트 내부 단계

-- 위의 세가지 파라메타는 루아 실행시 항상 전역변수로 제공?

-- 지역변수 선언...
local UserClass;
local QuestNum;
local Ret = 0;

-- [무명전사][카루] 클릭시 퀘스트 체크  

if EVENT == 190 then
	QuestNum = SearchQuest(UID, 24414);
		if QuestNum == 0 then --해당 NPC에게 할수 있는 퀘스트가 0개 일때 
          -- SelectMsg(UID, 2. -1...........)
			 SelectMsg(UID, 2, -1, 3213, 24414, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 --SetQuestStep(UID, EVENT, 1); -- 뭘 하는 걸까?
			 Ret = 1; -- 이건 왜 저장 시켜요? 그냥 RETURN은 안되나요?
		elseif QuestNum > 1 and  QuestNum < 100 then--해당 NPC에게 할수 있는 퀘스트가 1개 일때 
          NpcMsg(UID, 3200, 24414)
      else --해당 NPC에게 할수 있는 퀘스트가 1개 이상 일때 
          EVENT = QuestNum
		end
end

if EVENT == 193 then
    Ret = 1;
end

--local SHOW_MAP; -- 지도 보여주눈 함수 만들어 주세요

if EVENT == 195 then
   SelectMsg(UID, 1, 305, 3001, 24414, 28, 196, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 196 then
   ShowMap(UID, 334);
   SaveEvent(UID, 3053);
end

if EVENT == 197 then
   SelectMsg(UID, 1, 305, 3002, 24414, 28, 196, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- 무명전사 102번의 속성 0번 4번일 경우

if EVENT == 200 then
   SelectMsg(UID, 2, 305, 3201, 24414, 10, 201, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 201 then
   SelectMsg(UID, 4, 305, 3202, 24414, 22, 202, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 202 then
   SaveEvent(UID, 3054);
end

-- 재료를 다 모았을 때 
local NATION = 0;--국가 체크

if EVENT == 205 then
   SaveEvent(UID, 3056);
   NATION = CheckNation(UID);
   if NATION == 1 then -- 카루스 일때
      SelectMsg(UID, 1, 305, 3005, 24414, 3009, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- 엘모일때
      SelectMsg(UID, 1, 305, 3006, 24414, 3009, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

local ITEM_COUNT=0;
local RUN_EXCHANGE ;--재료 교체 함수 만들어 주세요 

if EVENT == 210 then
	ITEM_COUNT = GetMaxExchange(UID, 305); --exchange 테이블 인덱스값 
      if  ITEM_COUNT <= 0 then -- 재료 없을때
         SelectMsg(UID, 2, 305, 3203, 24414, 18, 213, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
         elseif ITEM_COUNT  > 0 then-- 재료 있을때
         SelectMsg(UID, 4, 305, 3204, 24414, 10, 214, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

if EVENT == 213 then
   ShowMap(UID, 335);
end

local Check;

if EVENT == 214 then
   Check = CheckExchange(UID, 305)
   if  Check ==1 then
   min_count = GetMaxExchange(UID, 305);
 	RunCountExchange(UID, 305, min_count);	
   SaveEvent(UID, 3057);
   else
  Ret = 1;	
  end	 
end

------------------------------------------------------
-- 언다잉 퇴치 시작 
------------------------------------------------------
--시드, 미셀 호출 
if EVENT == 9000 then
--  NATION = CheckNation(UID);
--  if NATION == 1 then -- 카루스 일때
      SelectMsg(UID, 1, 328, 170, 24414, 24, 9001, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 9001 then
   ShowMap(UID, 334);
   SaveEvent(UID, 7012);
end

if EVENT == 9002 then
   SelectMsg(UID, 2, 328, 172, 24414, 24, 9001, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- 320번의 속성 0번 4번일 경우 


if EVENT == 300 then
   SelectMsg(UID, 2, 328, 3205, 24414,  3006, 308, 13, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 308 then
   SelectMsg(UID, 2, 328, 3206, 24414,  3000, 301, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

local MonsterSub = 0;

if EVENT == 301 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
      SelectMsg(UID, 4, 328, 3207, 24414, 22, 302, 23, 309, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);

	else-- 몬스터 서브 퀘스트가 있을때
 		SelectMsg(UID, 2, 328, 173, 24414, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 309 then
   SelectMsg(UID, 2, 328, 3209, 24414,  10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 302 then
   SaveEvent(UID, 7013);
end

-- 재료를 다 모았을때 시드와 미셀의 또 등장 
if EVENT == 303 then
   SaveEvent(UID, 7015);
   NATION = CheckNation(UID);
   if NATION == 1 then -- 카루스 일때
      SelectMsg(UID, 1, 328, 3851, 24414, 3003, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   elseif NATION == 2 then -- 엘모일때 
      SelectMsg(UID, 1, 328, 3852, 24414, 3003, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

-- 320의 1번 3번인 경우 

local MonsterCount = 0;

if EVENT == 305 then
   MonsterCount  = CountMonsterQuestSub(UID, 1);
   if  MonsterCount < 10 then -- 사냥이 남았을때
      SelectMsg(UID, 2, 328, 3210, 24414, 10, 306, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else-- 사냥이 완료 되었을때 
      SelectMsg(UID, 4, 328, 3211, 24414, 10, 307, 27, 306, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 306 then
   ShowMap(UID, 335);
end

local Check;

if EVENT == 307 then
   Check = CheckExchange(UID, 328)
   if  Check ==1 then
   RunExchange(UID, 328);
   SaveEvent(UID, 7014);
   else
  Ret = 1;	
  end	 
end

------------------------------------------------------
-- 언다잉 퇴치 끝 
------------------------------------------------------

-------------------------------
------- 라튼 아이즈 퇴치 ------
-------------------------------

if EVENT == 8400 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8469);
    EVENT = 8401
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8474);
    EVENT = 8401
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8479);
    EVENT = 8401
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8484);
     EVENT = 8401
   end
end

if EVENT == 8401 then
    SelectMsg(UID, 1, 831, 8311, 24414, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

local MonsterSub = 0;

if EVENT == 8402 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 831, 8312, 24414, 10, 8405, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 831, 8313, 24414, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 8405 then
    SelectMsg(UID, 4, 831, 8314, 24414, 22, 8403, 23, 8404, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8403 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8470);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8475);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8480);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8485);
   end
end

if EVENT == 8404 then
   SaveEvent(UID, 8473); -- 거절시 
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 8410 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8472);
    EVENT = 8411
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8477);
    EVENT = 8411
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8482);
    EVENT = 8411
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8487);
    EVENT = 8411
   end
end

if EVENT == 8411 then
    SelectMsg(UID, 1, 831, 8315, 24414, 56, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8406 then
    MonsterCount  = CountMonsterQuestSub(UID, 1);
    if  MonsterCount < 20 then -- 사냥이 남았을때
     SelectMsg(UID, 2, 831, 8316, 24414, 10, 8407, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- 사냥이 완료 되었을때 
     SelectMsg(UID, 4, 831, 8317, 24414, 10, 8408, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 8407 then
   ShowMap(UID, 577);
end

local Check;

if EVENT == 8408 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 908)
        if  Check ==1 then        
        RunExchange(UID, 908);
        SaveEvent(UID, 8471);
        SaveEvent(UID, 8492);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 909)
        if  Check ==1 then        
        RunExchange(UID, 909);
        SaveEvent(UID, 8476);
        SaveEvent(UID, 8492);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 910)
        if  Check ==1 then        
        RunExchange(UID, 910);
        SaveEvent(UID, 8481);
        SaveEvent(UID, 8492);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 911)
        if  Check ==1 then        
        RunExchange(UID, 911);
        SaveEvent(UID, 8486);
        SaveEvent(UID, 8492);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end

-------------------------------
---- 라튼 아이즈 퇴치 끝 ------
-------------------------------

-------------------------------
-------- 바탈리언 퇴치 --------
-------------------------------

if EVENT == 8850 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8721);
    EVENT = 8851
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8726);
    EVENT = 8851
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8731);
    EVENT = 8851
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8736);
     EVENT = 8851
   end
end

if EVENT == 8851 then
    SelectMsg(UID, 1, 855, 8318, 24414, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

local MonsterSub = 0;

if EVENT == 8852 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 855, 8319, 24414, 10, 8855, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 855, 8313, 24414, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 8855 then
    SelectMsg(UID, 4, 855, 8320, 24414, 22, 8853, 23, 8854, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8853 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8722);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8727);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8732);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8737);
   end
end

if EVENT == 8854 then
   SaveEvent(UID, 8725); -- 거절시 
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 8860 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8724);
    EVENT = 8861
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8729);
    EVENT = 8861
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8734);
    EVENT = 8861
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8739);
    EVENT = 8861
   end
end

if EVENT == 8861 then
    SelectMsg(UID, 1, 855, 8315, 24414, 56, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8856 then
    MonsterCount  = CountMonsterQuestSub(UID, 1);
    if  MonsterCount < 20 then -- 사냥이 남았을때
     SelectMsg(UID, 2, 855, 8316, 24414, 10, 8857, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- 사냥이 완료 되었을때 
     SelectMsg(UID, 4, 855, 8321, 24414, 10, 8858, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 8857 then
   ShowMap(UID, 581);
end

local Check;

if EVENT == 8858 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 965)
        if  Check ==1 then        
        RunExchange(UID, 965);
        SaveEvent(UID, 8723);
        SaveEvent(UID, 8744);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 966)
        if  Check ==1 then        
        RunExchange(UID, 966);
        SaveEvent(UID, 8728);
        SaveEvent(UID, 8744);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 967)
        if  Check ==1 then        
        RunExchange(UID, 967);
        SaveEvent(UID, 8733);
        SaveEvent(UID, 8744);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 968)
        if  Check ==1 then        
        RunExchange(UID, 968);
        SaveEvent(UID, 8738);
        SaveEvent(UID, 8744);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end

-------------------------------
------- 바탈리언 퇴치 끝-------
-------------------------------

return Ret;
