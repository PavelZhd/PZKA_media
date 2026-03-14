require "ISVehicleMenu"

local oldOnToggleTrunkLocked = ISVehicleMenu.onToggleTrunkLocked

function ISVehicleMenu.onToggleTrunkLocked(playerObj)
	local vehicle = playerObj:getVehicle();
	if not vehicle then return end
	local trunkDoor = vehicle:getPartById("TrunkDoor") or vehicle:getPartById("DoorRear") or vehicle:getPartById("TrunkDoorOpened")
	if not trunkDoor or not trunkDoor:getDoor() then return end
	local frontTrunk = vehicle:getPartById("TrunkDoorFront")
    if not frontTrunk or not frontTrunk:getDoor() then return end
    if trunkDoor:getDoor():isLocked() then
        if frontTrunk:getDoor():isLocked() then
            ISTimedActionQueue.add(ISUnlockVehicleDoor:new(playerObj, frontTrunk))
        end
	else
        if not frontTrunk:getDoor():isLocked() then
            ISTimedActionQueue.add(ISLockVehicleDoor:new(playerObj, frontTrunk))
        end
	end
    oldOnToggleTrunkLocked(playerObj)    
end