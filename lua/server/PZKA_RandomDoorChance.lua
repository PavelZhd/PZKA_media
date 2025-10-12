local V = require "Vehicles"
local DoorChance
function Vehicles.Create.Door25(vehicle, part)
    DoorChance(vehicle, part, 25)
end
function Vehicles.Create.Door75(vehicle, part)
    DoorChance(vehicle, part, 75)
end

DoorChance = function(vehicle, part, chance)
    local doorFrontLeft = vehicle:getPartById("DoorFrontLeft");
	if doorFrontLeft and doorFrontLeft ~= part then
        if doorFrontLeft:getInventoryItem() then
            Vehicles.Create.Door(vehicle, part)
        end
    else
        local roll = ZombRand(100)
        print("PZKAN: Door spawn roll" .. roll)
        if roll <= chance then
            Vehicles.Create.Door(vehicle, part)
        end
    end
end

return DoorChance