local Ret = 0;
local NPC = 24432;

if (EVENT == 160) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 8255, NPC, 10, 163);
	elseif (QuestNum > 1 and QuestNum < 100) then
		NpcMsg(UID, 8257, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 163) then
	Ret = 1;
end

local savenum = 1853;

if (EVENT == 1000) then
	SaveEvent(UID, 2073);
end

if (EVENT == 1002) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 798, NPC, 22, 1003, 23, 1004);
	else
		SelectMsg(UID, 2, savenum, 798, NPC, 10, 163);
	end
end

if (EVENT == 1003) then
	SaveEvent(UID, 2074);
end

if (EVENT == 1004) then
	SaveEvent(UID, 2077);
end

if (EVENT == 1010) then
	SaveEvent(UID, 2076);
end

if (EVENT == 1006) then
	CountMonster = CountMonsterQuestSub(UID, 1853, 1);
	if (MonsterSub < 20) then
		SelectMsg(UID, 2, savenum, 798, NPC, 18, 1007);
	else
		SelectMsg(UID, 4, savenum, 798, NPC, 41, 1008, 27, 163);
	end
end

if (EVENT == 1007) then
	ShowMap(UID, 107);
end

if (EVENT == 1008) then
	Prem = GetPremium(UID);
	if (Prem > 0) then
		ExpChange(UID, 560000)
		SaveEvent(UID, 2075);
	else
		ExpChange(UID, 400000)
		SaveEvent(UID, 2075);   
	end
end

local savenum = 853;

if (EVENT == 8750) then -- 41 Level Lard Orc
	SelectMsg(UID, 2, savenum, 8151, NPC, 10, 8751);
end

if (EVENT == 8751) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8679);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8684);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8689);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8694);
	end
end

if (EVENT == 8752) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, savenum, 8151, NPC, 22, 8753, 23, 8754);
	else
		SelectMsg(UID, 2, savenum, 8151, NPC, 10, 163);
	end
end

if (EVENT == 8753) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8680);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8685);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8690);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8695);
	end
end

if (EVENT == 8754) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8683);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8688);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8693);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8698);
	end
end

if (EVENT == 8760) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8682);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8687);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8692);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8697);
	end
end

if (EVENT == 8756) then
	MonsterCount = CountMonsterQuestSub(UID, 853, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, savenum, 8151, NPC, 18, 8757);
	else
		SelectMsg(UID, 4, savenum, 8151, NPC, 41, 8758, 23, 163);
	end
end

if (EVENT == 8757) then
	ShowMap(UID, 107);
end

if (EVENT == 8758) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		ExpChange(UID, 850000)
		GoldGain(UID, 100000)
		GiveItem(UID, 126210185, 1)
		GiveItem(UID, 135510185, 1)
		GiveItem(UID, 150610195, 1)
		GiveItem(UID, 155510185, 1)
		SaveEvent(UID, 8681);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		ExpChange(UID, 850000)
		GoldGain(UID, 100000)
		GiveItem(UID, 111010195, 1)
		GiveItem(UID, 111010195, 1)
		GiveItem(UID, 168210135, 1)
		SaveEvent(UID, 8686);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		ExpChange(UID, 850000)
		GoldGain(UID, 100000)
		GiveItem(UID, 180910165, 1)
		GiveItem(UID, 180910175, 1)
		GiveItem(UID, 180910185, 1)
		SaveEvent(UID, 8691);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		ExpChange(UID, 850000)
		GoldGain(UID, 100000)
		GiveItem(UID, 190710185, 1)
		GiveItem(UID, 171510125, 1)
		SaveEvent(UID, 8696);
	end
end

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
    MonsterCount  = CountMonsterQuestSub(UID, 857);
    if  MonsterCount < 10 then -- 사냥이 남았을때
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

if (EVENT == 8170) then -- 45 Level Scolar
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8805);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8810);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8815);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8820);
	end
end

if (EVENT == 8172) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 2, 859, 8390, NPC, 10, 8175);
	else
		SelectMsg(UID, 2, 859, 8259, NPC, 10, 163);
	end
end

if (EVENT == 8175) then
	SelectMsg(UID, 4, 859, 8391, NPC, 22, 8173, 23, 163);
end

if (EVENT == 8173) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8806);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8811);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8816);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8821);
	end
end

if (EVENT == 8180) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 8808);
		EVENT = 8181
    elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 8813);
		EVENT = 8181
    elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 8818);
		EVENT = 8181
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 8823);
		EVENT = 8181
	end
end

if (EVENT == 8181) then
	SelectMsg(UID, 2, 859, 8375, NPC, 3007, 163);
end

if (EVENT == 8176) then
	MonsterCount = CountMonsterQuestSub(UID, 859, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 859, 8376, NPC, 18, 8177);
	else
		SelectMsg(UID, 4, 859, 8392, NPC, 41, 8178, 27, 163);
	end
end

if (EVENT == 8177) then
	ShowMap(UID, 540);
end

if (EVENT == 8178) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 205001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8807);
		ShowEffect(UID, 300391);
	elseif (Class == 2 or Class == 7 or Class == 8) then      
		GiveItem(UID, 245001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8812);
		ShowEffect(UID, 300391);
	elseif (Class == 3 or Class == 9 or Class == 10) then    
		GiveItem(UID, 265001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8817);
		ShowEffect(UID, 300391);
    elseif (Class == 4 or Class == 11 or Class == 12) then     
		GiveItem(UID, 285001005, 1)
		GoldGain(UID, 100000)
		ExpChange(UID, 1500000)
		SaveEvent(UID, 8822);
		ShowEffect(UID, 300391);
	end	 
end

if (EVENT == 9430) then -- 47 Level Macairodus
	SelectMsg(UID, 2, 911, 8760, NPC, 10, 9431);
end

if (EVENT == 9431) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9471);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9476);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9481);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9486);
	end 
end

if (EVENT == 9432) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 911, 8760, NPC, 22, 9433, 23, 9434);
	else
		SelectMsg(UID, 2, 911, 8760, NPC, 10, 163);
	end
end

if (EVENT == 9433) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9472);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9477);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9482);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9487);
	end
end

if (EVENT == 9434) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9475);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9480);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9485);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9490);
	end
end

if (EVENT == 9440) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9474);
		EVENT = 9441
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9479);
		EVENT = 9441
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9484);
		EVENT = 9441
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9489);
		EVENT = 9441
	end
end

if (EVENT == 9441) then
	SelectMsg(UID, 2, 911, 8758, NPC, 3007, 163);
end

if (EVENT == 9436) then
	MonsterCount = CountMonsterQuestSub(UID, 911, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 911, 8376, NPC, 18, 9437);
	else
		SelectMsg(UID, 4, 911, 8392, NPC, 41, 9438, 27, 163);
	end
end

if (EVENT == 9437) then
	ShowMap(UID, 619);
end

if (EVENT == 9438) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		GoldGain(UID, 100000)
		ExpChange(UID, 1900000)
		GiveItem(UID, 910162272, 1)
		GiveItem(UID, 910162272, 1)
		SaveEvent(UID, 9473);
	elseif (Class == 2 or Class == 7 or Class == 8) then      
		GoldGain(UID, 100000)
		ExpChange(UID, 1900000)
		GiveItem(UID, 910163273, 1)
		GiveItem(UID, 910163273, 1)
		SaveEvent(UID, 9478);
	elseif (Class == 3 or Class == 9 or Class == 10) then    
		GoldGain(UID, 100000)
		ExpChange(UID, 1900000)
		GiveItem(UID, 910161271, 1)
		GiveItem(UID, 910161271, 1)
		SaveEvent(UID, 9483);
	elseif (Class == 4 or Class == 11 or Class == 12) then     
		GoldGain(UID, 100000)
		ExpChange(UID, 1900000)
		GiveItem(UID, 910164274, 1)
		GiveItem(UID, 910164274, 1)
		SaveEvent(UID, 9488);
	end	 
end

if (EVENT == 9450) then -- 51 Level Blood Don
	SelectMsg(UID, 2, 913, 8762, NPC, 10, 9451);
end

if (EVENT == 9451) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9513);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9518);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9523);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9528);
	end
end

if (EVENT == 9452) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 913, 8762, NPC, 22, 9453, 23, 163);
	else
		SelectMsg(UID, 2, 913, 8762, NPC, 10, 163);
	end
end

if (EVENT == 9453) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9514);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9519);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9524);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9529);
	end
end

if (EVENT == 9460) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9516);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9521);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9526);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9531);
	end
end

if (EVENT == 9456) then
	MonsterCount = CountMonsterQuestSub(UID, 913, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 913, 8376, NPC, 18, 9457);
	else
		SelectMsg(UID, 4, 913, 8392, NPC, 41, 9458, 27, 163);
	end
end

if (EVENT == 9457) then
	ShowMap(UID, 623);
end

if (EVENT == 9458) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
	GiveItem(UID, 910160118, 1)
		ExpChange(UID, 4000000)
		SaveEvent(UID, 9515);
		ShowEffect(UID, 300391);
	elseif (Class == 2 or Class == 7 or Class == 8) then      
		GiveItem(UID, 910160118, 1)
		ExpChange(UID, 4000000)
		SaveEvent(UID, 9520);
		ShowEffect(UID, 300391);
	elseif (Class == 3 or Class == 9 or Class == 10) then    
		GiveItem(UID, 910160118, 1)
		ExpChange(UID, 4000000)
		SaveEvent(UID, 9525);
		ShowEffect(UID, 300391);
	elseif (Class == 4 or Class == 11 or Class == 12) then     
		GiveItem(UID, 910160118, 1)
		ExpChange(UID, 4000000)
		SaveEvent(UID, 9530);
		ShowEffect(UID, 300391);
	end	 
end


if (EVENT == 9320) then -- 57 Level Hell Hound
	SelectMsg(UID, 2, 894, 8676, NPC, 10, 9321);
end

if (EVENT == 9321) then
	SaveEvent(UID, 9339);
end

if (EVENT == 9322) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 894, 8676, NPC, 22, 9323, 23, 9324);
	else
		SelectMsg(UID, 2, 894, 8676, NPC, 10, 163);
	end
end

if (EVENT == 9323) then
	SaveEvent(UID, 9340);
end

if (EVENT == 9324) then
	SaveEvent(UID, 9343);
end

if (EVENT == 9325) then
	SaveEvent(UID, 9342);
end

if (EVENT == 9327) then
	MonsterCount = CountMonsterQuestSub(UID, 894, 1);
	if (MonsterCount < 20) then
		SelectMsg(UID, 2, 894, 8551, NPC, 18, 9328);
	else
		SelectMsg(UID, 4, 894, 8425, NPC, 41, 9329, 27, 163);
	end
end

if (EVENT == 9328) then
	ShowMap(UID, 37);
end

if (EVENT == 9329) then
	ExpChange(UID, 12000000)
	GiveItem(UID, 379155000, 1)
	SaveEvent(UID, 9341); 
end


if (EVENT == 9140) then -- 60 Level Lich
	SelectMsg(UID, 2, 882, 8207, NPC, 4244, 9141);
end

if (EVENT == 9141) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9255);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9260);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9265);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9270);
	end
end

if (EVENT == 9150) then
	MonsterSub = ExistMonsterQuestSub(UID);
	if (MonsterSub == 0) then
		SelectMsg(UID, 4, 882, 8435, NPC, 3018, 9152, 3019, 9159);
	else
		SelectMsg(UID, 2, 882, 8436, NPC, 4242, 163);
	end
end

if (EVENT == 9152) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9256);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9261);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9266);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9271);
	end
end

if (EVENT == 9159) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9259);
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9264);
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9269);
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9274);
	end
end

if (EVENT == 9153) then
	Class = CheckClass(UID);
	if (Class == 1 or Class == 5 or Class == 6) then
		SaveEvent(UID, 9258);
		EVENT = 9154
	elseif (Class == 2 or Class == 7 or Class == 8) then
		SaveEvent(UID, 9263);
		EVENT = 9154
	elseif (Class == 3 or Class == 9 or Class == 10) then
		SaveEvent(UID, 9268);
		EVENT = 9154
	elseif (Class == 4 or Class == 11 or Class == 12) then
		SaveEvent(UID, 9273);
		EVENT = 9154
	end
end

if (EVENT == 9154) then
	SelectMsg(UID, 2, 882, 8434, NPC, 57, 163);
end

if (EVENT == 9155) then
	MonsterCount = CountMonsterQuestSub(UID, 882, 1);
	if (MonsterCount < 10) then
		SelectMsg(UID, 2, 882, 8437, NPC, 18, 9157);
	else
		SelectMsg(UID, 4, 882, 8438, NPC, 41, 9158, 27, 163);
	end
end

if (EVENT == 9157) then
	ShowMap(UID, 17);
end

if (EVENT == 9158) then
    Class = CheckClass(UID);
    if (Class == 1 or Class == 5 or Class == 6) then
		GiveItem(UID, 206002003, 1)
		SaveEvent(UID, 9257);
		ShowEffect(UID, 300391)
    elseif (Class == 2 or Class == 7 or Class == 8) then
		GiveItem(UID, 246002003, 1)
		SaveEvent(UID, 9262);
		ShowEffect(UID, 300391)
    elseif (Class == 3 or Class == 9 or Class == 10) then
		GiveItem(UID, 266002003, 1)
		SaveEvent(UID, 9267);
		ShowEffect(UID, 300391)
    elseif (Class == 4 or Class == 11 or Class == 12) then
		GiveItem(UID, 286002003, 1)
		SaveEvent(UID, 9272);
		ShowEffect(UID, 300391)
	end	 
end