-- [경비병]케이프

-- EVENT 는 100번 이상 부터 사용하라

-- UID : 서버에서 제공하는 유저번호
-- EVENT : 서버에서 제공하는 퀘스트 번호
-- STEP : 서버에서 제공하는 퀘스트 내부 단계

-- 위의 세가지 파라메타는 루아 실행시 항상 전역변수로 제공?

-- 지역변수 선언...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 24432;


if EVENT == 160 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --해당 NPC에게 할수 있는 퀘스트가 0개 일때 
          -- SelectMsg(UID, 2. -1...........)
			 SelectMsg(UID, 2, -1, 8255, NPC, 10, 163);
			 --SetQuestStep(UID, EVENT, 1); -- 뭘 하는 걸까?
			 Ret = 1; -- 이건 왜 저장 시켜요? 그냥 RETURN은 안되나요?
		elseif QuestNum > 1 and  QuestNum < 100 then--해당 NPC에게 할수 있는 퀘스트가 1개 일때 
          NpcMsg(UID, 8257, NPC)
      else --해당 NPC에게 할수 있는 퀘스트가 1개 이상 일때 
          EVENT = QuestNum
		end
end

if EVENT == 163 then
    Ret = 1;
end



-- [경비병]케이프 클릭시 퀘스트 체크  

-------------------------------
--------라드 오크 사냥---------
-------------------------------

if EVENT == 8750 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8679);
    EVENT = 8751
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8684);
    EVENT = 8751
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8689);
    EVENT = 8751
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8694);
    EVENT = 8751
   end
end

if EVENT == 8751 then
    SelectMsg(UID, 1, 853, 8371, NPC, 3013, 8759);
end

if EVENT == 8759 then
    ShowMap(UID, 564);
end

local MonsterSub = 0;

if EVENT == 8752 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 853, 8372, NPC, 10, 8755);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 853, 8373, NPC, 10, 163);
   end
end

if EVENT == 8755 then
    SelectMsg(UID, 4, 853, 8374, NPC, 22, 8753, 23, 8754);
end

if EVENT == 8753 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8680);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8685);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8690);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8695);
   end
end

if EVENT == 8754 then
   SaveEvent(UID, 8683); -- 거절시 
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 8760 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8682);
    EVENT = 8761
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8687);
    EVENT = 8761
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8692);
    EVENT = 8761
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8697);
    EVENT = 8761
   end
end

if EVENT == 8761 then
    SelectMsg(UID, 1, 853, 8375, NPC, 29, 163);
end

if EVENT == 8756 then
    MonsterCount  = CountMonsterQuestSub(UID, 32001);
    if  MonsterCount < 30 then -- 사냥이 남았을때
       SelectMsg(UID, 2, 853, 8376, NPC, 10, 8757);
    else -- 사냥이 완료 되었을때 
       Class = CheckClass(UID);
        if Class == 1 or Class == 5 or Class == 6 or Class == 3 or Class == 9 or Class == 10 or Class == 4 or Class == 11 or Class == 12 then
        SelectMsg(UID, 4, 853, 8377, NPC, 10, 8758, 27, 163);
        elseif Class == 2 or Class == 7 or Class == 8 then
        SelectMsg(UID, 5, 853, 8378, NPC, 10, 8758, 27, 163);
        end
    end
end

if EVENT == 8757 then
   ShowMap(UID, 579);
end

local Check;

if EVENT == 8758 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 957)
        if  Check == true then        
        RunExchange(UID, 957);
        SaveEvent(UID, 8681);
        SaveEvent(UID, 8702);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 958)
        if  Check == true then        
        RunExchange(UID, 958);
        SaveEvent(UID, 8686);
        SaveEvent(UID, 8702);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 959)
        if  Check == true then        
        RunExchange(UID, 959);
        SaveEvent(UID, 8691);
        SaveEvent(UID, 8702);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 960)
        if  Check == true then        
        RunExchange(UID, 960);
        SaveEvent(UID, 8696);
        SaveEvent(UID, 8702);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end

-------------------------------
------라드 오크 사냥 끝--------
-------------------------------

-------------------------------
-------메간테리온 사냥---------
-------------------------------

if EVENT == 8950 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8763);
    EVENT = 8951
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8768);
    EVENT = 8951
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8773);
    EVENT = 8951
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8778);
     EVENT = 8951
   end
end

if EVENT == 8951 then
    SelectMsg(UID, 1, 857, 8225, NPC, 3008, 163);
end

local MonsterSub = 0;

if EVENT == 8952 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 857, 8226, NPC, 10, 8955);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 857, 8259, NPC, 10, 163);
   end
end

if EVENT == 8955 then
    SelectMsg(UID, 4, 857, 8227, NPC, 22, 8953, 23, 8954);
end

if EVENT == 8953 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8764);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8769);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8774);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8779);
   end
end

if EVENT == 8954 then
   SaveEvent(UID, 8767); -- 거절시 
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 8960 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8766);
    EVENT = 8961
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8771);
    EVENT = 8961
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8776);
    EVENT = 8961
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8781);
    EVENT = 8961
   end
end

if EVENT == 8961 then
    SelectMsg(UID, 1, 857, 8375, NPC, 3007, 163);
end

if EVENT == 8956 then
    MonsterCount  = CountMonsterQuestSub(UID, 32001);
    if  MonsterCount < 30 then -- 사냥이 남았을때
     SelectMsg(UID, 2, 857, 8376, NPC, 10, 8957);
    else -- 사냥이 완료 되었을때 
     SelectMsg(UID, 4, 857, 8387, NPC, 10, 8958, 27, 163);
    end
end

if EVENT == 8957 then
   ShowMap(UID, 583);
end

local Check;

if EVENT == 8958 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 973)
        if  Check == true then        
        RunExchange(UID, 973);
        SaveEvent(UID, 8765);
        SaveEvent(UID, 8786);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 974)
        if  Check == true then        
        RunExchange(UID, 974);
        SaveEvent(UID, 8770);
        SaveEvent(UID, 8786);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 975)
        if  Check == true then        
        RunExchange(UID, 975);
        SaveEvent(UID, 8775);
        SaveEvent(UID, 8786);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 976)
        if  Check == true then        
        RunExchange(UID, 976);
        SaveEvent(UID, 8780);
        SaveEvent(UID, 8786);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end

-------------------------------
-------메간테리온 사냥 끝------
-------------------------------

-------------------------------
---------스콜라 사냥-----------
-------------------------------

if EVENT == 8170 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8805);
    EVENT = 8171
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8810);
    EVENT = 8171
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8815);
    EVENT = 8171
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8820);
     EVENT = 8171
   end
end

if EVENT == 8171 then
    SelectMsg(UID, 1, 859, 8389, NPC, 14, 163);
end

local MonsterSub = 0;

if EVENT == 8172 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 859, 8390, NPC, 10, 8175);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 859, 8259, NPC, 10, 163);
   end
end

if EVENT == 8175 then
    SelectMsg(UID, 4, 859, 8391, NPC, 22, 8173, 23, 8174);
end

if EVENT == 8173 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8806);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8811);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8816);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8821);
   end
end

if EVENT == 8174 then
   SaveEvent(UID, 8809); -- 거절시 
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 8180 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8808);
    EVENT = 8181
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8813);
    EVENT = 8181
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8818);
    EVENT = 8181
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8823);
    EVENT = 8181
   end
end

if EVENT == 8181 then
    SelectMsg(UID, 1, 859, 8375, NPC, 3007, 163);
end

if EVENT == 8176 then
    MonsterCount  = CountMonsterQuestSub(UID, 32001);
    if  MonsterCount < 10 then -- 사냥이 남았을때
     SelectMsg(UID, 2, 859, 8376, NPC, 10, 8177);
    else -- 사냥이 완료 되었을때 
     SelectMsg(UID, 4, 859, 8392, NPC, 10, 8178, 27, 163);
    end
end

if EVENT == 8177 then
   ShowMap(UID, 540);
end

local Check;

if EVENT == 8178 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 981)
        if  Check == true then        
        RunExchange(UID, 981);
        SaveEvent(UID, 8807);
        SaveEvent(UID, 8828);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 982)
        if  Check == true then        
        RunExchange(UID, 982);
        SaveEvent(UID, 8812);
        SaveEvent(UID, 8828);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 983)
        if  Check == true then        
        RunExchange(UID, 983);
        SaveEvent(UID, 8828);
        SaveEvent(UID, 8817);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 984)
        if  Check == true then        
        RunExchange(UID, 984);
        SaveEvent(UID, 8822);
        SaveEvent(UID, 8828);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end

-------------------------------
--------스콜라 사냥 끝---------
-------------------------------

-------------------------------
-----------그렐 사냥-----------
-------------------------------

if EVENT == 9060 then
   SelectMsg(UID, 1, 874, 8225, NPC, 3003, 9061);
end

if EVENT == 9061 then
   SaveEvent(UID, 9117);
end

local MonsterSub = 0;

if EVENT == 9062 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
	SelectMsg(UID, 2, 874, 8420, NPC, 10, 9070);
   else-- 몬스터 서브 퀘스트가 있을때
 	SelectMsg(UID, 2, 874, 8422, NPC, 10, 163);
	end
end

if EVENT == 9070 then
   SelectMsg(UID, 4, 874, 8421, NPC, 22, 9063, 23, 9064);
end

if EVENT == 9063 then
   SaveEvent(UID, 9118);
end

if EVENT == 9064 then
   SaveEvent(UID, 9121);
end

-- 사냥 완료시 시드와 미셀의 등장

if EVENT == 9065 then
   SelectMsg(UID, 1, 874, 8423, NPC, 3014, 163);
   SaveEvent(UID, 9120);
end

local MonsterCount = 0;

if EVENT == 9067 then
   MonsterCount  = CountMonsterQuestSub(UID, 32001);
   if  MonsterCount < 30 then -- 사냥이 남았을때
      SelectMsg(UID, 2, 874, 8424, NPC, 10, 9068);
   else-- 사냥이 완료 되었을때 
      SelectMsg(UID, 4, 874, 8425, NPC, 10, 9069, 27, 163);
   end
end

if EVENT == 9068 then
   ShowMap(UID, 330);
end

if EVENT == 9069 then
   Check = CheckExchange(UID, 1042)
   if  Check == true then
   RunExchange(UID, 1042);
   SaveEvent(UID, 9119);
   SaveEvent(UID, 9125);
   else
  Ret = 1;	
  end	 
end

-------------------------------
----------그렐 사냥 끝---------
-------------------------------

-------------------------------
-----------리치 사냥-----------
-------------------------------

if EVENT == 9140 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9255);
    EVENT = 9141
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9260);
    EVENT = 9141
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9265);
    EVENT = 9141
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9270);
     EVENT = 9141
   end
end

if EVENT == 9141 then
   SelectMsg(UID, 1, 882, 8203, NPC, 4080, 9142);
end

if EVENT == 9142 then
   SelectMsg(UID, 1, 882, 8204, NPC, 4243, 9143);
end

local MonsterSub = 0;

if EVENT == 9143 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 1, 882, 8205, NPC, 10, 9144);
   else-- 몬스터 서브 퀘스트가 있을때
 	SelectMsg(UID, 1, 882, 8178, NPC, 10, 163);
   end
end

if EVENT == 9144 then
    SelectMsg(UID, 1, 882, 8206, NPC, 22, 9145, 23, 9146);
end

if EVENT == 9145 then --수락시
   ShowMap(UID, 17);
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9256);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9261);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9266);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9271);
   end
end

if EVENT == 9146 then
   SaveEvent(UID, 9259); -- 거절시 
end

-- 882번 속성 0, 4번일 경우

if EVENT == 9150 then
   SelectMsg(UID, 2, 882, 8207, NPC, 4244, 9151);
end

local MonsterSub = 0;

if EVENT == 9151 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 4, 882, 8435, NPC, 3018, 9152, 3019, 9159);
   else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 882, 8436, NPC, 4242, 163);
   end
end

if EVENT == 9152 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9256);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9261);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9266);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9271);
   end
end

if EVENT == 9159 then
   SaveEvent(UID, 9259); -- 거절시 
end


-- 재료를 다 모았을때 시드와 미셀의 등장 

if EVENT == 9153 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9258);
    EVENT = 9154
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9263);
    EVENT = 9154
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9268);
    EVENT = 9154
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9273);
    EVENT = 9154
   end
end

if EVENT == 9154 then
    SelectMsg(UID, 1, 882, 8434, NPC, 57, 163);
end

-- 836이 1번 3번인 경우 

local MonsterCount = 0;

if EVENT == 9155 then
   MonsterCount  = CountMonsterQuestSub(UID, 32001);
   if  MonsterCount < 10 then -- 사냥이 남았을때
    SelectMsg(UID, 2, 882, 8437, NPC, 10, 9157);
   else-- 사냥이 완료 되었을때 
    SelectMsg(UID, 4, 882, 8438, NPC, 10, 9158, 27, 163);
   end
end

if EVENT == 9157 then
   ShowMap(UID, 17);
end

local Check;

if EVENT == 9158 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 1052)
        if  Check == true then        
        RunExchange(UID, 1052);
        SaveEvent(UID, 9257);
        SaveEvent(UID, 9278);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 1053)
        if  Check == true then        
        RunExchange(UID, 1053);
        SaveEvent(UID, 9262);
        SaveEvent(UID, 9278);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 1054)
        if  Check == true then        
        RunExchange(UID, 1054);
        SaveEvent(UID, 9267);
        SaveEvent(UID, 9278);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 1055)
        if  Check == true then        
        RunExchange(UID, 1055);
        SaveEvent(UID, 9272);
        SaveEvent(UID, 9278);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end

-------------------------------
---------리치 사냥 끝----------
-------------------------------
--Hell Hound hunt
if EVENT == 9322 then
   SelectMsg(UID, 2, 894, 8676, 24432,  3012, 9323, 13, 168);
end

local MonsterSub = 0;

if EVENT == 9323 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
      SelectMsg(UID, 4, 894, 8676, 24432, 22, 9324, 23, 9325);

	else-- 몬스터 서브 퀘스트가 있을때
 		SelectMsg(UID, 2, 894, 8676, 24432, 10, 168);
   end
end

if EVENT == 9324 then
	SelectMsg(UID, 2, 894, 8676, 24432, 10, 168);
   SaveEvent(UID, 9340);
end

-- 재료를 다 모았을때 시드와 미셀의 또 등장 
if EVENT == 9325 then
   SaveEvent(UID, 9342);
   NATION = CheckNation(UID);
   if NATION == 1 then -- 카루스 일때
      SelectMsg(UID, 1, 894, 8676, 24432, 14, 168);
   elseif NATION == 2 then -- 엘모일때
      SelectMsg(UID, 1, 894, 8676, 24432, 14, 168);
   end
end

-- 894의 1번 3번인 경우 

local MonsterCount = 0;

if EVENT == 9327 then
   MonsterCount  = CountMonsterQuestSub(UID, 32001);
   if  MonsterCount < 250 then -- 사냥이 남았을때
      SelectMsg(UID, 2, 894, 8676, 24432, 10, 9328);
   else-- 사냥이 완료 되었을때 
      SelectMsg(UID, 4, 894, 8676, 24432, 10, 9329, 27, 9328);
   end
end

if EVENT == 9328 then
   ShowMap(UID, 37);
end

local Check;

if EVENT == 9329 then
   Check = CheckExchange(UID, 1089)
   if  Check == true then
   RunExchange(UID, 1089);
   SaveEvent(UID, 9341);
	SelectMsg(UID, 2, 897, 8676, 24432, 10, 168);
   else
  Ret = 1;	
  end	 
end

if EVENT == 9325 then
	SelectMsg(UID, 2, 897, 8676, 24432, 10, 168);
end
--Hell Hound hunt
--Goblin Bouncer hunt
if EVENT == 9342 then
   SelectMsg(UID, 2, 897, 8680, 24432,  3012, 9343, 13, 168);
end

local MonsterSub = 0;

if EVENT == 9343 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
      SelectMsg(UID, 4, 897, 8680, 24432, 22, 9344, 23, 9345);

	else-- 몬스터 서브 퀘스트가 있을때
 		SelectMsg(UID, 2, 897, 8680, 24432, 10, 168);
   end
end

if EVENT == 9344 then
	SelectMsg(UID, 2, 897, 8680, 24432, 10, 168);
   SaveEvent(UID, 9364);
end

-- 재료를 다 모았을때 시드와 미셀의 또 등장 
if EVENT == 9345 then
   SaveEvent(UID, 9366);
   NATION = CheckNation(UID);
   if NATION == 1 then -- 카루스 일때
      SelectMsg(UID, 1, 897, 8680, 24432, 14, 168);
   elseif NATION == 2 then -- 엘모일때
      SelectMsg(UID, 1, 897, 8680, 24432, 14, 168);
   end
end

-- 897의 1번 3번인 경우 

local MonsterCount = 0;

if EVENT == 9347 then
   MonsterCount  = CountMonsterQuestSub(UID, 32001);
   if  MonsterCount < 250 then -- 사냥이 남았을때
      SelectMsg(UID, 2, 897, 8680, 24432, 10, 9348);
   else-- 사냥이 완료 되었을때 
      SelectMsg(UID, 4, 897, 8680, 24432, 10, 9349, 27, 9348);
   end
end

if EVENT == 9348 then
   ShowMap(UID, 600);
end

local Check;

if EVENT == 9349 then
   Check = CheckExchange(UID, 1092)
   if  Check == true then
   RunExchange(UID, 1092);
   SaveEvent(UID, 9365);
	SelectMsg(UID, 2, 897, 8680, 24432, 10, 168);
   else
  Ret = 1;	
  end	 
end

if EVENT == 9345 then
	SelectMsg(UID, 2, 897, 8680, 24432, 10, 168);
end
--Goblin Bouncer hunt
--Macairodus hunt
if EVENT == 9430 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9471);
     EVENT = 9431
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9476);
     EVENT = 9431
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9481);
     EVENT = 9431
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9486);
     EVENT = 9431
   end
end
if EVENT == 9431 then
    SelectMsg(UID, 1, 911, 8760, 24432, 3014, 193);
end

local MonsterSub = 0;

if EVENT == 9432 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 911, 8760, 24432, 10, 9435);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 911, 8760, 24432, 10, 193);
   end
end

if EVENT == 9435 then
    SelectMsg(UID, 4, 911, 8760, 24432, 22, 9433, 23, 9434);
end

if EVENT == 9433 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9472);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9477);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9482);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9487);
   end
end

if EVENT == 9434 then    SaveEvent(UID, 9475);
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 9440 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9474);
   EVENT = 9442
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9479);
   EVENT = 9442
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9484);
   EVENT = 9442
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9489);
   EVENT = 9442
   end
end

if EVENT == 9442 then
   SelectMsg(UID, 1, 911, 8760, 24432, 3002, 193);
end

if EVENT == 9436 then
    MonsterCount  = CountMonsterQuestSub(UID, 32001);
    if  MonsterCount < 80 then -- 사냥이 남았을때
     SelectMsg(UID, 2, 911, 8760, 24432, 10, 9437);
    else -- 사냥이 완료 되었을때 
     SelectMsg(UID, 4, 911, 8760, 24432, 10, 9438, 27, 193);
    end
end

if EVENT == 9437 then
   ShowMap(UID, 619);
end

local Check;

if EVENT == 9438 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 1033)
        if  Check == true then        
   RunExchange(UID, 1106);
   SaveEvent(UID, 9473);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 1034)
        if  Check == true then        
   RunExchange(UID, 1107);
   SaveEvent(UID, 9478);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 1035)
        if  Check == true then        
   RunExchange(UID, 1108);
   SaveEvent(UID, 9483);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 1036)
        if  Check == true then        
   RunExchange(UID, 1109);
   SaveEvent(UID, 9488);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end
--Macairodus hunt
--Blood Don hunt
if EVENT == 9450 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9513);
     EVENT = 9451
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9518);
     EVENT = 9451
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9523);
     EVENT = 9451
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9528);
     EVENT = 9451
   end
end
if EVENT == 9451 then
    SelectMsg(UID, 1, 913, 8762, 24432, 3014, 193);
end

local MonsterSub = 0;

if EVENT == 9452 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 913, 8762, 24432, 10, 9455);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 913, 8762, 24432, 10, 193);
   end
end

if EVENT == 9455 then
    SelectMsg(UID, 4, 913, 8762, 24432, 22, 9453, 23, 9454);
end

if EVENT == 9453 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9514);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9519);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9524);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9529);
   end
end

if EVENT == 9454 then    SaveEvent(UID, 9517);
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 9460 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9516);
   EVENT = 9462
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9521);
   EVENT = 9462
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9526);
   EVENT = 9462
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9531);
   EVENT = 9462
   end
end

if EVENT == 9462 then
   SelectMsg(UID, 1, 913, 8762, 24432, 3002, 193);
end

if EVENT == 9456 then
    MonsterCount  = CountMonsterQuestSub(UID, 32001);
    if  MonsterCount < 50 then -- 사냥이 남았을때
     SelectMsg(UID, 2, 913, 8762, 24432, 10, 9457);
    else -- 사냥이 완료 되었을때 
     SelectMsg(UID, 4, 913, 8762, 24432, 10, 9458, 27, 193);
    end
end

if EVENT == 9457 then
   ShowMap(UID, 623);
end

local Check;

if EVENT == 9458 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 1033)
        if  Check == true then        
   RunExchange(UID, 1114);
   SaveEvent(UID, 9515);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 1034)
        if  Check == true then        
   RunExchange(UID, 1115);
   SaveEvent(UID, 9520);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 1035)
        if  Check == true then        
   RunExchange(UID, 1116);
   SaveEvent(UID, 9525);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 1036)
        if  Check == true then        
   RunExchange(UID, 1117);
   SaveEvent(UID, 9530);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end
--Blood Don hunt
return Ret;