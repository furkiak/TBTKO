local NPC = 29499;
local Ret = 0;

if (EVENT == 100) then
	SelectMsg(UID, 3, -1, 4901, NPC, 40206, 102, 4006, 501, 27, 502);
end

if (EVENT == 502) then
	Ret = 1;
end

if (EVENT == 102) then
	SelectMsg(UID, 3, -1, 4901, NPC, 10, 103, 27, 502);
end

if (EVENT == 103) then
	GiveItem(UID, 810462000, 1);
	GiveItem(UID, 810462000, 1);
	GiveItem(UID, 810452000, 1);
	GiveItem(UID, 810457000, 1);
	GiveItem(UID, 810464000, 1);
end

------- PATHOS GLOVE KIRDIRMA
if (EVENT == 501) then
	SelectMsg(UID, 3, -1, 4901, NPC, 4504, 580, 8080, 511, 8081, 512,8082 ,513);
end


if (EVENT == 580) then
	ITEMPTHS = HowmuchItem(UID, 810462000);
	if (ITEMPTHS > 0) then
		SelectMsg(UID, 3, -1, 748, NPC, 4509, 532, 4510, 533);
	else
		SelectMsg(UID, 2, -1, 749, NPC, 18, 1000);
	end
end

if (EVENT == 532) then
	SelectMsg(UID, 3, -1, 750, NPC, 4505, 534, 4506, 535, 4507, 536, 4508, 537);
end

if (EVENT == 534) then
	Check = isRoomForItem(UID, 502573462);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810462000, 1)
		GiveItem(UID, 502573462, 1);
		SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
	end
end

if (EVENT == 535) then
	Check = isRoomForItem(UID, 503573463,1);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810462000, 1)
		GiveItem(UID, 503573463, 1, 30)
		SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
	end
end

if (EVENT == 536) then
	Check = isRoomForItem(UID, 504573464);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810462000, 1)
		GiveItem(UID , 504573464, 1)
		SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
	end
end

if (EVENT == 537) then
	Check = isRoomForItem(UID, 505573465);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810462000, 1)
		GiveItem(UID, 505573465, 1)
		SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
	end
end

--- PATHOS GLOVE DEFANS KIRDIRMA


if (EVENT == 533) then
	SelectMsg(UID, 3, -1, 751, NPC, 4514, 538, 4515, 539, 4516, 540, 4517, 541);
end

if (EVENT == 538) then
	Check = isRoomForItem(UID, 511573471);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810462000, 1)
		GiveItem(UID, 511573471, 1)
		SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
	end
end

if (EVENT == 539) then
	Check = isRoomForItem(UID, 512573472);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810462000, 1)
		GiveItem(UID, 512573472, 1)
		SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
	end
end

if (EVENT == 540) then
	Check = isRoomForItem(UID, 513573473);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810462000, 1)
		GiveItem(UID , 513573473, 1)
		SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
	end
end

if (EVENT == 541) then
	Check = isRoomForItem(UID, 514573474);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810462000, 1)
		GiveItem(UID, 514573474, 1)
		SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
	end
end


if (EVENT == 558) then
	SelectMsg(UID, 11, savenum, 4432, NPC);
end

-- VALK ARMOR

if (EVENT == 511) then
	ITEMARMOR = HowmuchItem(UID, 810457000);
	if (ITEMARMOR > 0) then
		SelectMsg(UID, 3, -1, 4902, NPC, 4288, 503, 4289, 504, 4290, 505, 4291, 506);
	else
		SelectMsg(UID, 2, -1, 4921, NPC, 18, 1000);
	end
end

if (EVENT == 512) then
	ITEMHELMET = HowmuchItem(UID, 810452000);
	if (ITEMHELMET > 0) then
		SelectMsg(UID, 3, -1, 4902, NPC, 4292, 507, 4293, 508, 4294, 509, 4295, 510);
	else
		SelectMsg(UID, 2, -1, 4911, NPC, 18, 1000);
	end
end

if (EVENT == 503) then
	Check = isRoomForItem(UID, 508011441);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810457000, 1)
		GiveItem(UID, 508011441, 1)
	end
end

if (EVENT == 504) then
	Check = isRoomForItem(UID, 508011442);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810457000, 1)
		GiveItem(UID, 508011442, 1)
	end
end

if (EVENT == 505) then
	Check = isRoomForItem(UID, 508011443);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810457000, 1)
		GiveItem(UID, 508011443, 1)
	end
end

if (EVENT == 506) then
	Check = isRoomForItem(UID, 508011444);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810457000, 1)
		GiveItem(UID, 508011444, 1)
	end
end

if (EVENT == 507) then
	Check = isRoomForItem(UID, 508013318);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810452000, 1)
		GiveItem(UID, 508013318, 1)
	end
end

if (EVENT == 508) then
	Check = isRoomForItem(UID, 508013319);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810452000, 1)
		GiveItem(UID, 508013319, 1)
	end
end

if (EVENT == 509) then
	Check = isRoomForItem(UID, 508013320);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810452000, 1)
		GiveItem(UID, 508013320, 1)
	end
end

if (EVENT == 510) then
	Check = isRoomForItem(UID, 508013321);
	if (Check == -1) then
		SelectMsg(UID, 2, -1, 832, NPC, 27, 168);
	else
		RobItem(UID, 810452000, 1)
		GiveItem(UID, 508013321, 1)
	end
end

if (EVENT == 513) then -- Dragon Wings
	ITEMDRGN = HowmuchItem(UID, 810464000);
	if (ITEMDRGN > 0) then
		SelectMsg(UID, 3, -1, 10592, NPC, 7680, 543, 7681, 544, 7682, 545, 7683, 546);
	else
		SelectMsg(UID, 2, -1, 10593, NPC, 18, 1000);
	end
end

if (EVENT == 543) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		Check = isRoomForItem(UID, 810178835);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810178835, 1)
		end
	else
		Check = isRoomForItem(UID, 810179839);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810464000, 1)
			GiveItem(UID, 810179839, 1)
		end
	end
end

if (EVENT == 544) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		Check = isRoomForItem(UID, 810178836);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810464000, 1)
			GiveItem(UID, 810178836, 1)
		end
	else
		Check = isRoomForItem(UID, 810179840);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810464000, 1)
			GiveItem(UID, 810179840, 1)
		end
	end
end

if (EVENT == 545) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		Check = isRoomForItem(UID, 810178837);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810464000, 1)
			GiveItem(UID, 810178837, 1)
		end
	else
		Check = isRoomForItem(UID, 810179841);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810464000, 1)
			GiveItem(UID, 810179841, 1)
		end
	end
end

if (EVENT == 546) then
	NATION = CheckNation(UID);
	if (NATION == 1) then
		Check = isRoomForItem(UID, 810178838);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810178838, 1)
		end
	else
		Check = isRoomForItem(UID, 810179842);
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 101);
		else
			RobItem(UID, 810164000, 1)
			GiveItem(UID, 810179842, 1)
		end
	end
end
