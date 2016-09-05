local NPC = 29505;
local Ret = 0;

if EVENT == 100 then
   Level = CheckLevel(UID);
   if Level < 55 then
   SelectMsg(UID, 2, -1, 9145, NPC, 27, 3000);
   else
   EVENT = 200
   end	  
end

if EVENT == 3000 then
   Ret = 1;
end
   -- 7155, 400, Begınner Item
if EVENT == 200 then
   SelectMsg(UID, 3, -1, 8932, NPC, 7125, 101, 7126, 102, 7127, 103, 7128, 104, 7129, 105, 7130, 106, 7131, 107, 7132, 108, 2002, 109);
end

if EVENT == 101 then -- 800078000 HP 2000
   Room = isRoomForItem(UID, 800078000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800078000)
   end
   end   
end

if EVENT == 102 then -- 800076000 350 AC
   Room = isRoomForItem(UID, 800076000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800076000)
   end
   end
end

if EVENT == 103 then -- 800014000 attack scroll
   Room = isRoomForItem(UID, 800014000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800014000)
   end
   end
end

if EVENT == 104 then -- 810015000 speed scroll
   Room = isRoomForItem(UID, 800015000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800015000)
   end
   end
end

if EVENT == 105 then -- 800021000 Scroll of Teleport friend
   Room = isRoomForItem(UID, 800021000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800021000)
   end
   end
end

if EVENT == 106 then -- 900145000 Scroll of Weapon Enchant
   Room = isRoomForItem(UID, 900145000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 900145000, 30)
   end
   end
end

if EVENT == 107 then -- 900146000 Scroll of Armor Enchant
   Room = isRoomForItem(UID, 900146000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 900146000, 30)
   end
   end
end

if EVENT == 108 then -- 800008000 Scroll of Lion
   Room = isRoomForItem(UID, 800008000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800008000)
   end
   end
end

if EVENT == 109 then -- Next Page
   SelectMsg(UID, 3, -1, 8932, NPC, 7150, 110, 7151, 111, 7152, 112, 7153, 113, 7154, 114, 7165, 1000, 4005, 3000);
end

if EVENT == 1000 then -- 62 Scrolls
   Class = CheckClass(UID);
   if Class == 1 or Class == 5 or Class == 6 then
   Room = isRoomForItem(UID, 379063000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 379063000, 1) -- Scream Scroll
   end
   elseif Class == 2 or Class == 7 or Class == 8 then
   Room = isRoomForItem(UID, 379064000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 379064000, 1) -- Magic Shield Scroll
   end
   elseif Class == 3 or Class == 9 or Class == 10 then
   Room = isRoomForItem(UID, 379065000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 379065000, 1) -- Absolute Power Scroll  
   end
   elseif Class == 4 or Class == 11 or Class == 12 then
   Room = isRoomForItem(UID, 379066000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 379066000, 1) -- Judgment Scroll  
   end
   end
end

if EVENT == 110 then -- 800003000 Scroll of  Strength(L)
   Room = isRoomForItem(UID, 800003000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800003000)
   end
   end
end

if EVENT == 111 then -- 800004000 Scroll of  Health(L)
   Room = isRoomForItem(UID, 800004000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800004000)
   end
   end
end

if EVENT == 112 then -- 800005000 Scroll of  Dexterity(L)
   Room = isRoomForItem(UID, 800005000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800005000)
   end
   end
end

if EVENT == 113 then -- 800006000 Scroll of  intelligence(L)
   Room = isRoomForItem(UID, 800006000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800006000)
   end
   end
end

if EVENT == 114 then -- 800007000 Scroll of  Magic power(L)
   Room = isRoomForItem(UID, 800007000);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   ITEM = HowmuchItem(UID, 900000000);
   if ITEM < 15000000 then
   SelectMsg(UID, 2, -1, 9144, NPC, 32, 3000);
   else
   GoldLose(UID, 15000000)
   GiveItem(UID, 800007000)
   end
   end
end

if EVENT == 400 then -- Beginner Item
   SelectMsg(UID, 3, -1, 8932, NPC, 7156, 401, 7157, 402, 7158, 403, 4005, 3000);
end

if EVENT == 401 then -- Armor
   SelectMsg(UID, 3, -1, 8932, NPC, 7133, 420, 7159, 421, 7160, 422, 4005, 3000);
end

if EVENT == 402 then -- Weapon
   SelectMsg(UID, 3, -1, 8932, NPC, 7164, 430, 7161, 431, 4005, 3000);
end

if EVENT == 403 then -- Accessory
   SelectMsg(UID, 3, -1, 8932, NPC, 4006, 440, 4005, 3000);
end

if EVENT == 420 then -- Chitin Armor Set
   Class = CheckClass(UID);
   if Class == 1 or Class == 5 or Class == 6 then
   Room = isRoomForItem(UID, 215001030);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 215001021, 1)
   GiveItem(UID, 215002021, 1)
   GiveItem(UID, 215003021, 1)
   GiveItem(UID, 215004021, 1)
   GiveItem(UID, 215005021, 1)   
   end
   elseif Class == 2 or Class == 7 or Class == 8 then
   Room = isRoomForItem(UID, 255001090);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 255001081, 1)
   GiveItem(UID, 255002081, 1)
   GiveItem(UID, 255003081, 1)
   GiveItem(UID, 255004081, 1)
   GiveItem(UID, 255005081, 1)   
   end
   elseif Class == 3 or Class == 9 or Class == 10 then
   Room = isRoomForItem(UID, 275001060);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 275001051, 1)
   GiveItem(UID, 275002051, 1)
   GiveItem(UID, 275003051, 1)
   GiveItem(UID, 275004051, 1)
   GiveItem(UID, 275005051, 1)   
   end
   elseif Class == 4 or Class == 11 or Class == 12 then
   Room = isRoomForItem(UID, 295001060);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 295001051, 1)
   GiveItem(UID, 295002051, 1)
   GiveItem(UID, 295003051, 1)
   GiveItem(UID, 295004051, 1)
   GiveItem(UID, 295005051, 1)   
   end
   end
end

if EVENT == 421 then -- Chitin Shell Set
   Class = CheckClass(UID);
   if Class == 1 or Class == 5 or Class == 6 then
   Room = isRoomForItem(UID, 216001030);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 216001021, 1)
   GiveItem(UID, 216002021, 1)
   GiveItem(UID, 216003021, 1)
   GiveItem(UID, 216004021, 1)
   GiveItem(UID, 216005021, 1) 
   end
   elseif Class == 2 or Class == 7 or Class == 8 then
   Room = isRoomForItem(UID, 256001090);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 256001081, 1)
   GiveItem(UID, 256002081, 1)
   GiveItem(UID, 256003081, 1)
   GiveItem(UID, 256004081, 1)
   GiveItem(UID, 256005081, 1) 
   end
   elseif Class == 3 or Class == 9 or Class == 10 then
   Room = isRoomForItem(UID, 276001060);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 276001051, 1)
   GiveItem(UID, 276002051, 1)
   GiveItem(UID, 276003051, 1)
   GiveItem(UID, 276004051, 1)
   GiveItem(UID, 276005051, 1) 
   end
   elseif Class == 4 or Class == 11 or Class == 12 then
   Room = isRoomForItem(UID, 296001060);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 296001051, 1)
   GiveItem(UID, 296002051, 1)
   GiveItem(UID, 296003051, 1)
   GiveItem(UID, 296004051, 1)
   GiveItem(UID, 296005051, 1) 
   end
   end
end

if EVENT == 422 then -- Krowaz Set
   Class = CheckClass(UID);
   if Class == 1 or Class == 5 or Class == 6 then
   Room = isRoomForItem(UID, 218001030);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 218001021, 1)
   GiveItem(UID, 218002021, 1)
   GiveItem(UID, 218003021, 1)
   GiveItem(UID, 218004021, 1)
   GiveItem(UID, 218005021, 1) 
   end
   elseif Class == 2 or Class == 7 or Class == 8 then
   Room = isRoomForItem(UID, 258001090);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 258001081, 1)
   GiveItem(UID, 258002081, 1)
   GiveItem(UID, 258003081, 1)
   GiveItem(UID, 258004081, 1)
   GiveItem(UID, 258005081, 1) 
   end
   elseif Class == 3 or Class == 9 or Class == 10 then
   Room = isRoomForItem(UID, 278001060);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 278001051, 1)
   GiveItem(UID, 278002051, 1)
   GiveItem(UID, 278003051, 1)
   GiveItem(UID, 278004051, 1)
   GiveItem(UID, 278005051, 1) 
   end
   elseif Class == 4 or Class == 11 or Class == 12 then
   Room = isRoomForItem(UID, 298001060);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 298001051, 1)
   GiveItem(UID, 298002051, 1)
   GiveItem(UID, 298003051, 1)
   GiveItem(UID, 298004051, 1)
   GiveItem(UID, 298005051, 1) 
   end
   end
end

if EVENT == 430 then -- Other Weapon
   Class = CheckClass(UID);
   if Class == 1 or Class == 5 or Class == 6 then
   Room = isRoomForItem(UID, 156211060);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 156211051, 1) -- Raptor
   GiveItem(UID, 139311141, 1) -- Avedon
   GiveItem(UID, 146211051, 1) -- Iron Impact
   GiveItem(UID, 149111081, 1) -- Hell Breaker
   GiveItem(UID, 170251251, 1) -- Chitin Shield
   end
   elseif Class == 2 or Class == 7 or Class == 8 then
   Room = isRoomForItem(UID, 111211060);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 111211051, 1) -- Shard
   GiveItem(UID, 111211051, 1) -- Shard
   GiveItem(UID, 119311171, 1) -- Sherion
   GiveItem(UID, 119311171, 1) -- Sherion
   GiveItem(UID, 169312391, 1) -- Eagle Eye
   GiveItem(UID, 170250256, 1) -- Chitin Shield
   end
   elseif Class == 3 or Class == 9 or Class == 10 then
   Room = isRoomForItem(UID, 189611420);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 189611411, 1) -- Hell Blood
   GiveItem(UID, 189612441, 1) -- Garp
   GiveItem(UID, 189613471, 1) -- Elysium
   GiveItem(UID, 189212681, 1) -- Chaotic Staff
   GiveItem(UID, 189112651, 1) -- Oasis Staff
   GiveItem(UID, 189312621, 1) -- Scorching Staff
   GiveItem(UID, 170250256, 1) -- Chitin Shield
   end
   elseif Class == 4 or Class == 11 or Class == 12 then
   Room = isRoomForItem(UID, 199111270);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 199111251, 1) -- Smite Hammer
   GiveItem(UID, 170251251, 1) -- Chitin Shield
   GiveItem(UID, 199311291, 1) -- Holy Animor
   GiveItem(UID, 149111081, 1) -- Hell Breaker
   GiveItem(UID, 146211051, 1) -- Iron Impact
   GiveItem(UID, 126411051, 1) -- Mirage
   end
   end
end

if EVENT == 431 then -- Krowaz Weapon
   Class = CheckClass(UID);
   if Class == 1 or Class == 5 or Class == 6 then
   Room = isRoomForItem(UID, 197411520);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 139411231, 1) -- Baal
   GiveItem(UID, 127411201, 1) -- Wirinom
   GiveItem(UID, 159411231, 1) -- Nebiros
   end
   elseif Class == 2 or Class == 7 or Class == 8 then
   Room = isRoomForItem(UID, 180411510);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 180411501, 1) -- Windforce
   GiveItem(UID, 128411321, 1) -- Raum
   GiveItem(UID, 128411321, 1) -- Raum
   end
   elseif Class == 3 or Class == 9 or Class == 10 then
   Room = isRoomForItem(UID, 182411660);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 182411651, 1) -- Fulitol
   GiveItem(UID, 183411741, 1) -- Molok
   GiveItem(UID, 184411831, 1) -- Faun
   end
   elseif Class == 4 or Class == 11 or Class == 12 then
   Room = isRoomForItem(UID, 198411450);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 198411441, 1) -- Leonard
   end
   end
end

if EVENT == 440 then -- Accessory
   Class = CheckClass(UID);
   if Class == 1 or Class == 5 or Class == 6 then
   Room = isRoomForItem(UID, 320310413);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 310511131, 1) -- Minatours Earring
   GiveItem(UID, 310511131, 1) -- Minatours Earring
   GiveItem(UID, 320310411, 1) -- Iron Necklace
   GiveItem(UID, 340610371, 1) -- Iron Belt
   GiveItem(UID, 330620431, 1) -- ROF
   GiveItem(UID, 330620431, 1) -- ROF
   end
   elseif Class == 2 or Class == 7 or Class == 8 then
   Room = isRoomForItem(UID, 320310413);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 310512141, 1) -- Howling
   GiveItem(UID, 310512141, 1) -- Howling
   GiveItem(UID, 320310411, 1) -- Iron Necklace
   GiveItem(UID, 340610371, 1) -- Iron Belt
   GiveItem(UID, 330620431, 1) -- ROF
   GiveItem(UID, 330620431, 1) -- ROF
   end
   elseif Class == 3 or Class == 9 or Class == 10 then
   Room = isRoomForItem(UID, 320310413);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 310513151, 1) -- Lich King
   GiveItem(UID, 310513151, 1) -- Lich King
   GiveItem(UID, 320310411, 1) -- Iron Necklace
   GiveItem(UID, 340610371, 1) -- Iron Belt
   GiveItem(UID, 330620431, 1) -- ROF
   GiveItem(UID, 330620431, 1) -- ROF
   end
   elseif Class == 4 or Class == 11 or Class == 12 then
   Room = isRoomForItem(UID, 320310413);
   if Room == -1 then
   SelectMsg(UID, 2, -1, 832, NPC, 27, 3000);
   else
   GiveItem(UID, 310514161, 1) -- Lillime
   GiveItem(UID, 310514161, 1) -- Lillime
   GiveItem(UID, 320310411, 1) -- Iron Necklace
   GiveItem(UID, 340610371, 1) -- Iron Belt
   GiveItem(UID, 330620431, 1) -- ROF
   GiveItem(UID, 330620431, 1) -- ROF
   end
   end
end