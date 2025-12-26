
--[[]
---Like DoParam but for vehicles
---@param vehicle string Name of the vehicle script
---@param param string The parameter(s) to apply to this script
---@param module string Optional: the module of the vehicle
---@see Item#DoParam
---@see VehicleScript#Load
local DoVehicleParam = function(vehicle, param, module)
	module = module or "Base"
	local vehicleScript = ScriptManager.instance:getVehicle(module .. "." .. vehicle)
	if not vehicleScript then return end
	vehicleScript:Load(vehicle, "{" .. param .. "}")
end


---Utility to change the armor of a vehicle
---@param vehicle string Name of the vehicle script
---@param armor string Name of a armor template
---@param doors string Name of a armor template
---@param trunk string Name of a armor template
---@param seat string Name of a armor template
---@param baseModel string Name of a model
---@see DoVehicleParam
local showSeatAnimation = not getActivatedMods():contains("VVA_cullseats")
local SetAnimationsAdvanced = function(vehicle, armor, doors, trunk, seat, baseModel, module) 
	module = module or "Base"
	DoVehicleParam(vehicle, "template! = " .. armor .. ",", module)
	DoVehicleParam(vehicle, "template! = " .. doors .. ",", module)
	DoVehicleParam(vehicle, "template! = " .. trunk .. ",", module)
	if showSeatAnimation then
		DoVehicleParam(vehicle, "template! = " .. seat .. ",", module)
	end
	if baseModel then
		DoVehicleParam(vehicle, "model { file = " .. baseModel .. ",}", module)
	end
end

local vehicleLayouts = {}

local SetAnimationsConfig = function (vehicle, baseModel, module)
	module = module or "Base"
	local info = vehicleLayouts[baseModel]
	if info then
		SetAnimationsAdvanced(vehicle, info.exterior, info.doors, info.rear, info.seats, baseModel, module)
	end
end

vehicleLayouts["PZKA_Vehicles_Sedan_a"] = {
	exterior = "PZKA_Sedan_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_SedanTaxi_a"] = vehicleLayouts["PZKA_Vehicles_Sedan_a"]
vehicleLayouts["PZKA_Vehicles_SedanLights_NoRandom_a"] = vehicleLayouts["PZKA_Vehicles_Sedan_a"]
vehicleLayouts["PZKA_Vehicles_SedanSlickLights_NoRandom_a"] = vehicleLayouts["PZKA_Vehicles_Sedan_a"]

vehicleLayouts["PZKA_Vehicles_DashRoyal_a"] = {
	exterior = "PZKA_DashRoyal_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Tornado_a"] = {
	exterior = "PZKA_Tornado_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_TwoSeats",
}

vehicleLayouts["PZKA_Vehicles_TruckBus_a"] = {
	exterior = "PZKA_TruckBus_animatedDoors",
	doors = "PZKA_FrontRightDoorOnly",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}

vehicleLayouts["PZKA_Vehicles_MuscleCabrio_a"] = {
	exterior = "PZKA_MuscleCabrio_animatedDoors",
	doors = "PZKA_TwoDoorWindowless",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_TwoSeats",
}

vehicleLayouts["PZKA_Vehicles_Muscle_a"] = {
	exterior = "PZKA_Muscle_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_TwoSeats",
}

vehicleLayouts["PZKA_Vehicles_Bayer_a"] = {
	exterior = "PZKA_Bayer4D_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_Bayer_2D_a"] = {
	exterior = "PZKA_Bayer2D_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_Bayer_Sport_a"] = {
	exterior = "PZKA_BayerSport_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_Bayer_Cabrio_a"] = {
	exterior = "PZKA_BayerCabrio_animatedDoors",
	doors = "PZKA_TwoDoorWindowless",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}

vehicleLayouts["PZKA_Vehicles_Laser_a"] = {
	exterior = "PZKA_Laser_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_LaserLights_NoRandom_a"] = vehicleLayouts["PZKA_Vehicles_Laser_a"]

vehicleLayouts["PZKA_Vehicles_Laser5D_a"] = {
	exterior = "PZKA_Laser5D_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}

vehicleLayouts["PZKA_Vehicle_StepVan_NoRandom_a"] = {
	exterior = "PZKA_StepVan_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicle_StepVan_SWAT_a"] = vehicleLayouts["PZKA_Vehicle_StepVan_NoRandom_a"]


vehicleLayouts["PZKA_Vehicle_StepVan_IceCream_a"] = {
	exterior = "PZKA_StepVan_Food_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicle_StepVan_HotDog_a"] = vehicleLayouts["PZKA_Vehicle_StepVan_IceCream_a"]
vehicleLayouts["PZKA_Vehicle_StepVan_Pizza_a"] = vehicleLayouts["PZKA_Vehicle_StepVan_IceCream_a"]
vehicleLayouts["PZKA_Vehicle_StepVan_Taco_a"] = vehicleLayouts["PZKA_Vehicle_StepVan_IceCream_a"]

vehicleLayouts["PZKA_Vehicles_CarNormal_a"] = {
	exterior = "PZKA_CarNormal_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_CarLights_NoRandom_a"] = {
	exterior = "PZKA_CarNormal_nr_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_CarTaxi_a"] = vehicleLayouts["PZKA_Vehicles_CarLights_NoRandom_a"]

vehicleLayouts["PZKA_Vehicles_CarSwagon_a"] = {
	exterior = "PZKA_CarSwagon_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_CarSwagonTaxi_a"] = {
	exterior = "PZKA_CarSwagon_nr_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_Limo_a"] = {
	exterior = "PZKA_Limo_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_Hearse_a"] = {
	exterior = "PZKA_Hearse_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_TrunkDoorVersion",
	seats = "PZKA_FourSeats",
}

vehicleLayouts["PZKA_Vehicles_Truck_Bed_a"] = {
	exterior = "PZKA_Truck_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "PZKA_OpenBedVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_FlatBed_a"] = vehicleLayouts["PZKA_Vehicles_Truck_Bed_a"]
vehicleLayouts["PZKA_Vehicles_Truck_Tanker2_a"] = vehicleLayouts["PZKA_Vehicles_Truck_Bed_a"]
vehicleLayouts["PZKA_Vehicles_Truck_Short_a"]  = {
	exterior = "PZKA_Truck_Short_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "PZKA_OpenBedVersion",
	seats = "PZKA_TwoSeats",
}

vehicleLayouts["PZKA_Vehicles_Truck_Semi_a"]  = {
	exterior = "PZKA_Truck_Semi_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "PZKA_OpenBedVersion",
	seats = "PZKA_TwoSeats",
}

vehicleLayouts["PZKA_Vehicles_Truck_Box_a"] = {
	exterior = "PZKA_Truck_Box_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_Cab_a"] = {
	exterior = "PZKA_Truck_Cab_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "PZKA_OpenBedVersion",
	seats = "PZKA_FourSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_Dump_a"] = {
	exterior = "PZKA_Truck_Dump_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_Mil_a"] = {
	exterior = "PZKA_Truck_Mil_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_Propane_a"]  = {
	exterior = "PZKA_Truck_Propane_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "PZKA_OpenBedVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_Garbage_a"] = {
	exterior = "PZKA_Truck_Garbage_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_Fire_a"] = {
	exterior = "PZKA_Truck_Fire_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_Tanker_nr_a"] = {
	exterior = "PZKA_Truck_Tanker_NR_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_Tanker_a"] = {
	exterior = "PZKA_Truck_Tanker_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_Tow_a"] = {
	exterior = "PZKA_Truck_Tow_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_Utility_a"] = {
	exterior = "PZKA_Truck_Utility_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Truck_RV_a"] = {
	exterior = "PZKA_Truck_RV_animatedDoors",
	doors = "PZKA_2FRRDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}

-- = {
--	exterior = "PZKA_Truck_Tanker_animatedDoors",
--	doors = "PZKA_TwoDoor",
--	rear = "PZKA_OpenBedVersion",
--	seats = "PZKA_TwoSeats",
--}


vehicleLayouts["PZKA_Vehicles_Van_Box_a"] = {
	exterior = "PZKA_Van_Box_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Van_BoxAmbulance_a"] = {
	exterior = "PZKA_Van_BoxAmbulance_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Van_Brig_a"] = {
	exterior = "PZKA_Van_Brig_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "PZKA_OpenBedVersion",
	seats = "PZKA_FourSeats",
}

vehicleLayouts["PZKA_Vehicles_Van_Camper_a"] = {
	exterior = "PZKA_Van_Camper_animatedDoors",
	doors = "PZKA_2FRRDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}

vehicleLayouts["PZKA_Vehicles_Van_Seats_a"] = {
	exterior = "PZKA_Van_Seats_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_SixSeats",
}
vehicleLayouts["PZKA_Vehicles_Van_Police_a"] = {
	exterior = "PZKA_Van_Seats_nr_animatedDoors",
	doors = "PZKA_FourDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_SixSeats",
}
vehicleLayouts["PZKA_Vehicles_Van_McCoy_a"] = {
	exterior = "PZKA_Van_McCoy_animatedDoors",
	doors = "PZKA_TwoDoor",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_TwoSeats",
}
vehicleLayouts["PZKA_Vehicles_Van_Taxi_a"] = {
	exterior = "PZKA_Van_Taxi_animatedDoors",
	doors = "PZKA_VanSeatsDoors",
	rear = "VVA_RearDoorVersion",
	seats = "PZKA_SixSeats",
}

-- not getActivatedMods():contains("VVSR_Continued") -- Example if soft lock is neede. Like if a mod breaks the models and you want to step back and not interfere to avoid mod conflict.
if true then
	
		SetAnimationsConfig("pzkChevalierCeriseSedan",				"PZKA_Vehicles_Sedan_a");
		SetAnimationsConfig("pzkChevalierCeriseSedanFire",			"PZKA_Vehicles_SedanLights_NoRandom_a");
		SetAnimationsConfig("pzkChevalierCeriseSedanPolice",		"PZKA_Vehicles_SedanLights_NoRandom_a");
		SetAnimationsConfig("pzkChevalierCeriseSedanTaxi",			"PZKA_Vehicles_SedanTaxi_a");
		SetAnimationsConfig("pzkChevalierCeriseSedanPoliceSlicktop","PZKA_Vehicles_SedanSlickLights_NoRandom_a");

		SetAnimationsConfig("Vehicles_pzkDashMayor",				"PZKA_Vehicles_Sedan_a");
		SetAnimationsConfig("pzkDashHellion",						"PZKA_Vehicles_Sedan_a");
		SetAnimationsConfig("Vehicles_pzkDashMayor",				"PZKA_Vehicles_Sedan_a");
		SetAnimationsConfig("Vehicles_pzkDashRapier",				"PZKA_Vehicles_Sedan_a");
		SetAnimationsConfig("pzkDashMayorPolice",					"PZKA_Vehicles_SedanLights_NoRandom_a");
		SetAnimationsConfig("pzkDashMayorPoliceSlicktop",			"PZKA_Vehicles_SedanSlickLights_NoRandom_a");

		SetAnimationsConfig("pzkDashTornado",						"PZKA_Vehicles_Tornado_a");
		SetAnimationsConfig("pzkDashRoyalGrand",					"PZKA_Vehicles_DashRoyal_a");
		SetAnimationsConfig("pzkDashRoyal",							"PZKA_Vehicles_DashRoyal_a");
		SetAnimationsConfig("pzkChevalierDownhill",					"PZKA_Vehicles_DashRoyal_a");

		SetAnimationsConfig("pzkFranklinTruckBus",					"PZKA_Vehicles_TruckBus_a");
		SetAnimationsConfig("pzkFranklinTruckBusArmy",				"PZKA_Vehicles_TruckBus_a");
		SetAnimationsConfig("pzkFranklinTruckBusPrison",			"PZKA_Vehicles_TruckBus_a");
		SetAnimationsConfig("pzkFranklinTruckBusAirport",			"PZKA_Vehicles_TruckBus_a");

		SetAnimationsConfig("pzkCarMuscleCabrio",					"PZKA_Vehicles_MuscleCabrio_a");
		SetAnimationsConfig("pzkCarMuscle",							"PZKA_Vehicles_Muscle_a");

		SetAnimationsConfig("pzkContinentalBayer3304D",				"PZKA_Vehicles_Bayer_a");
		SetAnimationsConfig("pzkContinentalBayer3302D",				"PZKA_Vehicles_Bayer_2D_a");
		SetAnimationsConfig("pzkContinentalBayer330Sport",			"PZKA_Vehicles_Bayer_Sport_a");
		SetAnimationsConfig("pzkContinentalBayer330Cabrio",			"PZKA_Vehicles_Bayer_Cabrio_a");

		SetAnimationsConfig("pzkChevalierLaserModern",				"PZKA_Vehicles_Laser_a");
		SetAnimationsConfig("pzkFranklinGalloper",					"PZKA_Vehicles_Laser_a");
		SetAnimationsConfig("pzkChevalierLaserCUCV",				"PZKA_Vehicles_Laser_a");
		SetAnimationsConfig("pzkDashIntruder150short",				"PZKA_Vehicles_Laser_a");

		SetAnimationsConfig("pzkChevalierLaserFire",				"PZKA_Vehicles_LaserLights_NoRandom_a");
		SetAnimationsConfig("pzkChevalierLaserPolice",				"PZKA_Vehicles_LaserLights_NoRandom_a");
		SetAnimationsConfig("pzkChevalierLaserRanger",				"PZKA_Vehicles_LaserLights_NoRandom_a");
		SetAnimationsConfig("pzkFranklinGalloperFire",				"PZKA_Vehicles_LaserLights_NoRandom_a");
		SetAnimationsConfig("pzkFranklinGalloperPolice",			"PZKA_Vehicles_LaserLights_NoRandom_a");
		SetAnimationsConfig("pzkFranklinGalloperRanger",			"PZKA_Vehicles_LaserLights_NoRandom_a");

		SetAnimationsConfig("pzkChevalierLaserOffroader",			"PZKA_Vehicles_Laser5D_a");
--		SetAnimationsConfig("pzkDashCheyene",						"PZKA_Vehicles_Laser5D_a");
--		SetAnimationsConfig("pzkMastersonScout4D",					"PZKA_Vehicles_Laser5D_a");
--		SetAnimationsConfig("pzkSUVCuston",							"PZKA_Vehicles_Laser5D_a");
--		SetAnimationsConfig("pzkContinentalCruiser",				"PZKA_Vehicles_Laser5D_a");

		SetAnimationsConfig("pzkStepVanMilk",						"PZKA_Vehicle_StepVan_NoRandom_a");
		SetAnimationsConfig("pzkStepVanUPZ",						"PZKA_Vehicle_StepVan_NoRandom_a");
		SetAnimationsConfig("pzkStepVanFedLog",						"PZKA_Vehicle_StepVan_NoRandom_a");
		SetAnimationsConfig("pzkStepVanSwatLouisvilleSWAT",			"PZKA_Vehicle_StepVan_SWAT_a");
		SetAnimationsConfig("pzkStepVanIceCream",					"PZKA_Vehicle_StepVan_IceCream_a");
		SetAnimationsConfig("pzkStepVanHotDog",						"PZKA_Vehicle_StepVan_HotDog_a");
		SetAnimationsConfig("pzkStepVanPizza",						"PZKA_Vehicle_StepVan_Pizza_a");
		SetAnimationsConfig("pzkStepVanTacoVan",					"PZKA_Vehicle_StepVan_Taco_a");

		SetAnimationsConfig("pzkFranklinHomelander",				"PZKA_Vehicles_CarNormal_a");
		SetAnimationsConfig("pzkFranklinTriumphTWD",				"PZKA_Vehicles_CarNormal_a");
		SetAnimationsConfig("pzkFranklinTriumphTWDFire",			"PZKA_Vehicles_CarLights_NoRandom_a");
		SetAnimationsConfig("pzkFranklinTriumphTWDPolice",			"PZKA_Vehicles_CarLights_NoRandom_a");
		SetAnimationsConfig("pzkFranklinTriumphTWDTaxi",			"PZKA_Vehicles_CarTaxi_a");

		SetAnimationsConfig("pzkCeriseStationWagon",				"PZKA_Vehicles_CarSwagon_a");
		SetAnimationsConfig("pzkTriumphStationWagon",				"PZKA_Vehicles_CarSwagon_a");
		SetAnimationsConfig("pzkRapierStationWagon",				"PZKA_Vehicles_CarSwagon_a");
		SetAnimationsConfig("pzkTriumphStationWagonTaxi",			"PZKA_Vehicles_CarSwagonTaxi_a");

		SetAnimationsConfig("pzkLimo",								"PZKA_Vehicles_Limo_a");
		SetAnimationsConfig("pzkHearse",							"PZKA_Vehicles_Hearse_a");

		SetAnimationsConfig("pzkFranklinTruckBed",					"PZKA_Vehicles_Truck_Bed_a");
		SetAnimationsConfig("pzkFranklinTruckFlatbed",				"PZKA_Vehicles_Truck_FlatBed_a");
		SetAnimationsConfig("pzkFranklinTruckBox",					"PZKA_Vehicles_Truck_Box_a");
		SetAnimationsConfig("pzkFranklinTruckCab",					"PZKA_Vehicles_Truck_Cab_a");
		SetAnimationsConfig("pzkFranklinTruckDump",					"PZKA_Vehicles_Truck_Dump_a");
		SetAnimationsConfig("pzkFranklinTruckGarbage",				"PZKA_Vehicles_Truck_Garbage_a");

		SetAnimationsConfig("pzkFranklinTruckShort",				"PZKA_Vehicles_Truck_Short_a");
		SetAnimationsConfig("pzkFranklinTruckSemi",					"PZKA_Vehicles_Truck_Semi_a");
		SetAnimationsConfig("pzkFranklinTruckRV",					"PZKA_Vehicles_Truck_RV_a");
		SetAnimationsConfig("pzkFranklinTruckMil",					"PZKA_Vehicles_Truck_Mil_a");
		SetAnimationsConfig("pzkFranklinTruckPropane",				"PZKA_Vehicles_Truck_Propane_a");
		SetAnimationsConfig("pzkFranklinTruckPropane2",				"PZKA_Vehicles_Truck_Propane_a");
		SetAnimationsConfig("pzkFranklinTruckTow",					"PZKA_Vehicles_Truck_Tow_a");
		SetAnimationsConfig("pzkFranklinTruckUtility",				"PZKA_Vehicles_Truck_Utility_a");

		SetAnimationsConfig("pzkFranklinTruckFire",					"PZKA_Vehicles_Truck_Fire_a");
		SetAnimationsConfig("pzkFranklinTruckFireTanker",			"PZKA_Vehicles_Truck_Tanker_nr_a");
		SetAnimationsConfig("pzkFranklinTruckTankerFossoil",		"PZKA_Vehicles_Truck_Tanker_nr_a");
		SetAnimationsConfig("pzkFranklinTruckTankerSeptic",			"PZKA_Vehicles_Truck_Tanker2_a");
		SetAnimationsConfig("pzkFranklinTruckTankerWater",			"PZKA_Vehicles_Truck_Tanker2_a");
		SetAnimationsConfig("pzkFranklinTruckMilTankerWater",		"PZKA_Vehicles_Truck_Tanker2_a");
		SetAnimationsConfig("pzkFranklinTruckTankerMil",			"PZKA_Vehicles_Truck_Tanker_nr_a");
		
		SetAnimationsConfig("pzkVanBox",							"PZKA_Vehicles_Van_Box_a");
		SetAnimationsConfig("pzkVanBoxAmbulance",					"PZKA_Vehicles_Van_BoxAmbulance_a");
		SetAnimationsConfig("pzkVanBoxFiretruck",					"PZKA_Vehicles_Van_BoxAmbulance_a");
		SetAnimationsConfig("pzkVanBrig",							"PZKA_Vehicles_Van_Brig_a");
		SetAnimationsConfig("pzkVanCamper",							"PZKA_Vehicles_Van_Camper_a");

		SetAnimationsConfig("pzkVanMultivan",						"PZKA_Vehicles_Van_Seats_a");
		SetAnimationsConfig("pzkVanPolice",							"PZKA_Vehicles_Van_Police_a");
		SetAnimationsConfig("pzkVanPoliceLouisvillePD",				"PZKA_Vehicles_Van_Police_a");
		SetAnimationsConfig("pzkVanPoliceMeadeSheriff",				"PZKA_Vehicles_Van_Police_a");
		SetAnimationsConfig("pzkVanPoliceWestPoint",				"PZKA_Vehicles_Van_Police_a");
		SetAnimationsConfig("pzkVanSeatsTaxi",						"PZKA_Vehicles_Van_Taxi_a");
		SetAnimationsConfig("pzkVanMcCoy",							"PZKA_Vehicles_Van_McCoy_a");

end

if getActivatedMods():contains("StandardizedVehicleUpgrades3Core") then
	require "SVU3_PZKVLCCars_Stuffs"
	local SVUC = require "SVUC_Stuffs";
	SVUC.SetArmor("pzkCarMuscle", "PZKA_SVU3_Armor_pzkCarMuscle")
	SVUC.SetArmor("pzkCarMuscle", "PZKA_ATA2AirScoopHoodFix")
	SVUC.SetArmor("pzkCarMuscleCabrio", "PZKA_SVU3_Armor_pzkCarMuscle_cabrio")
	SVUC.SetArmor("pzkCarMuscleCabrio", "PZKA_ATA2AirScoopHoodFix")
end


--]]--
