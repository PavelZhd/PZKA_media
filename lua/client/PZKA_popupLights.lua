local Cached_ISVehicleMenu_onToggleHeadlights = ISVehicleMenu.onToggleHeadlights
function ISVehicleMenu.onToggleHeadlights(playerObj)
    Cached_ISVehicleMenu_onToggleHeadlights(playerObj)
	local vehicle = playerObj:getVehicle()
	if not vehicle then return end
	print("PZKA: (C) LightsOn local handler")
    local part = vehicle:getPartById("PZKA_LightsHost")
    if not part then return end
	if vehicle:getHeadlightsOn() then
        vehicle:playPartAnim(part, "Close")
        part:getDoor():setOpen(false)
    	vehicle:transmitPartDoor(part)
    else
        vehicle:playPartAnim(part, "Open")
        part:getDoor():setOpen(true)
    	vehicle:transmitPartDoor(part)    end
end