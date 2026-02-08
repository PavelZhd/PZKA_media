local VVAmodule = require "VVA_core"

if (not VVAmodule) or (not VVAmodule.version) or VVAmodule.version < 2 then
	VVAmodule = {}
	local vehicles = {}
	local profiles = {}
	VVAmodule.version = 2
	VVAmodule.IsProfileDefined = function(profileName)
		return not not profiles[profileName]
	end
	VVAmodule.IsVehicleDefinedFullId = function(fullId)
		return not not vehicles[fullId]
	end
	VVAmodule.IsVehicleDefined = function(vehicleId, module)
		local mod = module or "Base"
		local fullId = mod .. "." .. vehicleId
		return VVAmodule.IsVehicleDefinedFullId(fullId)
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
		--print('PZKA: handler Plus call for '..vehicleObj.vehicleId)
		for i, template in pairs(templates) do
			if (template) then
				vehicleObj.plus[template] = 1
			end
		end
	end
	local function minusTemplates(vehicleObj, templates) 
		--print('PZKA: handler Minus call for '..vehicleObj.vehicleId)
		for i, template in pairs(templates) do
			if (template) then
				vehicleObj.minus[template] = 1
			end
		end
	end
	local function setModel(vehicleObj, model)
		--print('PZKA: handler Model call for '..vehicleObj.vehicleId)
		vehicleObj.model = model
	end
	local function inherit(vehicleObj, parent) 
		--print('PZKA: handler Parent call for '..vehicleObj.vehicleId)
		vehicleObj.parent = parent
	end

	VVAmodule.TeplateHandler = function (vehicleId, module, erase) 
		local mod = module or "Base"
		local fullId = mod .. "." .. vehicleId
		local v = vehicles[fullId]
		if erase or not v then
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
			print('PZKA: Generated handler for '..fullId)
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
		local handler = VVAmodule.TeplateHandler(VehicleId,module, true)
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
			print('PZKA: template name '..template..'marked as Unwraped. Repeat mention interpreted as leaf')
			Applicator.Leaf(vehicleScript, vehicleid, template, applied)
		else
			local p = profiles[template]
			if not p then
				print('PZKA: template name not located as composite. Applying as leaf '..template)
				Applicator.Leaf(vehicleScript, vehicleid, template, applied)
			else
				--print('PZKA: applying templates from composite teplate '..template)
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
		print('PZKA: Modifying vehicle: '..vehicleid..' based on vehicle profile '..vehicleData.vehicleId.." -- "..(modelset and "SET" or "UNSET"))
		print('PZKA: Modifying vehicle: '..vehicleid..' model '..(vehicleData.model or "NOMODEL"))
		if not modelset and vehicleData.model then
			print('PZKA: Setting vehicle model: '..vehicleid..'->'..vehicleData.model)
			vehicleScript:Load(vehicleid, "{ model { file = " .. vehicleData.model .. ",}}")
			modelset = true
		end
		print('PZKA: Modifying vehicle: '..vehicleid..' parent '..(vehicleData.parent or "UNPARENTED"))
		if vehicleData.parent then
			print('PZKA: Modifying vehicle: '..vehicleid..' applying parent '..(vehicleData.parent or "UNPARENTED"))
			ApplyVehicleChanges(vehicleScript, vehicleid, vehicles[vehicleData.parent], modelset, unwrap, applied, combined(minus,vehicleData.minus))	
		end
		if vehicleData.plus then
			print('PZKA: applying templates from vehicle profile '..vehicleData.vehicleId)
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
				print("PZKA: WARNING: Attempted to modify vehicle "..vehicleId.." failed. Script does not exist.")
			end
		end
	end

	Events.OnInitGlobalModData.Add(ApplyAnimationProfiles)
end

return VVAmodule