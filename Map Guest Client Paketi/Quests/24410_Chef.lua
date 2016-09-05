
-- [황실요리사] 타이온고기

-- EVENT 는 100번 이상 부터 사용하라

-- UID : 서버에서 제공하는 유저번호
-- EVENT : 서버에서 제공하는 퀘스트 번호
-- STEP : 서버에서 제공하는 퀘스트 내부 단계

-- 위의 세가지 파라메타는 루아 실행시 항상 전역변수로 제공�

-- 지역변수 선언...
local UserClass;
local QuestNum;
local Ret = 0;

-- [황실요리사] 타이온고기  퀘스트 체크  

if EVENT == 190 then
	QuestNum = SearchQuest(UID, 24410);
		if QuestNum == 0 then --해당 NPC에게 할수 있는 퀘스트가 0개 일때 
          -- SelectMsg(UID, 2. -1...........)
			 SelectMsg(UID, 2, -1, 3000, 24410, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 --SetQuestStep(UID, EVENT, 1); -- 뭘 하는 걸까?
			 Ret = 1; -- 이건 왜 저장 시켜요? 그냥 RETURN은 안되나요?
		elseif QuestNum > 1 and  QuestNum < 100 then--해당 NPC에게 할수 있는 퀘스트가 1개 일때 
          NpcMsg(UID, 192,24410)
      else --해당 NPC에게 할수 있는 퀘스트가 1개 이상 일때 
          EVENT = QuestNum
		end
end

if EVENT == 193 then
    Ret = 1;
end

--local SHOW_MAP; -- 지도 보여주눈 함수 만들어 주세요

if EVENT == 195 then
   SelectMsg(UID, 1, 319, 3138, 24410, 3006, 1000, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 1000 then
   SelectMsg(UID, 1, 319, 3139, 24410, 28, 196, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 196 then
   ShowMap(UID, 5);
   SaveEvent(UID, 3313);
end

if EVENT == 197 then
   SelectMsg(UID, 1, 319, 3147, 24410, 3006, 1001, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 1001 then
   SelectMsg(UID, 1, 319, 3148, 24410, 28, 196, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- [황실요리사] 타이온고기 102번의 속성 0번 4번일 경우

if EVENT == 200 then
   SelectMsg(UID, 2, 319, 3140, 24410, 29, 201, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 201 then
   SelectMsg(UID, 4, 319, 3141, 24410, 22, 202, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 202 then
   SaveEvent(UID, 3314);
end

-- 재료를 다 모았을 때 
local NATION = 0;--국가 체크

if EVENT == 205 then
   NATION = CheckNation(UID);
   if NATION == 1 then -- 카루스 일때
      SelectMsg(UID, 1, 319, 3145, 24410, 32, 208, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- 엘모일때
      SelectMsg(UID, 1, 319, 3149, 24410, 21, 208, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 208 then
   SaveEvent(UID, 3316);
end


local ITEM_COUNT=0;
local RUN_EXCHANGE ;--재료 교체 함수 만들어 주세요 

if EVENT == 210 then
   ITEM_COUNT = HowmuchItem(UID, 379204000);
   if  ITEM_COUNT <= 0 then -- 재료 없을때
      SelectMsg(UID, 2, 319, 3144, 24410, 18, 213, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   elseif ITEM_COUNT  > 0 then-- 재료 있을때
      SelectMsg(UID, 4, 319, 3146, 24410, 10, 214, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 213 then
   ShowMap(UID, 7);
end

if EVENT == 214 then
   RunExchange(UID, 6);
   SaveEvent(UID, 3315);
end

return Ret;