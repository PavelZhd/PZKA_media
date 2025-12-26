local PZKACore = require "VVA_core"

local PZKAModule = {}
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
		["FL"] = "VVA_DoorFrontLeft",
		["FR"] = "VVA_DoorFrontRight",		
		["ML"] = "VVA_DoorMiddleLeft",
		["MR"] = "VVA_DoorMiddleRight",		
		["RL"] = "VVA_DoorRearLeft",
		["RR"] = "VVA_DoorRearRight",		
		["FLW"] = "VVA_DoorWindowFrontLeft",
		["FRW"] = "VVA_DoorWindowFrontRight",		
		["MLW"] = "VVA_DoorWindowMiddleLeft",
		["MRW"] = "VVA_DoorWindowMiddleRight",		
		["RLW"] = "VVA_DoorWindowRearLeft",
		["RRW"] = "VVA_DoorWindowRearRight",
		["FLOW"] = "VVA_WindowFrontLeft",
		["FROW"] = "VVA_WindowFrontRight",		
		["MLOW"] = "VVA_WindowMiddleLeft",
		["MROW"] = "VVA_WindowMiddleRight",		
		["RLOW"] = "VVA_WindowRearLeft",
		["RROW"] = "VVA_WindowRearRight",
	}
local seatTemplatesMap = {
		["FL"] = "VVA_SeatFrontLeft",
		["FR"] = "VVA_SeatFrontRight",
		["ML"] = "VVA_SeatMiddleLeft",
		["MR"] = "VVA_SeatMiddleRight",
		["RL"] = "VVA_SeatRearLeft",
		["RR"] = "VVA_SeatRearRight",
		["FLW"] = "VVA_SeatFrontLeft",
		["FRW"] = "VVA_SeatFrontRight",
		["MLW"] = "VVA_SeatMiddleLeft",
		["MRW"] = "VVA_SeatMiddleRight",
		["RLW"] = "VVA_SeatRearLeft",
		["RRW"] = "VVA_SeatRearRight",
		["FLOW"] = "VVA_SeatFrontLeft",
		["FROW"] = "VVA_SeatFrontRight",
		["MLOW"] = "VVA_SeatMiddleLeft",
		["MROW"] = "VVA_SeatMiddleRight",
		["RLOW"] = "VVA_SeatRearLeft",
		["RROW"] = "VVA_SeatRearRight",
	}

PZKAModule.AddExtraTemplate = function(vehicleId, extraTemplate)
	local vt = PZKACore.TeplateHandler(vehicleId)
	vt.plus({extraTemplate})
end
PZKAModule.CreateAnimationProfile = function(vehicleId, model, lights, template, doors, rear, seats, module, extra)
	local vt = PZKACore.TeplateHandler(vehicleId, module)
	local templates = {lights,template,"VVA_EngineDoor",rear,extra}
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

local function MakeDoorSeatTemplate(doors, seats, defaultTemplates)
	local templates = {}
	if defaultTemplates then
		for i, tmpl in pairs(defaultTemplates) do
			table.insert(templates, tmpl)
		end
	end
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
	return templates
end

PZKAModule.ExpandDoorSeatProfile = function(profileId, source, doors, seats)
	PZKACore.addToProfile(profileId,MakeDoorSeatTemplate(doors, seats, {source}))
end
PZKAModule.MakeDoorSeatProfile = function(profileId, doors, seats)
	PZKACore.addToProfile(profileId,MakeDoorSeatTemplate(doors, seats, {"VVA_EngineDoor"}))
end

print("PZKA: addAnimations loaded")
return PZKAModule