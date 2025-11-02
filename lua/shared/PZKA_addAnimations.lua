local PZKACore = require "PZKA_core"

local PZKAModule = { }
PZKAModule.IsProfileDefined = PZKACore.IsProfileDefined
PZKAModule.IsVehicleDefined = PZKACore.IsVehicleDefined
PZKAModule.addToProfile = PZKACore.addToProfile
PZKAModule.muteInProfile = PZKACore.muteInProfile
PZKAModule.modifyProfile = PZKACore.modifyProfile
PZKAModule.TeplateHandler = PZKACore.TeplateHandler
PZKAModule.ApplyTemplateToVehicle = PZKACore.ApplyTemplateToVehicle
PZKAModule.CopyTemplateToVehicle = PZKACore.CopyTemplateToVehicle
PZKAModule.InheritTemplateToVehicle = PZKACore.InheritTemplateToVehicle
PZKAModule.IsVehicleAnimated =  PZKACore.IsVehicleDefined

local doorTemplatesMap = {
		["FL"] = "PZKA_DoorFrontLeft",
		["FR"] = "PZKA_DoorFrontRight",		
		["ML"] = "PZKA_DoorMiddleLeft",
		["MR"] = "PZKA_DoorMiddleRight",		
		["RL"] = "PZKA_DoorRearLeft",
		["RR"] = "PZKA_DoorRearRight",		
		["FLW"] = "PZKA_DoorWindowFrontLeft",
		["FRW"] = "PZKA_DoorWindowFrontRight",		
		["MLW"] = "PZKA_DoorWindowMiddleLeft",
		["MRW"] = "PZKA_DoorWindowMiddleRight",		
		["RLW"] = "PZKA_DoorWindowRearLeft",
		["RRW"] = "PZKA_DoorWindowRearRight",
		["FLOW"] = "PZKA_WindowFrontLeft",
		["FROW"] = "PZKA_WindowFrontRight",		
		["MLOW"] = "PZKA_WindowMiddleLeft",
		["MROW"] = "PZKA_WindowMiddleRight",		
		["RLOW"] = "PZKA_WindowRearLeft",
		["RROW"] = "PZKA_WindowRearRight",
	}
local seatTemplatesMap = {
		["FL"] = "PZKA_SeatFrontLeft",
		["FR"] = "PZKA_SeatFrontRight",
		["ML"] = "PZKA_SeatMiddleLeft",
		["MR"] = "PZKA_SeatMiddleRight",
		["RL"] = "PZKA_SeatRearLeft",
		["RR"] = "PZKA_SeatRearRight",
		["FLW"] = "PZKA_SeatFrontLeft",
		["FRW"] = "PZKA_SeatFrontRight",
		["MLW"] = "PZKA_SeatMiddleLeft",
		["MRW"] = "PZKA_SeatMiddleRight",
		["RLW"] = "PZKA_SeatRearLeft",
		["RRW"] = "PZKA_SeatRearRight",
		["FLOW"] = "PZKA_SeatFrontLeft",
		["FROW"] = "PZKA_SeatFrontRight",
		["MLOW"] = "PZKA_SeatMiddleLeft",
		["MROW"] = "PZKA_SeatMiddleRight",
		["RLOW"] = "PZKA_SeatRearLeft",
		["RROW"] = "PZKA_SeatRearRight",
	}

PZKAModule.AddExtraTemplate = function(vehicleId, extraTemplate)
	local vt = PZKACore.TeplateHandler(vehicleId)
	vt.plus({extraTemplate})
end
PZKAModule.CreateAnimationProfile = function(vehicleId, model, lights, template, doors, rear, seats, module, extra)
	local vt = PZKACore.TeplateHandler(vehicleId, module)
	local templates = {lights,template,rear,extra}
	for i, door in pairs(doors) do
		if doorTemplatesMap[door] then
			table.insert(templates, doorTemplatesMap[door])
		else
			table.insert(templates, door)
		end
	end
	if not seats then
		seats = doors
	end
	for i, seat in pairs(seats) do
		if seatTemplatesMap[seat] then
			table.insert(templates, seatTemplatesMap[seat])
		else
			table.insert(templates, seat)
		end
	end
	vt.plus(templates)
	vt.setModel(model)
end
PZKAModule.CloneAnimationProfile = function(vehicleId, fromId, model, lights, template, extra)
	local vt = PZKACore.TeplateHandler(vehicleId, module)
	vt.setParent(fromId)
	if model then
		vt.setModel(model)
	end
	if light or template or extra then
		local templates = {lights,template,extra}
		vt.plus(templates)
	end
end

PZKAModule.ExpandDoorSeatProfile = function(profileId, source, door, seats)
	PZKAModule.MakeDoorSeatProfile(profileId, door, seats)
	PZKACore.addToProfile(profileId,{source})
end
PZKAModule.MakeDoorSeatProfile = function(profileId, doors, seats)
	local templates = {}
	for i, door in pairs(doors) do
		if doorTemplatesMap[door] then
			table.insert(templates, doorTemplatesMap[door])
		else
			table.insert(templates, door)
		end
	end
	if not seats then
		seats = doors
	end
	for i, seat in pairs(seats) do
		if seatTemplatesMap[seat] then
			table.insert(templates, seatTemplatesMap[seat])
		end
	end
	PZKACore.addToProfile(profileId,templates)
end

--[[
local vehicles = {}
local vehicles2 = {}
local models = {}
local templates = {}
local modelExtras = {}
local pendingExtras = {}
local tcnt = 0;
local mcnt = 0;
local showSeatAnimation = true;

PZKAModule.DisableSeats = function() 
	showSeatAnimation = false;
end
PZKAModule.AddExtraTemplate = function(vehicleId, extraTemplate)
	local pend = pendingExtras[vehicleId]
	if not pend then		
		pend = {c = 0, l = {}}
		pendingExtras[vehicleId] = pend
	end
	local eId = pend.c
	pend.c = pend.c + 1
	peld.l[eId] = extraTemplate
end

PZKAModule.CreateAnimationProfile = function(vehicleId, model, lights, template, doors, rear, seats, module, extra)
	module = module or "Base"
	local tId = tcnt
	tcnt = tcnt + 1
	seats = seats or doors
	templates[tId] = {t = template, d = doors, r = rear, s = seats}
	local mId = mcnt
	mcnt = mcnt + 1
	models[mId] = {m = model, t = tId, l = lights}
	vehicles[vehicleId] = {m = mId, md = module}
	vehicles2[module .. "." .. vehicleId] = vehicles[vehicleId]
	if (extra) then
		PZKAModule.AddExtraTemplate(vehicleId,extra)
	end
end

PZKAModule.IsVehicleAnimated = function(vehicleId)
	return (not not vehicles[vehicleId]) or (not not vehicles2[vehicleId])
end

PZKAModule.CloneAnimationProfile = function(vehicleId, fromId, model, lights, template, extra)
	local from = vehicles[fromId]
	if (from) then
		local mId = from.m
		local fromId = fromId;
		if (model) then
			local fromm = models[mId]
			local tId = fromm.t
			if (template) then
				local t2 = templates[tId]
				tId = tcnt
				tcnt = tcnt + 1
				
				templates[tId] = {t = template, d = t2.d, r = t2.r, s = t2.s}
			end
			local l2 = fromm.l
			if (lights) then
				l2 = lights
			end
			mId = mcnt
			mcnt = mcnt + 1
			models[mId] = {m = model, t = tId, l = l2}
		end
		vehicles[vehicleId] = {m = mId, md = from.md}
		vehicles2[from.md .. "." .. vehicleId] = vehicles[vehicleId]	
	end
	if (extra) then
		PZKAModule.AddExtraTemplate(vehicleId,extra)
	end
end



local function ApplyAnimationProfiles()
	for vehicleId, pending in pairs(pendingExtras) do
		local profile = vehicles[vehicleId]
		if profile then
			local mId = profile.m
			local mE = modelExtras[mId]
			if not mE then
				mE = {c = 0, l = {}}
			end
			for _, data in pending.l do
				eId = mE.c
				mE.c = mE.c + 1
				me.L[eId] = data
			end
		end
	end
	for vehicleId, profile in pairs(vehicles) do
		print("PZKA: Applying animationons to "..vehicleId)
        local module = profile.md
		local model = models[profile.m]
		local template = templates[model.t]
			
		local vehicleScript = ScriptManager.instance:getVehicle(module .. "." .. vehicleId)
		if vehicleScript then 
			vehicleScript:Load(vehicleId, "{ model { file = " .. model.m .. ",}}")
			vehicleScript:Load(vehicleId, "{ template! = " .. model.l .. ",}")
			
			print("PZKA (42): trying to catch error : "..(template and "TEMPLATE" or "NULL").." -- "..(template.t or "NULL"))
			vehicleScript:Load(vehicleId, "{ template! = " .. template.t .. ",}")
			vehicleScript:Load(vehicleId, "{ template! = PZKA_EngineDoor,}")
			for i, door in pairs(template.d) do
				if doorTemplatesMap[door] then
					vehicleScript:Load(vehicleId, "{ template! = " .. doorTemplatesMap[door] .. ",}")
				else
					vehicleScript:Load(vehicleId, "{ template! = " .. door .. ",}")
				end
			end
			vehicleScript:Load(vehicleId, "{ template! = " .. template.r .. ",}")
			print("PZKA (42): Seats enabled: "..(showSeatAnimation and "true" or "false").." on vehicle "..vehicleId)
			if showSeatAnimation then
				for i, door in pairs(template.s) do
					if seatTemplatesMap[door] then
						vehicleScript:Load(vehicleId, "{ template! = " .. seatTemplatesMap[door] .. ",}")
					end
				end
			end
			extras = modelExtras[profile.m]
			if extras then
				for _, data in extras.l do
					vehicleScript:Load(vehicleId, "{ template! = " .. data .. ",}")
				end
			end
		end
	end
end
Events.OnInitGlobalModData.Add(ApplyAnimationProfiles)
]]
print("PZKA: addAnimations loaded")
return PZKAModule