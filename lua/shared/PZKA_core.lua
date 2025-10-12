local VVAmodule = require "VVA_core"

if not VVAmodule then
	VVAmodule = {}
	local vehicles = {}
	local profiles = {}

	VVAmodule.IsProfileDefined = function(profileName)
		return not not profiles[profileName]
	end
	VVAmodule.IsVehicleDefined = function(vehicleId, module)
		local mod = module or "Base"
		local fullId = mod .. "." .. vehicleId
		return not not vehicles[fullId]
	end

	VVAmodule.addToProfile = function(profileName, templates)
		local prof = profiles[profileName]
		if not prof then
			prof = {name = profileName, plus = {}, minus = {}}
			profiles[profileName] = prof
		end
		for i, template in pairs(templates) do
			prof.plus[template] = 1
		end
	end

	VVAmodule.muteInProfile = function(profileName, templates)
		local prof = profiles[profileName]
		if not prof then
			prof = {name = profileName, plus = {}, minus = {}}
			profiles[profileName] = prof
		end
		for i, template in pairs(templates) do
			prof.minus[template] = 1
		end
	end

	VVAmodule.modifyProfile = function(profileName, minuses, pluses)
		local prof = profiles[profileName]
		if not prof then
			prof = {name = profileName, plus = {}, minus = {}}
			profiles[profileName] = prof
		end
		if minuses then
			for i, minus in pairs(minuses) do
				prof.minus[minus] = 1
			end
		end
		if pluses then
			for i, plus in pairs(pluses) do
				prof.plus[plus] = 1
			end
		end
	end

	local function plusTemplates(vehicleObj, templates) 
		--print('VVA: handler Plus call for '..vehicleObj.vehicleId)
		for i, template in pairs(templates) do
			vehicleObj.plus[template] = 1
		end
	end
	local function minusTemplates(vehicleObj, templates) 
		--print('VVA: handler Minus call for '..vehicleObj.vehicleId)
		for i, template in pairs(templates) do
			vehicleObj.minus[template] = 1
		end
	end
	local function setModel(vehicleObj, model)
		--print('VVA: handler Model call for '..vehicleObj.vehicleId)
		vehicleObj.model = model
	end
	local function inherit(vehicleObj, parent) 
		--print('VVA: handler Parent call for '..vehicleObj.vehicleId)
		vehicleObj.parent = parent
	end

	VVAmodule.TeplateHandler = function (vehicleId, module) 
		local mod = module or "Base"
		local fullId = mod .. "." .. vehicleId
		local v = vehicles[fullId]
		if not v then
			v = {vehicleId = vehicleId, plus = {}, minus = {}}
			local h = {}
			h.plus = function(templates)
				plusTemplates(v,templates)
				return v.handler
			end
			h.minus = function(templates)
				minusTemplates(v,templates)
				return v.handler
			end
			h.setModel = function(model)
				setModel(v,model)
				return v.handler
			end
			h.setParent = function(parent, pmodule)
				pmodule = pmodule or mod
				inherit(v,pmodule .. "." .. parent)
				return v.handler
			end
			v.handler = h		
			vehicles[fullId] = v
		end
		return v.handler
	end


	VVAmodule.ApplyTemplateToVehicle = function(VehicleId,model,templates,module)
		local handler = VVAmodule.TeplateHandler(VehicleId,module)
		if model then
			handler.setModel(model)
		end
		if templates then
			handler.plus(templates)
		end
		return handler
	end

	--[[VVAmodule.CopyTemplateToVehicle = function(VehicleId,sourceId,templates,module,sourcemodule)
		local smod = sourcemodule or "Base"
		local handler = VVAmodule.TeplateHandler(VehicleId,module)
		handler.setParent(smod.."."..sourceId)
		if templates then
			handler.plus(templates)
		end
		return handler
	end
	]]
	VVAmodule.CopyTemplateToVehicle = function(VehicleId,sourceId,templates,model,module,sourcemodule)
		local handler = VVAmodule.TeplateHandler(VehicleId,module)
		handler.setParent(sourceId, sourcemodule)
		if model then
			handler.setModel(model)
		end
		if templates then
			handler.plus(templates)
		end
		return handler
	end
	VVAmodule.InheritTemplateToVehicle = function(VehicleId,sourceId,model,module,sourcemodule)
		VVAmodule.CopyTemplateToVehicle(VehicleId,sourceId,false,model,module,sourcemodule)
	end

	local function combined(A , B)
		if A or B then
			local result = {}
			if A then
				for template, l in pairs(A) do
					result[template] = 1
				end
			end
			if B then
				for template, l in pairs(B) do
					result[template] = 1
				end
			end
			return result
		else
			return nil
		end
	end

	local Applicator = {}
	Applicator.Leaf = function (vehicleScript, vehicleid, template, applied)
		vehicleScript:Load(vehicleid, "{ template! = " .. template .. ",}")
		applied[template] = 1
	end

	Applicator.Template = function (vehicleScript, vehicleid, template, unwrap, applied, minus)
		if (minus and minus[template]) or (applied and applied[template]) then
			return 
		end
		if unwrap and unwrap[template] then
			Applicator.Leaf(vehicleScript, vehicleid, template, applied)
		else
			local p = profiles[template]
			if not p then
				Applicator.Leaf(vehicleScript, vehicleid, template, applied)
			else
				Applicator.TemplateBatch(vehicleScript, vehicleid, p.plus, combined(unwrap,{template = 1}), applied, combined(minus,p.minus))
			end
		end
	end	
	Applicator.TemplateBatch = function (vehicleScript, vehicleid, templates, unwrap, applied, minus)
		for template, l in pairs(templates) do
			Applicator.Template(vehicleScript, vehicleid, template, unwrap, applied, minus)
		end
	end

	local function ApplyVehicleChanges(vehicleScript, vehicleid, vehicleData, modelset, unwrap, applied, minus)
		if not vehicleData then return end
		if not applied then applied = {} end
		if not modelset and vehicleData.model then
			vehicleScript:Load(vehicleid, "{ model { file = " .. vehicleData.model .. ",}}")
			modelset = true
		end
		if vehicleData.parent then
			ApplyVehicleChanges(vehicleScript, vehicleid, vehicles[vehicleData.parent], modelset, unwrap, applied, combined(minus,vehicleData.minus))	
		end
		if vehicleData.plus then
			Applicator.TemplateBatch(vehicleScript, vehicleid, vehicleData.plus, unwrap, applied, minus)
		end
	end

	local function tabLen(table)
		if not table then return 0 end
		local i = 0	
		for a,b in pairs(table) do
			if b then
				i=i+1
			end
		end
		return i	
	end

	local function ApplyAnimationProfiles()	
		for vehicleId, data in pairs(vehicles) do
			local vehicleScript = ScriptManager.instance:getVehicle(vehicleId)
			if vehicleScript then
				ApplyVehicleChanges(vehicleScript, data.vehicleId, data, false)			
			else
				print("VVA: WARNING: Attempted to modify vehicle "..vehicleId.." failed. Script does not exist.")
			end
		end
	end

	Events.OnInitGlobalModData.Add(ApplyAnimationProfiles)
end
return VVAmodule