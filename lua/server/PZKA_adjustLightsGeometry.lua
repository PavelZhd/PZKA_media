local FillPartsMap = {}

function AddFillMapRecord(vehicleId, map)
    FillPartsMap[vehicleId] = map
end
function CopyFillMapRecord(vehicleId, fromId)
    FillPartsMap[vehicleId] = FillPartsMap[fromId]
end

FillPartsMap["Base.pzkFranklinGalloper"] = {
    ["Filla0a1a2a3a4a"] = "a0a1a2a3a4a",
    ["Filla5a6a7a"] = "a5a6a7a",
}
FillPartsMap["Base.pzkChevalierLaserModern"] = {
    ["Filla0a1a"] = "a0a1a",
    ["Filla2a3a"] = "a2a3a",
    ["Filla4a5a"] = "a4a5a",
    ["Filla6a7a"] = "a6a7a",
}
FillPartsMap["Base.pzkChevalierLaserFire"] = {
    ["Filla0a1a"] = "a0a",
    ["Filla2a3a"] = "a1a",
    ["Filla4a5a"] = "a2a",
    ["Filla6a7a"] = "a3a",
}
FillPartsMap["Base.pzkChevalierLaserPoliceBulletinSheriff"] = FillPartsMap["Base.pzkChevalierLaserFire"]
FillPartsMap["Base.pzkChevalierLaserPoliceKST"] = FillPartsMap["Base.pzkChevalierLaserFire"]
FillPartsMap["Base.pzkChevalierLaserPoliceLouisvilleCounty"] = FillPartsMap["Base.pzkChevalierLaserFire"]
FillPartsMap["Base.pzkChevalierLaserPoliceMuldraughPolice"] = FillPartsMap["Base.pzkChevalierLaserFire"]
FillPartsMap["Base.pzkChevalierLaserRanger"] = FillPartsMap["Base.pzkChevalierLaserFire"]

FillPartsMap["Base.pzkChevalierLaserLSU"] = {
    ["Filla0a1a"] = "aa",
    ["Filla2a3a"] = "aa",
    ["Filla4a5a"] = "aa",
    ["Filla6a7a"] = "a0a",
}

FillPartsMap["Base.pzkChevalierLaserMall"] = FillPartsMap["Base.pzkChevalierLaserLSU"]

FillPartsMap["Base.pzkChevalierLaserCUCV"] = {
    ["Filla0a1a"] = "aa",
    ["Filla2a3a"] = "a0a",
    ["Filla4a5a"] = "aa",
    ["Filla6a7a"] = "aa",
}

FillPartsMap["Base.pzkChevalierLaserOffroader"] = {
    ["Filla0a1a"] = "a0a1a",
    ["Filla2a3a"] = "aa",
    ["Filla4a5a"] = "aa",
    ["Filla6a7a"] = "a2a3a",
}

FillPartsMap["Base.pzkFranklinGalloper"] = {
    ["Fill12345"] = "a0a1a2a3a4a",
    ["Fill678"] = "a5a6a7a",
}
FillPartsMap["Base.pzkFranklinGalloperFire"] = {
    ["Fill12345"] = "a0a1a",
    ["Fill678"] = "a2a",
}
FillPartsMap["Base.pzkFranklinGalloperPoliceKST"] = FillPartsMap["Base.pzkFranklinGalloperFire"]
FillPartsMap["Base.pzkFranklinGalloperPoliceLouisvilleCounty"] = FillPartsMap["Base.pzkFranklinGalloperFire"]
FillPartsMap["Base.pzkFranklinGalloperPoliceMuldraughPolice"] = FillPartsMap["Base.pzkFranklinGalloperFire"]
FillPartsMap["Base.pzkFranklinGalloperPoliceBulletinSheriff"] = FillPartsMap["Base.pzkFranklinGalloperFire"]
FillPartsMap["Base.pzkFranklinGalloperRanger"] = FillPartsMap["Base.pzkFranklinGalloperFire"]

FillPartsMap["Base.pzkFranklinGalloperLSU"] = {
    ["Fill12345"] = "a0a",
    ["Fill678"] = "aa",
}
FillPartsMap["Base.pzkFranklinGalloperMall"] = FillPartsMap["Base.pzkFranklinGalloperLSU"] 

FillPartsMap["Base.pzkDashIntruder150short"] = {
    ["Fill1"] = "a0a1a2a3a4a",
    ["Fill2"] = "a5a6a7a8a9a",
    ["Fill3"] = "a10a11a12a",
}
FillPartsMap["Base.pzkPickUpTruck93"]  = {
    ["Intruder_1"] = "a0a1a2a3a4a",
    ["Intruder_6"] = "a5a6a7a8a9a",
    ["Intruder_11"] = "a10a11a12a",
}
FillPartsMap["Base.pzkDashIntruder250PickupLong"]  = FillPartsMap["Base.pzkPickUpTruck93"]
FillPartsMap["Base.pzkDashIntruder150RegVan"]  = FillPartsMap["Base.pzkPickUpTruck93"]
FillPartsMap["Base.pzkDashIntruder250WagonLong"]  = FillPartsMap["Base.pzkPickUpTruck93"]

FillPartsMap["Base.pzkFranklin350FPickupCrewLong"] = {
    ["F350_15"] = "a0a1a2a3a4a",
    ["F350_68"] = "a5a6a7a",
}
FillPartsMap["Base.pzkFranklin150FPickupReg"] = FillPartsMap["Base.pzkFranklin350FPickupCrewLong"]
FillPartsMap["Base.pzkFranklin250FPickupCrewLong"] = FillPartsMap["Base.pzkFranklin350FPickupCrewLong"]
FillPartsMap["Base.pzkFranklin150FPickupMedium"] = FillPartsMap["Base.pzkFranklin350FPickupCrewLong"]
FillPartsMap["Base.pzkFranklin150van"] = FillPartsMap["Base.pzkFranklin350FPickupCrewLong"]
FillPartsMap["Base.pzkFranklin350FWagonLong"] = FillPartsMap["Base.pzkFranklin350FPickupCrewLong"]
FillPartsMap["Base.pzkFranklin250FPickupWagonLong"] = FillPartsMap["Base.pzkFranklin350FPickupCrewLong"]
FillPartsMap["Base.pzkFranklin150FWagonMedium"] = FillPartsMap["Base.pzkFranklin350FPickupCrewLong"]
FillPartsMap["Base.pzkFranklin250FWagonLong"] = FillPartsMap["Base.pzkFranklin350FPickupCrewLong"]

FillPartsMap["Base.pzkChevalierPickupCrewLong"] = {
    ["Province_12"] = "a0a1a",
    ["Province_34"] = "a2a3a",
    ["Province_56"] = "a4a5a",
    ["Province_78"] = "a6a7a",
}
FillPartsMap["Base.pzkChevalierE6"] = {
    ["Province_12"] = "aa",
    ["Province_34"] = "a0a1a",
    ["Province_56"] = "a2a3a",
    ["Province_78"] = "a4a5a",
}
FillPartsMap["Base.pzkChevalierE6Van"] = FillPartsMap["Base.pzkChevalierE6"]

FillPartsMap["Base.pzkChevalierF6"] = {
    ["Province_12"] = "a0a1a",
    ["Province_34"] = "aa",
    ["Province_56"] = "aa",
    ["Province_78"] = "aa",
}
FillPartsMap["Base.pzkChevalierProvinceLongCUCV"] = {
    ["Province_12"] = "aa",
    ["Province_34"] = "a0a",
    ["Province_56"] = "aa",
    ["Province_78"] = "aa",
}
FillPartsMap["Base.pzkChevalierF6Van"] = FillPartsMap["Base.pzkChevalierF6"]

FillPartsMap["Base.pzkChevalierPickupCrewMedium"] = FillPartsMap["Base.pzkChevalierPickupCrewLong"]
FillPartsMap["Base.pzkChevalierProvince"] = FillPartsMap["Base.pzkChevalierPickupCrewLong"]
FillPartsMap["Base.pzkChevalierProvinceLong"] = FillPartsMap["Base.pzkChevalierPickupCrewLong"]

FillPartsMap["Base.pzkFtypeTowTruck"] = {
    ["Province_12"] = "a0a",
    ["Province_34"] = "a1a",
    ["Province_56"] = "a2a",
    ["Province_78"] = "a3a",
    ["Province"] = "a0a1a2a3a",
    ["F350_15"] = "a4a5a",
    ["F350_68"] = "a6a",
    ["F350"] = "a4a5a6a",
}
FillPartsMap["Base.pzkChevalierMaroca80"] = {
    ["Default"] = "a0a1a",
    ["Sport"] = "a2a3a",
}

FillPartsMap["Base.pzkPickupFranklin"] = {
    ["Raider1"] = "a0a",
    ["Raider2"] = "a1a",
}


function Vehicles.Init.AdjustLightGeometry(vehicle, part)
    local fillData = FillPartsMap[vehicle:getScriptName()]    
    if fillData then
        if part and part:getInventoryItem() then
            local skinId = "a"..(vehicle:getSkinIndex() or 'NULL' ).."a"    
            --print("PZKA: Skin index :\is "..skinId.." .. "..vehicle:getScriptName())
            for modelName, match in pairs(fillData) do
                --print("PZKA checking model name "..modelName.. "|" .. match .. " : "..(string.find(match, skinId) or 'FALSE'))
                part:setModelVisible(modelName, not not string.find(match, skinId))
            end
        else 
            for modelName, match in pairs(fillData) do
                --part:setModelVisible(modelName, false)
            end
        end
    end    
end

function Vehicles.Init.AdjustLightGeometryHeadlight(vehicle, part)
    Vehicles.Init.Headlight(vehicle, part)
    Vehicles.Init.AdjustLightGeometry(vehicle, part)    
end

function Vehicles.Init.AdjustLightGeometryWindow(vehicle, part)
    Vehicles.Init.Window(vehicle, part)
    Vehicles.Init.AdjustLightGeometry(vehicle, part)    
end

function Vehicles.Init.AdjustLightGeometryDoor(vehicle, part)
    Vehicles.Init.Door(vehicle, part)
    Vehicles.Init.AdjustLightGeometry(vehicle, part)    
end