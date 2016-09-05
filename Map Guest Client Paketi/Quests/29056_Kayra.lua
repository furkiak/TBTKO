local NPC = 29056;
local Ret = 0;

if (EVENT == 100) then
	SelectMsg(UID, 3, -1, 3018, NPC, 8611, 115, 40102, 106, 7796, 107, 8229, 108, 7202, 110, 7214, 104, 7219, 105, 7242, 547, 2002, 103);
end

if (EVENT == 101) then
	Ret = 1;
end

if (EVENT == 115) then -- Alencia Wing
	SelectMsg(UID, 2, -1, 12056, NPC, 8629, 116);
end

if (EVENT == 116) then -- Alencia Wing Blue
	ALENCIA = HowmuchItem(UID, 900387000); 
	if (ALENCIA < 1) then
		SelectMsg(UID, 2, -1, 12061, NPC, 18, 1000); 
	else
		SelectMsg(UID, 2, -1, 12060, NPC, 4006, 117, 4005, 101);
	end
end

if (EVENT == 1000) then
	ShowMap(UID, 450);
end

if (EVENT == 117) then
	RobItem(UID, 900767000, 1)
	GiveItem(UID, 800032000, 1)
end

if (EVENT == 106) then -- Exchanging Items
	SelectMsg(UID, 3, -1, 3018, NPC, 7247, 118, 7248, 119, 7250, 120, 7251, 121, 8210, 122, 7258, 123);
end

if (EVENT == 118) then -- Golden Pickax
	DCPRE = HowmuchItem(UID, 508122000);
	if (DCPRE < 1) then
		SelectMsg(UID, 2, -1, 9943, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 9944, NPC, 4006, 124, 4005, 101);
	end
end

if (EVENT == 124) then
	RobItem(UID, 508122000, 1)
	GiveItem(UID, 389135000, 1,30)
end

if (EVENT == 119) then -- Golden Fishing
	EXPPRE = HowmuchItem(UID, 399282686);
	WARPRE = HowmuchItem(UID, 399292764);
	if (EXPPRE < 1 or WARPRE < 1) then
		SelectMsg(UID, 2, -1, 9945, NPC, 18, 1000);
	elseif (EXPPRE > 0) then
		SelectMsg(UID, 2, -1, 9946, NPC, 4006, 125, 4005, 101);
	elseif (WARPRE > 0) then
		SelectMsg(UID, 2, -1, 9946, NPC, 4006, 126, 4005, 101);
	end
end

if (EVENT == 125) then
	RobItem(UID, 399282686, 1)
	GiveItem(UID, 508121000, 1)
end

if (EVENT == 126) then
	RobItem(UID, 399292764, 1)
	GiveItem(UID, 508121000, 1)
end

if (EVENT == 120) then -- War Pre Map of Chaos
	WARPRE = HowmuchItem(UID, 399292764);
	if (WARPRE < 1) then
		SelectMsg(UID, 2, -1, 9951, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 9949, NPC, 4006, 128, 4005, 101);
	end
end

if (EVENT == 128) then
	RobItem(UID, 399292764, 1)
	GiveItem(UID, 910247000, 1)
end

if (EVENT == 121) then -- War Pre Ancient Text
	WARPRE = HowmuchItem(UID, 399292764);
	if (WARPRE < 1) then
		SelectMsg(UID, 2, -1, 9951, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 9953, NPC, 4006, 129, 4005, 101);
	end
end

if (EVENT == 129) then
	RobItem(UID, 399292764, 1)
	GiveItem(UID, 810161000, 1)
end

if (EVENT == 122) then -- Under Castle Weapons Box
	UNDER = HowmuchItem(UID, 399292764); -- ITEM KONTROL EDILMELI
	if (UNDER < 1) then
		SelectMsg(UID, 2, -1, 11061, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11062, NPC, 4006, 130, 4005, 101);
	end
end

if (EVENT == 130) then
	RobItem(UID, 399292764, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 810161000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 123) then -- Spirit's Help
	SelectMsg(UID, 3, -1, 9989, NPC, 7259, 131, 7260, 132, 7314, 133);
end

if (EVENT == 131) then -- Spirit Dryads
	SelectMsg(UID, 2, -1, 9990, NPC, 3000, 134, 3005, 101);
end

if (EVENT == 134) then
	DRYADS = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (DRYADS < 1) then
		SelectMsg(UID, 2, -1, 9991, NPC, 18, 1000);
	else
		RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
		GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	end
end

if (EVENT == 132) then -- Spirit Oreads
	SelectMsg(UID, 2, -1, 9990, NPC, 3000, 135, 3005, 101);
end

if (EVENT == 135) then
	OREADS = HowmuchItem(UID, 900386000); -- ITEM KONTROL EDILMELI
	if (OREADS < 1) then
		SelectMsg(UID, 2, -1, 9991, NPC, 18, 1000);
	else
		RobItem(UID, 900386000, 1) -- ITEM KONTROL EDILMELI
		GiveItem(UID, 700039768, 1) -- ITEM KONTROL EDILMELI
	end
end

if (EVENT == 133) then -- Spirit Alseids
	SelectMsg(UID, 2, -1, 9990, NPC, 3000, 136, 3005, 101);
end

if (EVENT == 136) then
	ALSEIDS = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (ALSEIDS < 1) then
		SelectMsg(UID, 2, -1, 9992, NPC, 18, 1000);
	else
		RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
		GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	end
end

if (EVENT == 107) then -- Monster Staff Exchanging Items
	SelectMsg(UID, 3, -1, 10849, NPC, 8576, 137, 7790, 138, 7791, 139, 7792, 140, 7793, 141, 7794, 142, 7795, 143, 7797, 144, 7992, 145);
end

if (EVENT == 137) then -- +4 Rosetta Armor
	SelectMsg(UID, 3, -1, 11677, NPC, 8577, 146, 8578, 147, 8579, 148, 8580, 149);
end

if (EVENT == 146) then
	ROSWAR = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (ROSWAR < 1) then
		SelectMsg(UID, 2, -1, 11678, NPC, 18, 1000);
	else
		RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
		GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	end
end

if (EVENT == 147) then
	ROSROG = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (ROSROG < 1) then
		SelectMsg(UID, 2, -1, 11678, NPC, 18, 1000);
	else
		RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
		GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	end
end

if (EVENT == 148) then
	ROSMAGE = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (ROSMAGE < 1) then
		SelectMsg(UID, 2, -1, 11678, NPC, 18, 1000);
	else
		RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
		GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	end
end

if (EVENT == 149) then
	ROSPRI = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (ROSPRI < 1) then
		SelectMsg(UID, 2, -1, 11678, NPC, 18, 1000);
	else
		RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
		GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	end
end

if (EVENT == 138) then -- Juriad Jewel Box
	MONJUR = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (MONJUR < 1) then
		SelectMsg(UID, 2, -1, 10851, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 10850, NPC, 4006, 150, 4005, 101);
	end
end

if (EVENT == 150) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 139) then -- Accessory Box
	MONACC = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (MONACC < 1) then
		SelectMsg(UID, 2, -1, 10853, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 10852, NPC, 4006, 151, 4005, 101);
	end
end

if (EVENT == 151) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 140) then -- Bifrost Box
	MONBEEF = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (MONBEEF < 1) then
		SelectMsg(UID, 2, -1, 10855, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 10854, NPC, 4006, 152, 4005, 101);
	end
end

if (EVENT == 152) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 141) then -- 7 Armor Package
	-- TODO :P
end

if (EVENT == 153) then
	-- 7 Armor Package
end

if (EVENT == 142) then -- Guardian Exchange Coupon
	Guardian = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Guardian < 1) then
		SelectMsg(UID, 2, -1, 10859, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 10858, NPC, 4006, 154, 4005, 101);
	end
end

if (EVENT == 154) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 143) then -- Magpie Mama Transformation vouchers
	Magpie = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Magpie < 1) then
		SelectMsg(UID, 2, -1, 10861, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 10860, NPC, 4006, 155, 4005, 101);
	end
end

if (EVENT == 155) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 144) then -- Battlefield Hero Wing Coupon
	Hero = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Hero < 1) then
		SelectMsg(UID, 2, -1, 10865, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 10864, NPC, 4006, 156, 4005, 101);
	end
end

if (EVENT == 156) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 145) then -- Wing Weapon Box
	Wing = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Wing < 1) then
		SelectMsg(UID, 2, -1, 11037, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11036, NPC, 4006, 157, 4005, 101);
	end
end

if (EVENT == 157) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 108) then -- Dragon Box Exchanging Items
	SelectMsg(UID, 3, -1, 11672, NPC, 8229, 158, 8230, 159, 8231, 160, 8232, 161, 8233, 162, 8234, 163, 8235, 164, 8236, 165, 8239, 166);
end

if (EVENT == 158) then -- Dragon Box
	Dragon = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Dragon < 1) then
		SelectMsg(UID, 2, -1, 11673, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11674, NPC, 4006, 167, 4005, 101);
	end
end

if (EVENT == 167) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 159) then -- Dragon Box
	Dragon = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Dragon < 1) then
		SelectMsg(UID, 2, -1, 11673, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11674, NPC, 4006, 168, 4005, 101);
	end
end

if (EVENT == 168) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 160) then -- Dragon Box
	Dragon = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Dragon < 1) then
		SelectMsg(UID, 2, -1, 11673, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11674, NPC, 4006, 169, 4005, 101);
	end
end

if (EVENT == 169) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 161) then -- Dragon Box
	Dragon = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Dragon < 1) then
		SelectMsg(UID, 2, -1, 11673, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11674, NPC, 4006, 170, 4005, 101);
	end
end

if (EVENT == 170) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 162) then -- Dragon Box
	Dragon = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Dragon < 1) then
		SelectMsg(UID, 2, -1, 11673, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11674, NPC, 4006, 171, 4005, 101);
	end
end

if (EVENT == 171) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 163) then -- Dragon Box
	Dragon = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Dragon < 1) then
		SelectMsg(UID, 2, -1, 11673, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11674, NPC, 4006, 172, 4005, 101);
	end
end

if (EVENT == 172) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 164) then -- Dragon Box
	Dragon = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Dragon < 1) then
		SelectMsg(UID, 2, -1, 11673, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11674, NPC, 4006, 173, 4005, 101);
	end
end

if (EVENT == 173) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 165) then -- Dragon Box
	Dragon = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Dragon < 1) then
		SelectMsg(UID, 2, -1, 11673, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11674, NPC, 4006, 174, 4005, 101);
	end
end

if (EVENT == 174) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 166) then -- Dragon Box
	Dragon = HowmuchItem(UID, 900000000); -- ITEM KONTROL EDILMELI
	if (Dragon < 1) then
		SelectMsg(UID, 2, -1, 11673, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 11674, NPC, 4006, 175, 4005, 101);
	end
end

if (EVENT == 175) then
	RobItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
	GiveItem(UID, 900000000, 1) -- ITEM KONTROL EDILMELI
end

if (EVENT == 110) then -- Premium Item Use
	PREM = GetPremium(UID);
	if (PREM == 0) then
		SelectMsg(UID, 3, -1, 9527, NPC, 7197, 176, 7198,182, 7199, 2101);
	else
		SelectMsg(UID, 2, -1, 9526, NPC, 10, 101);
	end
end

if (EVENT == 176) then -- DISC Premium
	SelectMsg(UID, 2, -1, 9527, NPC, 4006, 183, 4005, 101);
end

if (EVENT == 183) then
	DCPREM = HowmuchItem(UID, 399281685);
	if (DCPREM < 1) then
		SelectMsg(UID, 2, -1, 9528, NPC, 18, 1000);
	else
		RobItem(UID, 399281685, 1)
		GivePremium(UID, 10, 30)
	end
end

if (EVENT == 181) then -- EXP Premium
	SelectMsg(UID, 2, -1, 9527, NPC, 4006, 184, 4005, 101);
end

if (EVENT == 184) then
	EXPPREM = HowmuchItem(UID, 399282686);
	if (EXPPREM < 1) then
		SelectMsg(UID, 2, -1, 9528, NPC, 18, 1000);
	else
		RobItem(UID, 399282686, 1)
		GivePremium(UID, 11, 30)
	end
end

if (EVENT == 182) then -- WAR Premium
	SelectMsg(UID, 2, -1, 9527, NPC, 4006, 184, 4005, 101);
end

if (EVENT == 185) then
	WARPREM = HowmuchItem(UID, 900757000);
	if (WARPREM < 1) then
		SelectMsg(UID, 2, -1, 9528, NPC, 18, 1000);
	else
		RobItem(UID, 900757000, 1)
		GivePremium(UID, 1, 30)
	end
end

if (EVENT == 2101) then -- Bronze Premium
	SelectMsg(UID, 2, -1, 9527, NPC, 4006, 2012, 4005, 101);
end

if (EVENT == 2012) then
	WARPREM = HowmuchItem(UID, 900757000);
	if (WARPREM < 1) then
		SelectMsg(UID, 2, -1, 9528, NPC, 18, 1000);
	else
		RobItem(UID, 900757000, 1)
		GivePremium(UID, 9, 30)
	end
end
if (EVENT == 2100) then -- Premium
	SelectMsg(UID, 2, -1, 9527, NPC, 4006, 2103, 4005, 101);
end

if (EVENT == 2103) then
	WARPREM = HowmuchItem(UID, 399283687);
	if (WARPREM < 1) then
		SelectMsg(UID, 2, -1, 9528, NPC, 18, 1000);
	else
		RobItem(UID, 399283687, 1)
		GivePremium(UID, 9, 30)
	end
end



if (EVENT == 111) then -- Seal Coupon
	SelectMsg(UID, 2, -1, 9706, NPC, 7229, 177, 7230, 178);
end

if (EVENT == 177) then -- Seal 10x
	SelectMsg(UID, 2, -1, 9708, NPC, 4161, 179, 4162, 101);
end

if (EVENT == 179) then -- Seal 10x Yes
	
end

if (EVENT == 178) then -- Seal 50x
	SelectMsg(UID, 2, -1, 9709, NPC, 4161, 180, 4162, 101);
end

if (EVENT == 180) then -- Seal 50x Yes
	
end

if (EVENT == 104) then --Minevra Package
	MINEVRA = HowmuchItem(UID, 508073000);
	if (MINEVRA < 1) then
		SelectMsg(UID, 2, -1, 9622, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 9621, NPC, 4006, 114, 4005, 101);
	end
end

if (EVENT == 114) then
	RobItem(UID, 508073000, 1)
	GiveItem(UID, 508075000, 1)
end

if (EVENT == 105) then -- Pathos Glove Package
	PATHOS = HowmuchItem(UID, 508074000);
	if (PATHOS < 1) then
		SelectMsg(UID, 2, -1, 9629, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 9628, NPC, 4006, 113, 4005, 101);
	end
end

if (EVENT == 113) then
	RobItem(UID, 508074000, 1)
	GiveItem(UID, 508075000, 1)
end

if (EVENT == 102) then -- Helmet of Wrath Use
	KURU = HowmuchItem(UID, 800451000);
	if (KURU < 1) then
		SelectMsg(UID, 2, -1, 43604, NPC, 18, 1000);
	else
		SelectMsg(UID, 2, -1, 43605, NPC, 4006, 112, 4005, 101);
	end
end

if (EVENT == 112) then
	RobItem(UID, 800451000, 1)
	GiveItem(UID, 518006000, 1)
end

if (EVENT == 103) then -- 2.Sayfa
	SelectMsg(UID, 3, -1, 3018, NPC, 2003, 100, 7228, 111, 7496, 102, 7679, 542);
end

if (EVENT == 542) then -- Dragon Wings
	ITEMDRGN = HowmuchItem(UID, 810164000);
	if (ITEMDRGN > 0) then
		SelectMsg(UID, 3, -1, 10592, NPC, 7680, 543, 7681, 544, 7682, 545, 7683, 546);
	else
		SelectMsg(UID, 2, -1, 10593, NPC, 18, 1000);
	end
end

if (EVENT == 543) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		Check = isRoomForItem(UID, 810178835 , 30);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810178835, 1,30)
		end
	else
		Check = isRoomForItem(UID, 810179839);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810179839, 1,30)
		end
	end
end

if (EVENT == 544) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		Check = isRoomForItem(UID, 810178836 , 30);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810178836, 1, 30)
		end
	else
		Check = isRoomForItem(UID, 810179840);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810179840, 1, 30)
		end
	end
end

if (EVENT == 545) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		Check = isRoomForItem(UID, 810178837 , 30);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810178837, 1, 30)
		end
	else
		Check = isRoomForItem(UID, 810179841);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810179841, 1, 30)
		end
	end
end

if (EVENT == 546) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		Check = isRoomForItem(UID, 810178838 , 30);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810178838, 1, 30)
		end
	else
		Check = isRoomForItem(UID, 810179842);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810179842, 1,30)
		end
	end
end

if (EVENT == 547) then -- Yeniceri Minevra
	SelectMsg(UID, 2, -1, 9938, NPC, 7244, 548, 7243, 549);
end

if (EVENT == 548) then
	ITEMYENIA = HowmuchItem(UID, 508117000);
	if (ITEMYENIA > 0) then
		SelectMsg(UID, 3, -1, 9941, NPC, 4288, 550, 4289, 551, 4290, 552, 4291, 553);
	else
		SelectMsg(UID, 2, -1, 9942, NPC, 18, 1000);
	end
end

if (EVENT == 550) then
	Check = isRoomForItem(UID, 518001636);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
	else
		RobItem(UID, 508117000, 1)
		GiveItem(UID, 518001636, 1)
	end
end

if (EVENT == 551) then
	Check = isRoomForItem(UID, 518001637);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
	else
		RobItem(UID, 508117000, 1)
		GiveItem(UID, 518001637,1)
	end
end

if (EVENT == 552) then
	Check = isRoomForItem(UID, 518001638);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
	else
		RobItem(UID, 508117000, 1)
		GiveItem(UID, 518001638, 1)
	end
end

if (EVENT == 553) then
	Check = isRoomForItem(UID, 518001639);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
	else
		RobItem(UID, 508117000, 1)
		GiveItem(UID, 518001639, 1)
	end
end

if (EVENT == 549) then
	ITEMYENIH = HowmuchItem(UID, 508116000);
	if (ITEMYENIH > 0) then
		SelectMsg(UID, 3, -1, 9941, NPC, 4292, 554, 4293, 555, 4294, 556, 4295, 557);
	else
		SelectMsg(UID, 2, -1, 9940, NPC, 18, 1000);
	end
end

if (EVENT == 554) then
	Check = isRoomForItem(UID, 518003636,30);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
	else
		RobItem(UID, 508116000, 1)
		GiveItem(UID, 518003636, 1)
	end
end

if (EVENT == 555) then
	Check = isRoomForItem(UID, 518003637);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
	else
		RobItem(UID, 508116000, 1)
		GiveItem(UID, 518003637, 1)
	end
end

if (EVENT == 556) then
	Check = isRoomForItem(UID, 518003638);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
	else
		RobItem(UID, 508116000, 1)
		GiveItem(UID, 518003638, 1)
	end
end

if (EVENT == 557) then
	Check = isRoomForItem(UID, 518003639);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
	else
		RobItem(UID, 508116000, 1)
		GiveItem(UID, 518003639, 1)
	end
end