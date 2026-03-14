require "Vehicles"

function Vehicles.ContainerAccess.FronTrunck(vehicle, part, chr)
	if chr:getVehicle() then return false end
	if not vehicle:isInArea(part:getArea(), chr) then return false end
	local trunkDoor = vehicle:getPartById("TrunkDoorFront")
	if trunkDoor and trunkDoor:getDoor() then
    	if not trunkDoor:getInventoryItem() then return true end
    	if trunkDoor:getDoor():isOpen() then return true end
	end
--	if part:getInventoryItem() and not chr:getInventory():haveThisKeyId(vehicle:getKeyId()) then return false end
	return false
end


