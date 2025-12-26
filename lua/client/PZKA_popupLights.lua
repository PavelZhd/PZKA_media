require "Vehicles/ISUI/ISVehicleMenu"
vvaLightsFunctionOverride = vvaLightsFunctionOverride or false
if not vvaLightsFunctionOverride or vvaLightsFunctionOverride < 1 then
	vvaLightsFunctionOverride = 1
	local Cached_ISVehicleMenu_onToggleHeadlights = ISVehicleMenu.onToggleHeadlights
	function ISVehicleMenu.onToggleHeadlights(playerObj)
		Cached_ISVehicleMenu_onToggleHeadlights(playerObj)
		local vehicle = playerObj:getVehicle()
		if not vehicle then return end
		print("PZKA: (C) LightsOn local handler")
		local part = vehicle:getPartById("LightsHost")
		if not part then return end
		if vehicle:getHeadlightsOn() then
			vehicle:playPartAnim(part, "Close")
			if part:getDoor() then
                part:getDoor():setOpen(false)
			    vehicle:transmitPartDoor(part)
            end
		else
			vehicle:playPartAnim(part, "Open")
			if part:getDoor() then
                part:getDoor():setOpen(true)
			    vehicle:transmitPartDoor(part)
            end
		end
	end
end