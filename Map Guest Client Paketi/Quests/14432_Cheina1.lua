-- [경비병]체이나

-- EVENT 는 100번 이상 부터 사용하라

-- UID : 서버에서 제공하는 유저번호
-- EVENT : 서버에서 제공하는 퀘스트 번호
-- STEP : 서버에서 제공하는 퀘스트 내부 단계

-- 위의 세가지 파라메타는 루아 실행시 항상 전역변수로 제공?

-- 지역변수 선언...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 14432;


if EVENT == 160 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --해당 NPC에게 할수 있는 퀘스트가 0개 일때 
          -- SelectMsg(UID, 2. -1...........)
			 SelectMsg(UID, 2, -1, 8256, NPC, 10, 163);
			 --SetQuestStep(UID, EVENT, 1); -- 뭘 하는 걸까?
			 Ret = 1; -- 이건 왜 저장 시켜요? 그냥 RETURN은 안되나요?
		elseif QuestNum > 1 and  QuestNum < 100 then--해당 NPC에게 할수 있는 퀘스트가 1개 일때 
          NpcMsg(UID, 8258, NPC)
      else --해당 NPC에게 할수 있는 퀘스트가 1개 이상 일때 
          EVENT = QuestNum
		end
end

if EVENT == 163 then
    Ret = 1;
end



-- [경비병]체이나 클릭시 퀘스트 체크  

-------------------------------
--------라드 오크 사냥---------
-------------------------------

if EVENT == 8750 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8700);
    EVENT = 8751
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8705);
    EVENT = 8751
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8710);
    EVENT = 8751
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8715);
    EVENT = 8751
   end
end

if EVENT == 8751 then
    SelectMsg(UID, 1, 852, 8379, NPC, 3013, 8279);
end

if EVENT == 8279 then
    ShowMap(UID, 565);
end

local MonsterSub = 0;

if EVENT == 8752 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 852, 8380, NPC, 10, 8755);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 852, 8381, NPC, 10, 193);
   end
end

if EVENT == 8755 then
    SelectMsg(UID, 4, 852, 8382, NPC, 22, 8753, 23, 8754);
end

if EVENT == 8753 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8701);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8706);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8711);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8716);
   end
end

if EVENT == 8754 then
   SaveEvent(UID, 8704); -- 거절시 
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 8760 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8703);
    EVENT = 8761
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8708);
    EVENT = 8761
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8713);
    EVENT = 8761
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8718);
    EVENT = 8761
   end
end

if EVENT == 8761 then
    SelectMsg(UID, 1, 852, 8383, NPC, 29, 193);
end

if EVENT == 8756 then
    MonsterCount  = CountMonsterQuestSub(UID, 32001);
    if  MonsterCount < 30 then -- 사냥이 남았을때
       SelectMsg(UID, 2, 852, 8384, NPC, 10, 8757);
    else -- 사냥이 완료 되었을때 
       Class = CheckClass(UID);
        if Class == 1 or Class == 5 or Class == 6 or Class == 3 or Class == 9 or Class == 10 or Class == 4 or Class == 11 or Class == 12 then
        SelectMsg(UID, 4, 852, 8385, NPC, 10, 8758, 27, 193);
        elseif Class == 2 or Class == 7 or Class == 8 then
        SelectMsg(UID, 5, 852, 8386, NPC, 10, 8758, 27, 193);
        end
    end
end

if EVENT == 8757 then
   ShowMap(UID, 578);
end

local Check;

if EVENT == 8758 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 953)
        if  Check == true then        
        RunExchange(UID, 953);
        SaveEvent(UID, 8681);
        SaveEvent(UID, 8702);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 954)
        if  Check == true then        
        RunExchange(UID, 954);
        SaveEvent(UID, 8681);
        SaveEvent(UID, 8707);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 955)
        if  Check == true then        
        RunExchange(UID, 955);
        SaveEvent(UID, 8681);
        SaveEvent(UID, 8712);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 956)
        if  Check == true then        
        RunExchange(UID, 956);
        SaveEvent(UID, 8681);
        SaveEvent(UID, 8717);
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
    SaveEvent(UID, 8784);
    EVENT = 8951
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8789);
    EVENT = 8951
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8794);
    EVENT = 8951
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8799);
     EVENT = 8951
   end
end

if EVENT == 8951 then
    SelectMsg(UID, 1, 856, 8228, NPC, 3008, 163);
end

local MonsterSub = 0;

if EVENT == 8952 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 856, 8229, NPC, 10, 8955);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 856, 8282, NPC, 10, 163);
   end
end

if EVENT == 8955 then
    SelectMsg(UID, 4, 856, 8230, NPC, 22, 8953, 23, 8954);
end

if EVENT == 8953 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8785);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8790);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8795);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8800);
   end
end

if EVENT == 8954 then
   SaveEvent(UID, 8788); -- 거절시 
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 8960 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8787);
    EVENT = 8961
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8792);
    EVENT = 8961
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8797);
    EVENT = 8961
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8802);
    EVENT = 8961
   end
end

if EVENT == 8961 then
    SelectMsg(UID, 1, 856, 8383, NPC, 3007, 163);
end

if EVENT == 8956 then
    MonsterCount  = CountMonsterQuestSub(UID, 32001);
    if  MonsterCount < 30 then -- 사냥이 남았을때
     SelectMsg(UID, 2, 856, 8384, NPC, 10, 8957);
    else -- 사냥이 완료 되었을때 
     SelectMsg(UID, 4, 856, 8388, NPC, 10, 8958, 27, 163);
    end
end

if EVENT == 8957 then
   ShowMap(UID, 582);
end

local Check;

if EVENT == 8958 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 969)
        if  Check == true then        
        RunExchange(UID, 969);
        SaveEvent(UID, 8786);
        SaveEvent(UID, 8765);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 970)
        if  Check == true then        
        RunExchange(UID, 970);
        SaveEvent(UID, 8791);
        SaveEvent(UID, 8765);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 971)
        if  Check == true then        
        RunExchange(UID, 971);
        SaveEvent(UID, 8796);
        SaveEvent(UID, 8765);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 972)
        if  Check == true then        
        RunExchange(UID, 972);
        SaveEvent(UID, 8801);
        SaveEvent(UID, 8765);
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
    SaveEvent(UID, 8826);
    EVENT = 8171
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8831);
    EVENT = 8171
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8836);
    EVENT = 8171
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8841);
     EVENT = 8171
   end
end

if EVENT == 8171 then
    SelectMsg(UID, 1, 858, 8393, NPC, 14, 163);
end

local MonsterSub = 0;

if EVENT == 8172 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 858, 8394, NPC, 10, 8175);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 858, 8282, NPC, 10, 163);
   end
end

if EVENT == 8175 then
    SelectMsg(UID, 4, 858, 8395, NPC, 22, 8173, 23, 8174);
end

if EVENT == 8173 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8827);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8832);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8837);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8842);
   end
end

if EVENT == 8174 then
   SaveEvent(UID, 8830); -- 거절시 
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 8180 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8829);
    EVENT = 8181
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8834);
    EVENT = 8181
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8839);
    EVENT = 8181
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8844);
    EVENT = 8181
   end
end

if EVENT == 8181 then
    SelectMsg(UID, 1, 858, 8383, NPC, 3007, 163);
end

if EVENT == 8176 then
    MonsterCount  = CountMonsterQuestSub(UID, 32001);
    if  MonsterCount < 10 then -- 사냥이 남았을때
     SelectMsg(UID, 2, 858, 8384, NPC, 10, 8177);
    else -- 사냥이 완료 되었을때 
     SelectMsg(UID, 4, 858, 8396, NPC, 10, 8178, 27, 163);
    end
end


if (EVENT == 8178) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 205001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8828);
		ShowEffect(UID, 300391);
	elseif (Class == 2 or Class == 7 or Class == 8) then      
		GiveItem(UID, 245001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8833);
		ShowEffect(UID, 300391);
	elseif (Class == 3 or Class == 9 or Class == 10) then    
		GiveItem(UID, 265001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8838);
		ShowEffect(UID, 300391);
	elseif (Class == 4 or Class == 11 or Class == 12) then     
		GiveItem(UID, 285001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8843);
		ShowEffect(UID, 300391);
	end	 
end
if EVENT == 8177 then
   ShowMap(UID, 539);
end

local Check;

if EVENT == 8178 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 977)
        if  Check == true then        
        RunExchange(UID, 977);
        SaveEvent(UID, 8828);
        SaveEvent(UID, 8807);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 978)
        if  Check == true then        
        RunExchange(UID, 978);
        SaveEvent(UID, 8833);
        SaveEvent(UID, 8807);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 979)
        if  Check == true then        
        RunExchange(UID, 979);
        SaveEvent(UID, 8838);
        SaveEvent(UID, 8807);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 980)
        if  Check == true then        
        RunExchange(UID, 980);
        SaveEvent(UID, 8843);
        SaveEvent(UID, 8807);
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
   SelectMsg(UID, 1, 875, 8228, NPC, 3003, 9061);
end

if EVENT == 9061 then
   SaveEvent(UID, 9123);
end

local MonsterSub = 0;

if EVENT == 9062 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
	SelectMsg(UID, 2, 875, 8426, NPC, 10, 9070);
   else-- 몬스터 서브 퀘스트가 있을때
 	SelectMsg(UID, 2, 875, 8428, NPC, 10, 163);
	end
end

if (EVENT == 9069) then
	GiveItem(UID, 379155000, 1)
	ExpChange(UID, 12000000)
	SaveEvent(UID, 9125);
end



if EVENT == 9070 then
   SelectMsg(UID, 4, 875, 8427, NPC, 22, 9063, 23, 9064);
end

if EVENT == 9063 then
   SaveEvent(UID, 9124);
end

if EVENT == 9064 then
   SaveEvent(UID, 9127);
end

-- 사냥 완료시 시드와 미셀의 등장

if EVENT == 9065 then
   SelectMsg(UID, 1, 875, 8429, NPC, 3014, 163);
   SaveEvent(UID, 9126);
end

local MonsterCount = 0;

if EVENT == 9067 then
   MonsterCount  = CountMonsterQuestSub(UID, 32001);
   if  MonsterCount < 30 then -- 사냥이 남았을때
      SelectMsg(UID, 2, 875, 8430, NPC, 10, 9068);
   else-- 사냥이 완료 되었을때 
      SelectMsg(UID, 4, 875, 8431, NPC, 10, 9069, 27, 163);
   end
end

if EVENT == 9068 then
   ShowMap(UID, 318);
end

if EVENT == 9069 then
   Check = CheckExchange(UID, 1043)
   if  Check == true then
   RunExchange(UID, 1043);
   SaveEvent(UID, 9125);
   SaveEvent(UID, 9119);
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
    SaveEvent(UID, 9276);
    EVENT = 9141
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9281);
    EVENT = 9141
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9286);
    EVENT = 9141
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9291);
     EVENT = 9141
   end
end

if EVENT == 9141 then
   SelectMsg(UID, 1, 883, 8208, NPC, 4080, 9142);
end

if EVENT == 9142 then
   SelectMsg(UID, 1, 883, 8209, NPC, 4243, 9143);
end

local MonsterSub = 0;

if EVENT == 9143 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 1, 883, 8210, NPC, 10, 9144);
   else-- 몬스터 서브 퀘스트가 있을때
 	SelectMsg(UID, 1, 883, 8186, NPC, 10, 163);
   end
end

if EVENT == 9144 then
    SelectMsg(UID, 1, 883, 8211, NPC, 22, 9145, 23, 9146);
end

if EVENT == 9145 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9277);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9282);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9287);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9292);
   end
end

if EVENT == 9146 then
   SaveEvent(UID, 9280); -- 거절시 
end

-- 882번 속성 0, 4번일 경우

if EVENT == 9150 then
   SelectMsg(UID, 2, 883, 8212, NPC, 4244, 9151);
end

local MonsterSub = 0;

if EVENT == 9151 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 4, 883, 8440, NPC, 3018, 9152, 3019, 9159);
   else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 883, 8441, NPC, 4242, 163);
   end
end

if EVENT == 9152 then --수락시
   ShowMap(UID, 16);
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9277);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9282);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9287);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9292);
   end
end

if EVENT == 9159 then
   SaveEvent(UID, 9280); -- 거절시 
end

-- 재료를 다 모았을때 시드와 미셀의 등장 

if EVENT == 9153 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9279);
    EVENT = 9154
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9284);
    EVENT = 9154
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9289);
    EVENT = 9154
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9294);
    EVENT = 9154
   end
end

if EVENT == 9154 then
    SelectMsg(UID, 1, 883, 8439, NPC, 57, 163);
end

-- 836이 1번 3번인 경우 

local MonsterCount = 0;

if EVENT == 9155 then
   MonsterCount  = CountMonsterQuestSub(UID, 32001);
   if  MonsterCount < 10 then -- 사냥이 남았을때
    SelectMsg(UID, 2, 883, 8442, NPC, 10, 9157);
   else-- 사냥이 완료 되었을때 
    SelectMsg(UID, 4, 883, 8443, NPC, 10, 9158, 27, 163);
   end
end

if EVENT == 9157 then
   ShowMap(UID, 16);
end

local Check;

if EVENT == 9158 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 1056)
        if  Check == true then        
        RunExchange(UID, 1056);
        SaveEvent(UID, 9278);
        SaveEvent(UID, 9257);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 1057)
        if  Check == true then        
        RunExchange(UID, 1057);
        SaveEvent(UID, 9283);
        SaveEvent(UID, 9257);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 1058)
        if  Check == true then        
        RunExchange(UID, 1058);
        SaveEvent(UID, 9288);
        SaveEvent(UID, 9257);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 1059)
        if  Check == true then        
        RunExchange(UID, 1059);
        SaveEvent(UID, 9293);
        SaveEvent(UID, 9257);
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
   SelectMsg(UID, 2, 893, 8677, 14432,  3012, 9323, 13, 168);
end

local MonsterSub = 0;

if EVENT == 9323 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
      SelectMsg(UID, 4, 893, 8677, 14432, 22, 9324, 23, 9325);

	else-- 몬스터 서브 퀘스트가 있을때
 		SelectMsg(UID, 2, 893, 8677, 14432, 10, 168);
   end
end

if EVENT == 9324 then
	SelectMsg(UID, 2, 893, 8677, 14432, 10, 168);
   SaveEvent(UID, 9346);
end

-- 재료를 다 모았을때 시드와 미셀의 또 등장 
if EVENT == 9325 then
   SaveEvent(UID, 9348);
   NATION = CheckNation(UID);
   if NATION == 1 then -- 카루스 일때
      SelectMsg(UID, 1, 893, 8677, 14432, 14, 168);
   elseif NATION == 2 then -- 엘모일때
      SelectMsg(UID, 1, 893, 8677, 14432, 14, 168);
   end
end

-- 893의 1번 3번인 경우 

local MonsterCount = 0;

if EVENT == 9327 then
   MonsterCount  = CountMonsterQuestSub(UID, 32001);
   if  MonsterCount < 250 then -- 사냥이 남았을때
      SelectMsg(UID, 2, 893, 8677, 14432, 10, 9328);
   else-- 사냥이 완료 되었을때 
      SelectMsg(UID, 4, 893, 8677, 14432, 10, 9329, 27, 9328);
   end
end

if EVENT == 9328 then
   ShowMap(UID, 36);
end

local Check;

if EVENT == 9329 then
   Check = CheckExchange(UID, 1088)
   if  Check == true then
   RunExchange(UID, 1088);
   SaveEvent(UID, 9347);
	SelectMsg(UID, 2, 896, 8677, 14432, 10, 168);
   else
  Ret = 1;	
  end	 
end

if EVENT == 9325 then
	SelectMsg(UID, 2, 896, 8677, 14432, 10, 168);
end
--Hell Hound hunt
--Goblin Bouncer hunt
if EVENT == 9342 then
   SelectMsg(UID, 2, 896, 8681, 14432,  3012, 9343, 13, 168);
end

local MonsterSub = 0;

if EVENT == 9343 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
      SelectMsg(UID, 4, 896, 8681, 14432, 22, 9344, 23, 9345);

	else-- 몬스터 서브 퀘스트가 있을때
 		SelectMsg(UID, 2, 896, 8681, 14432, 10, 168);
   end
end

if EVENT == 9344 then
	SelectMsg(UID, 2, 896, 8681, 14432, 10, 168);
   SaveEvent(UID, 9370);
end

-- 재료를 다 모았을때 시드와 미셀의 또 등장 
if EVENT == 9345 then
   SaveEvent(UID, 9372);
   NATION = CheckNation(UID);
   if NATION == 1 then -- 카루스 일때
      SelectMsg(UID, 1, 896, 8681, 14432, 14, 168);
   elseif NATION == 2 then -- 엘모일때
      SelectMsg(UID, 1, 896, 8681, 14432, 14, 168);
   end
end

-- 896의 1번 3번인 경우 

local MonsterCount = 0;

if EVENT == 9347 then
   MonsterCount  = CountMonsterQuestSub(UID, 32001);
   if  MonsterCount < 250 then -- 사냥이 남았을때
      SelectMsg(UID, 2, 896, 8681, 14432, 10, 9348);
   else-- 사냥이 완료 되었을때 
      SelectMsg(UID, 4, 896, 8681, 14432, 10, 9349, 27, 9348);
   end
end

if EVENT == 9348 then
   ShowMap(UID, 599);
end

local Check;

if EVENT == 9349 then
   Check = CheckExchange(UID, 1091)
   if  Check == true then
   RunExchange(UID, 1091);
   SaveEvent(UID, 9371);
	SelectMsg(UID, 2, 896, 8681, 14432, 10, 168);
   else
  Ret = 1;	
  end	 
end

if EVENT == 9345 then
	SelectMsg(UID, 2, 896, 8681, 14432, 10, 168);
end
--Goblin Bouncer hunt
--Macairodus hunt
if EVENT == 9430 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9492);
     EVENT = 9431
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9497);
     EVENT = 9431
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9502);
     EVENT = 9431
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9507);
     EVENT = 9431
   end
end
if EVENT == 9431 then
    SelectMsg(UID, 1, 912, 8761, 14432, 3014, 193);
end

local MonsterSub = 0;

if EVENT == 9432 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 912, 8761, 14432, 10, 9435);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 912, 8761, 14432, 10, 193);
   end
end

if EVENT == 9435 then
    SelectMsg(UID, 4, 912, 8761, 14432, 22, 9433, 23, 9434);
end

if EVENT == 9433 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9493);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9498);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9503);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9508);
   end
end

if EVENT == 9434 then    SaveEvent(UID, 9496);
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 9440 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9495);
   EVENT = 9442
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9500);
   EVENT = 9442
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9505);
   EVENT = 9442
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9510);
   EVENT = 9442
   end
end

if EVENT == 9442 then
   SelectMsg(UID, 1, 912, 8761, 14432, 3002, 193);
end

if EVENT == 9436 then
    MonsterCount  = CountMonsterQuestSub(UID, 32001);
    if  MonsterCount < 80 then -- 사냥이 남았을때
     SelectMsg(UID, 2, 912, 8761, 14432, 10, 9437);
    else -- 사냥이 완료 되었을때 
     SelectMsg(UID, 4, 912, 8761, 14432, 10, 9438, 27, 193);
    end
end

if EVENT == 9437 then
   ShowMap(UID, 620);
end

local Check;

if EVENT == 9438 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 1033)
        if  Check == true then        
   RunExchange(UID, 1110);
   SaveEvent(UID, 9494);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 1034)
        if  Check == true then        
   RunExchange(UID, 1111);
   SaveEvent(UID, 9499);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 1035)
        if  Check == true then        
   RunExchange(UID, 1112);
   SaveEvent(UID, 9504);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 1036)
        if  Check == true then        
   RunExchange(UID, 1113);
   SaveEvent(UID, 9509);
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
    SaveEvent(UID, 9534);
     EVENT = 9451
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9539);
     EVENT = 9451
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9544);
     EVENT = 9451
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9549);
     EVENT = 9451
   end
end
if EVENT == 9451 then
    SelectMsg(UID, 1, 914, 8763, 14432, 3014, 193);
end

local MonsterSub = 0;

if EVENT == 9452 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- 몬스터 서브 퀘스트가 없을때
    SelectMsg(UID, 2, 914, 8763, 14432, 10, 9455);
	else-- 몬스터 서브 퀘스트가 있을때
    SelectMsg(UID, 2, 914, 8763, 14432, 10, 193);
   end
end

if EVENT == 9455 then
    SelectMsg(UID, 4, 914, 8763, 14432, 22, 9453, 23, 9454);
end

if EVENT == 9453 then --수락시
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9535);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9540);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9545);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9550);
   end
end

if EVENT == 9454 then    SaveEvent(UID, 9538);
end


-- 재료를 다 모았을때 시드 또 등장 

if EVENT == 9460 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9537);
   EVENT = 9462
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9542);
   EVENT = 9462
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9547);
   EVENT = 9462
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9552);
   EVENT = 9462
   end
end

if EVENT == 9462 then
   SelectMsg(UID, 1, 914, 8763, 14432, 3002, 193);
end

if EVENT == 9456 then
    MonsterCount  = CountMonsterQuestSub(UID, 32001);
    if  MonsterCount < 50 then -- 사냥이 남았을때
     SelectMsg(UID, 2, 914, 8763, 14432, 10, 9457);
    else -- 사냥이 완료 되었을때 
     SelectMsg(UID, 4, 914, 8763, 14432, 10, 9458, 27, 193);
    end
end

if EVENT == 9457 then
   ShowMap(UID, 624);
end

local Check;

if EVENT == 9458 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 1033)
        if  Check == true then        
   RunExchange(UID, 1118);
   SaveEvent(UID, 9536);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 1034)
        if  Check == true then        
   RunExchange(UID, 1119);
   SaveEvent(UID, 9541);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 1035)
        if  Check == true then        
   RunExchange(UID, 1120);
   SaveEvent(UID, 9546);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 1036)
        if  Check == true then        
   RunExchange(UID, 1121);
   SaveEvent(UID, 9551);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end
--Blood Don hunt
return Ret;