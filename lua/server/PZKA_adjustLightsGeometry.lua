local FillPartsMap = {}

local outModule = {}
outModule.RegisterSkin = function (vehicleID, modelName, skinIndex) 
    local veh = FillPartsMap[vehicleID]
    if not veh then
        veh = {}
    end
    local mod = veh[modelName]    
    mod = (mod or "a")..skinIndex.."a"
    veh[modelName] = mod
    FillPartsMap[vehicleID] = veh
end
outModule.GetModelName = function (VehicleId, skinId)
    local fillData = FillPartsMap[VehicleId]    
    if fillData and skinId then
        local searchID = "a"..(skinId or "NONE") .. "a"
        for modelName, match in pairs(fillData) do
            if string.find(match, searchID) then
                return modelName
            end
        end
    end
    return false
end

function AddFillMapRecord(vehicleId, map)
    FillPartsMap[vehicleId] = map
end
function CopyFillMapRecord(vehicleId, fromId)
    FillPartsMap[vehicleId] = FillPartsMap[fromId]
end



FillPartsMap["Base.pzkChevalierLaserMall"] = FillPartsMap["Base.pzkChevalierLaserLSU"]



FillPartsMap["Base.pzkPickUpTruck93"]  = {
    ["Intruder_1"] = "a0a1a2a3a4a",
    ["Intruder_6"] = "a5a6a7a8a9a",
    ["Intruder_11"] = "a10a11a12a",
}
FillPartsMap["Base.pzkDashIntruder150short"] = FillPartsMap["Base.pzkPickUpTruck93"]

FillPartsMap["Base.pzkDash150Utility"]  = {
    ["Intruder_1"] = "a0a1a",
    ["Intruder_6"] = "a2a3a",
    ["Intruder_11"] = "a4a5a",
}
FillPartsMap["Base.pzkDash150BoxFlatbed"] = FillPartsMap["Base.pzkDash150Utility"]

FillPartsMap["Base.pzkDash150UtilityAirport"]  = {
    ["Intruder_1"] = "a0a",
    ["Intruder_6"] = "a1a",
    ["Intruder_11"] = "a2a",
}
FillPartsMap["Base.pzkDash150UtilityMoore"] = FillPartsMap["Base.pzkDash150UtilityAirport"]
FillPartsMap["Base.pzkDash150UtilityNewCoalfieldMechanic"] = FillPartsMap["Base.pzkDash150UtilityAirport"]
FillPartsMap["Base.pzkDash150UtilityIrvingtonSpeedway"] = FillPartsMap["Base.pzkDash150UtilityAirport"]
FillPartsMap["Base.pzkDash150UtilityRanger"] = FillPartsMap["Base.pzkDash150UtilityAirport"]
FillPartsMap["Base.pzkDash150UtilityPublicWorks"] = FillPartsMap["Base.pzkDash150UtilityAirport"]
FillPartsMap["Base.pzkDash150UtilityFire"] = FillPartsMap["Base.pzkDash150UtilityAirport"]
FillPartsMap["Base.pzkDash150UtilityLVPD"] = FillPartsMap["Base.pzkDash150UtilityAirport"]
FillPartsMap["Base.pzkDash150UtilityMuldPD"] = FillPartsMap["Base.pzkDash150UtilityAirport"]
FillPartsMap["Base.pzkDash150UtilityKSTPD"] = FillPartsMap["Base.pzkDash150UtilityAirport"]
FillPartsMap["Base.pzkDash150UtilityBulletinPD"] = FillPartsMap["Base.pzkDash150UtilityAirport"]
FillPartsMap["Base.pzkDash150BoxFlatbedPublicWorks"] = FillPartsMap["Base.pzkDash150UtilityAirport"]


FillPartsMap["Base.pzkDashIntruder250PickupLong"]  = FillPartsMap["Base.pzkPickUpTruck93"]
FillPartsMap["Base.pzkDashIntruder150RegVan"]  = FillPartsMap["Base.pzkPickUpTruck93"]
FillPartsMap["Base.pzkDashIntruder250WagonLong"]  = FillPartsMap["Base.pzkPickUpTruck93"]

FillPartsMap["Base.pzkF150Utility"]  = {
    ["F350_15"] = "a0a1a2a3a",
    ["F350_68"] = "a4a5a",
}
FillPartsMap["Base.pzkF150BoxFlatbed"] = FillPartsMap["Base.pzkF150Utility"]








FillPartsMap["Base.pzkF150UtilityAirport"]  = {
    ["F350_15"] = "a0a1a",
    ["F350_68"] = "a2a",
}
FillPartsMap["Base.pzkF150UtilityMoore"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkF150UtilityNewCoalfieldMechanic"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkF150UtilityIrvingtonSpeedway"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkF150UtilityRanger"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkF150UtilityPublicWorks"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkF150UtilityFire"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkF150UtilityLVPD"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkF150UtilityMuldPD"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkF150UtilityKSTPD"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkF150UtilityBulletinPD"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkF150BoxFlatbedPublicWorks"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkFranklinGalloperFire"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkFranklinGalloperPoliceKST"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkFranklinGalloperPoliceLouisvilleCounty"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkFranklinGalloperPoliceMuldraughPolice"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkFranklinGalloperPoliceBulletinSheriff"] = FillPartsMap["Base.pzkF150UtilityAirport"]
FillPartsMap["Base.pzkFranklinGalloperRanger"] = FillPartsMap["Base.pzkF150UtilityAirport"]

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
FillPartsMap["Base.pzkFranklinGalloper"] = FillPartsMap["Base.pzkFranklin350FPickupCrewLong"]

FillPartsMap["Base.pzkFranklinGalloperLSU"] = {
    ["F350_15"] = "a0a",
    ["F350_68"] = "a",
}
FillPartsMap["Base.pzkFranklinGalloperMall"] = FillPartsMap["Base.pzkFranklinGalloperLSU"] 


FillPartsMap["Base.pzkChevalierPickupCrewLong"] = {
    ["Province_12"] = "a0a1a",
    ["Province_34"] = "a2a3a",
    ["Province_56"] = "a4a5a",
    ["Province_78"] = "a6a7a",
}
FillPartsMap["Base.pzkChevalier150Utility"] = FillPartsMap["Base.pzkChevalierPickupCrewLong"]
FillPartsMap["Base.pzkChevalier150BoxFlatbed"] = FillPartsMap["Base.pzkChevalierPickupCrewLong"]
FillPartsMap["Base.pzkChevalier150Utility"] = FillPartsMap["Base.pzkChevalierPickupCrewLong"]
FillPartsMap["Base.pzkChevalierLaserModern"] = FillPartsMap["Base.pzkChevalierPickupCrewLong"]
FillPartsMap["Base.pzkChevalierPickupCrewMedium"] = FillPartsMap["Base.pzkChevalierPickupCrewLong"]
FillPartsMap["Base.pzkChevalierProvince"] = FillPartsMap["Base.pzkChevalierPickupCrewLong"]
FillPartsMap["Base.pzkChevalierProvinceLong"] = FillPartsMap["Base.pzkChevalierPickupCrewLong"]

FillPartsMap["Base.pzkChevalierLaserLSU"] = {
    ["Province_12"] = "a",
    ["Province_34"] = "a",
    ["Province_56"] = "a",
    ["Province_78"] = "a0a",
}

FillPartsMap["Base.pzkChevalierLaserOffroader"] = {
    ["Province_12"] = "a0a1a",
    ["Province_34"] = "a",
    ["Province_56"] = "a",
    ["Province_78"] = "a2a3a",
}

FillPartsMap["Base.pzkChevalier150UtilityAirport"] = {
    ["Province_12"] = "a0a",
    ["Province_34"] = "a1a",
    ["Province_56"] = "a2a",
    ["Province_78"] = "a3a",
}
FillPartsMap["Base.pzkChevalier150UtilityMoore"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalier150UtilityNewCoalfieldMechanic"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalier150UtilityIrvingtonSpeedway"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalier150UtilityRanger"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalier150UtilityPublicWorks"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalier150UtilityFire"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalier150UtilityLVPD"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalier150UtilityMuldPD"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalier150UtilityKSTPD"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalier150UtilityBulletinPD"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalier150BoxFlatbedPublicWorks"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalierLaserFire"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalierLaserPoliceBulletinSheriff"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalierLaserPoliceKST"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalierLaserPoliceLouisvilleCounty"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalierLaserPoliceMuldraughPolice"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]
FillPartsMap["Base.pzkChevalierLaserRanger"] = FillPartsMap["Base.pzkChevalier150UtilityAirport"]



FillPartsMap["Base.pzkChevalierE6"] = {
    ["Province_12"] = "a",
    ["Province_34"] = "a0a1a",
    ["Province_56"] = "a2a3a",
    ["Province_78"] = "a4a5a",
}
FillPartsMap["Base.pzkChevalierE6Van"] = FillPartsMap["Base.pzkChevalierE6"]

FillPartsMap["Base.pzkChevalierF6"] = {
    ["Province_12"] = "a0a1a",
    ["Province_34"] = "a",
    ["Province_56"] = "a",
    ["Province_78"] = "a",
}
FillPartsMap["Base.pzkChevalierF6Van"] = FillPartsMap["Base.pzkChevalierF6"]
FillPartsMap["Base.pzkChevalierProvinceLongCUCV"] = {
    ["Province_12"] = "a",
    ["Province_34"] = "a0a",
    ["Province_56"] = "a",
    ["Province_78"] = "a",
}
FillPartsMap["Base.pzkChevalierLaserCUCV"] = FillPartsMap["Base.pzkChevalierProvinceLongCUCV"]



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
FillPartsMap["Base.pzkDashPhoenix80"] = {
    ["Default"] = "a0a2a4a",
    ["Sport"] = "a1a3a5a",
}

FillPartsMap["Base.pzkPickupFranklin"] = {
    ["Raider1"] = "a0a",
    ["Raider2"] = "a1a",
}

FillPartsMap["Base.pzkFranklinStallion2"] = {
    ["L1"] = "a0a",
    ["L2"] = "a1a",
    ["Default"] = "a0a1a",
}
FillPartsMap["Base.pzkFranklinStallionSport"] = FillPartsMap["Base.pzkFranklinStallion2"]
FillPartsMap["Base.pzkFranklinStallionPoliceLouisvillePD"] = {
    ["L1"] = "a",
    ["L2"] = "a0a",
    ["Default"] = "a0a",
}
FillPartsMap["Base.pzkFranklinStallionPoliceMeadeSheriff"] = FillPartsMap["Base.pzkFranklinStallionPoliceLouisvillePD"]
FillPartsMap["Base.pzkFranklinStallionPoliceWestPoint"] = FillPartsMap["Base.pzkFranklinStallionPoliceLouisvillePD"]

FillPartsMap["Base.pzkMinivanConvoy"] = {
    ["Convoy12"] = "a0a1a",
    ["Convoy3"] = "a2a",
}

FillPartsMap["Base.pzkMinivanT3"] = {
    ["T3_1"] = "a0a",
    ["T3_2"] = "a1a",
}
FillPartsMap["Base.pzkMinivanT3C"] = FillPartsMap["Base.pzkMinivanT3"] 

FillPartsMap["Base.pzkCVanCargo"] = {
    ["CVan1"] = "a0a",
    ["CVan2"] = "a1a",
    ["CVan3"] = "a",
}
FillPartsMap["Base.pzkCVan"] = FillPartsMap["Base.pzkCVanCargo"] 
FillPartsMap["Base.pzkCVanMultivan"] = FillPartsMap["Base.pzkCVanCargo"] 
FillPartsMap["Base.pzkCVan6Seats"] = FillPartsMap["Base.pzkCVanCargo"] 

FillPartsMap["Base.pzkFVanCargo"] = {
    ["FVan1"] = "a0a3a6a",
    ["FVan2"] = "a1a4a7a",
    ["FVan3"] = "a2a5a8a",
}
FillPartsMap["Base.pzkFVan"] = FillPartsMap["Base.pzkFVanCargo"] 
FillPartsMap["Base.pzkFVanSpiffo"] = FillPartsMap["Base.pzkFVanCargo"] 
FillPartsMap["Base.pzkFVanMultivan"] = FillPartsMap["Base.pzkFVanCargo"] 
FillPartsMap["Base.pzkFVan6Seats"] = FillPartsMap["Base.pzkFVanCargo"] 



function Vehicles.Init.AdjustLightGeometry(vehicle, part)
    local fillData = FillPartsMap[vehicle:getScriptName()]
    if fillData then
        if part and part:getInventoryItem() then
            local skinId = "a"..(vehicle:getSkinIndex() or 'NULL' ).."a"    
            local fallback = nil
            local useFallback = true
            --print("PZKA: Skin index :\is "..skinId.." .. "..vehicle:getScriptName())
            for modelName, match in pairs(fillData) do
                --print("PZKA checking model name "..modelName.. "|" .. match .. " : "..(string.find(match, skinId) or 'FALSE'))
                if not fallback or string.find(match, "ada") then
                    fallback = modelName
                end
                if string.find(match, skinId) then
                    part:setModelVisible(modelName, true)
                    useFallback = false
                else
                    part:setModelVisible(modelName, false)
                end
            end
            --print("PZKA: fallback needed : "..(useFallback and "TRUE" or "FALSE").." .. "..(fallback or "NONE").." .. "..vehicle:getScriptName())
            if useFallback and fallback then
                part:setModelVisible(fallback, true)
            end
        else 
            for modelName, match in pairs(fillData) do
                part:setModelVisible(modelName, false)
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

return outModule