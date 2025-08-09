local V = require "Vehicles"

function Vehicles.Create.Door25(vehicle, part)
    local roll = ZombRand(100)
    print("PZKAN: Door spawn roll" .. roll)
    if roll <= 25 then
        Vehicles.Create.Door(vehicle, part)
    end
end