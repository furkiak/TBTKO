-----
-- Script for [Peddler] Hemes in Moradon
-----

-- Globals
pUser = nil
pNpc = nil
bSelectedReward = -1

local CancelButton				= 0 -- could be any event that doesn't exist
local ChangeIDButton				= 200
local SkillExpRedisButton			= 300
local GuideBookButton				= 400
local CaptainPremiumButton			= 500
local PremiumPotionsButton			= 520
local ClanNCSButton				= 600
local VoucherKarivdisButton			= 650
local SkillExpRedisMiddleGradeButton		= 700
local CospreButton				= 850

-- Map the events to functions
local eventMap = {
	-- Default event for this NPC
	[165]						= HandleNPCSelection,
	[ChangeIDButton]				= function() print("Event: 200") end,
	[SkillExpRedisButton]				= function() print("Event: 300") end,
	[GuideBookButton]				= function() print("Event: 400") end,
	[CaptainPremiumButton]				= function() print("Event: 500") end,
	[PremiumPotionsButton]				= function() print("Event: 520") end,
	[ClanNCSButton]					= function() print("Event: 600") end,
	[VoucherKarivdisButton]				= function() print("Event: 650") end,
	[SkillExpRedisMiddleGradeButton]		= function() print("Event: 700") end,
	[CospreButton]					= function() print("Event: 850") end,
}

function Main(event)
	print("Event: " .. event .. ", selected reward: " .. bSelectedReward)
	local func = eventMap[event]
	if (func and type(func) == "function") then
		func()
	end
end

function HandleNPCSelection()
	pUser:NpcMsg(106)
end

function PremiumPotionsMenu()
	pUser:SaveEvent(6)
	if (pUser:GetNation() == 1) then
		pUser:SelectMsg(1, 100, 105, 28, 107)
	else
		pUser:SelectMsg(1, 100, 111, 28, 107)
	end
end

-- Possibly not used
function Quest205()
	pUser:SaveEvent(59)
	if (pUser:GetNation() == 1) then
		pUser:SelectMsg(1, 102, 206, 32, 189)
	else
		pUser:SelectMsg(1, 102, 207, 4080, 189)
	end
end