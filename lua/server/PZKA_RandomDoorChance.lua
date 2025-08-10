local V = require "Vehicles"

function Vehicles.Create.Door25(vehicle, part)
    local doorFrontLeft = vehicle:getPartById("DoorFrontLeft");
	if doorFrontLeft and doorFrontLeft ~= part then
        if doorFrontLeft:getInventoryItem() then
            Vehicles.Create.Door(vehicle, part)
        end
    else
        local roll = ZombRand(100)
        print("PZKAN: Door spawn roll" .. roll)
        if roll <= 25 then
            Vehicles.Create.Door(vehicle, part)
        end
    end
end

function Vehicles.Create.NOSPAWN(vehicle, part)
    print("PZKAN: No spawn call")
end