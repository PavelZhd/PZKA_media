local PZKA = require "PZKA_addAnimations"

local SLE = getActivatedMods():contains("SimpleLightbarsExpanded")
local CullSeats = getActivatedMods():contains("VVA_cullseats") or getActivatedMods():contains("PZKA_cullseats")
local VVE = getActivatedMods():contains("VVehicleEnhancer")

PZKA.addToProfile("pzka_C_2SeatsF",{"VVA_SeatFrontLeft","VVA_SeatFrontRight"})
PZKA.addToProfile("pzka_C_2SeatsM",{"VVA_SeatMiddleLeft","VVA_SeatMiddleRight"})
PZKA.addToProfile("pzka_C_2SeatsR",{"VVA_SeatRearLeft","VVA_SeatRearRight"})

PZKA.muteInProfile("pzka_2SeatsF",{})
PZKA.muteInProfile("pzka_2SeatsM",{})
PZKA.muteInProfile("pzka_2SeatsR",{})
if not CullSeats then
    PZKA.addToProfile("pzka_2SeatsF",{"pzka_C_2SeatsF"})
    PZKA.addToProfile("pzka_2SeatsM",{"pzka_C_2SeatsM"})
    PZKA.addToProfile("pzka_2SeatsR",{"pzka_C_2SeatsR"})
end


PZKA.addToProfile("pzka_4SeatsR",{"pzka_2SeatsF","pzka_2SeatsR"})
PZKA.addToProfile("pzka_4SeatsM",{"pzka_2SeatsF","pzka_2SeatsM"})
PZKA.addToProfile("pzka_6Seats",{"pzka_4SeatsR","pzka_2SeatsM"})



PZKA.addToProfile("pzka_t_lighbar",{"VVA_lightbar"})
PZKA.addToProfile("pzka_t_taxi",{"VVA_taxi"})
PZKA.muteInProfile("pzka_sle_lighbar",{})
PZKA.muteInProfile("pzka_sle_taxi",{})
if not SLE then
    PZKA.addToProfile("pzka_sle_lighbar",{"pzka_t_lighbar"})
    PZKA.addToProfile("pzka_sle_taxi",{"pzka_t_taxi"})
end

PZKA.ApplyTemplateToVehicle("PZKA_Normal_Sedan_F","PZKA_Normal_SedanF",{"pzka_4SeatsR","PZKA_Normal_SedanF_base"})
PZKA.ApplyTemplateToVehicle("PZKA_Normal_Sedan_F_nr","PZKA_Normal_SedanF_nr",{"pzka_4SeatsR","PZKA_Normal_SedanF_base_nr"})

PZKA.ApplyTemplateToVehicle("PZKA_Normal_Sedan_V","PZKA_Normal_SedanV",{"pzka_4SeatsR","PZKA_Normal_SedanV_base"})
PZKA.ApplyTemplateToVehicle("PZKA_Normal_Sedan_V_nr","PZKA_Normal_SedanV_nr",{"pzka_4SeatsR","PZKA_Normal_SedanV_base_nr"})

-- Cerise Sedan
PZKA.CopyTemplateToVehicle("pzkChevalierCeriseSedan","PZKA_Normal_Sedan_F",{"PZKA_SedanF_Cerise"})
PZKA.CopyTemplateToVehicle("pzkChevalierCeriseDetective","pzkChevalierCeriseSedan",{"pzka_t_lighbar","PZKA_Normal_detective"})

PZKA.CopyTemplateToVehicle("pzkChevalierCeriseSedan_nr","PZKA_Normal_Sedan_F_nr",{"PZKA_SedanF_Cerise_nr"})
PZKA.CopyTemplateToVehicle("pzkChevalierCeriseSedanFire","pzkChevalierCeriseSedan_nr",{"pzka_t_lighbar","VVA_Normal_Lightbar"})
PZKA.CopyTemplateToVehicle("pzkChevalierCeriseSedanLSU","pzkChevalierCeriseSedanFire")
PZKA.CopyTemplateToVehicle("pzkChevalierCeriseSedanMall","pzkChevalierCeriseSedanFire")

PZKA.CopyTemplateToVehicle("pzkChevalierCeriseSedanPolice","pzkChevalierCeriseSedan_nr",{"pzka_sle_lighbar","VVA_Normal_Lightbar"})

PZKA.CopyTemplateToVehicle("pzkChevalierCeriseSedanTaxi","pzkChevalierCeriseSedan_nr",{"pzka_sle_taxi","VVA_Vehicles_Normal_TaxiSign"})
-- Hellion Sedan
PZKA.CopyTemplateToVehicle("pzkDashHellion","PZKA_Normal_Sedan_F",{"PZKA_SedanF_Hellion"})
PZKA.CopyTemplateToVehicle("pzkDashHellionDetective","pzkDashHellion",{"pzka_t_lighbar","PZKA_Normal_detective"})

PZKA.CopyTemplateToVehicle("pzkDashHellion_nr","PZKA_Normal_Sedan_F_nr",{"PZKA_SedanF_Hellion_nr"})
PZKA.CopyTemplateToVehicle("pzkDashHellionTaxi","pzkDashHellion_nr",{"pzka_sle_taxi","VVA_Vehicles_Normal_TaxiSign"})

-- Mayor Sedan
PZKA.CopyTemplateToVehicle("pzkDashMayor","PZKA_Normal_Sedan_F",{"PZKA_SedanF_Mayor"})
PZKA.CopyTemplateToVehicle("pzkDashMayorDetective","pzkDashMayor",{"pzka_t_lighbar","PZKA_Normal_detective"})

PZKA.CopyTemplateToVehicle("pzkDashMayor_nr","PZKA_Normal_Sedan_F_nr",{"PZKA_SedanF_Mayor_nr"})
PZKA.CopyTemplateToVehicle("pzkDashMayorLSU","pzkDashMayor_nr",{"pzka_t_lighbar","VVA_Normal_Lightbar"})
PZKA.CopyTemplateToVehicle("pzkDashMayorMall","pzkDashMayorLSU")

PZKA.CopyTemplateToVehicle("pzkDashMayorPolice","pzkDashMayor_nr",{"pzka_sle_lighbar","VVA_Normal_Lightbar"})

PZKA.CopyTemplateToVehicle("pzkDashMayorTaxi","pzkDashMayor_nr",{"pzka_sle_taxi","VVA_Vehicles_Normal_TaxiSign"})

-- Rapier Sedan
PZKA.CopyTemplateToVehicle("Vehicles_pzkDashRapier","PZKA_Normal_Sedan_F",{"PZKA_SedanF_Rapier"})
PZKA.CopyTemplateToVehicle("pzkDashRapierDetective","pzkDashRapier",{"pzka_t_lighbar","PZKA_Normal_detective"})

-- TWD Sedan
PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWD","PZKA_Normal_Sedan_V",{"PZKA_SedanV_TWD"})
PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWDDetective","pzkFranklinTriumphTWD",{"pzka_t_lighbar","PZKA_Normal_detective"})

PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWD_nr","PZKA_Normal_Sedan_V_nr",{"PZKA_SedanV_TWD_nr"})
PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWDFire","pzkFranklinTriumphTWD_nr",{"pzka_t_lighbar","VVA_Normal_Lightbar"})
PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWDLSU","pzkFranklinTriumphTWDFire")
PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWDMall","pzkFranklinTriumphTWDFire")

PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPolice","pzkFranklinTriumphTWD_nr",{"pzka_sle_lighbar","VVA_Normal_Lightbar"})

PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWDTaxi","pzkFranklinTriumphTWD_nr",{"pzka_sle_taxi","VVA_Vehicles_Normal_TaxiSign"})

-- TWD91 Sedan
PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91","PZKA_Normal_Sedan_V",{"PZKA_SedanV_TWD91"})
PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91Detective","pzkFranklinTriumphTWD91",{"pzka_t_lighbar","PZKA_Normal_detective"})

PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91_nr","PZKA_Normal_Sedan_V_nr",{"PZKA_SedanV_TWD91_nr"})
PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91LSU","pzkFranklinTriumphTWD91_nr",{"pzka_t_lighbar","VVA_Normal_Lightbar"})
PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91Mall","pzkFranklinTriumphTWD91LSU")

PZKA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91Police","pzkFranklinTriumphTWD91_nr",{"pzka_sle_lighbar","VVA_Normal_Lightbar"})

-- Homelander Sedan
PZKA.CopyTemplateToVehicle("pzkFranklinHomelander","PZKA_Normal_Sedan_V",{"PZKA_SedanV_Homelander"})
PZKA.CopyTemplateToVehicle("pzkFranklinHomelanderDetective","pzkFranklinHomelander",{"pzka_t_lighbar","PZKA_Normal_detective"})

-- Nyala Sedan
PZKA.CopyTemplateToVehicle("pzkChevalierNyala","PZKA_Normal_Sedan_V",{"PZKA_SedanF_Nyala"})
PZKA.CopyTemplateToVehicle("pzkChevalierNyalaDetective","pzkChevalierNyala",{"pzka_t_lighbar","PZKA_Normal_detective"})

PZKA.CopyTemplateToVehicle("pzkChevalierNyala_nr","PZKA_Normal_Sedan_V_nr",{"PZKA_SedanF_Nyala_nr"})
PZKA.CopyTemplateToVehicle("pzkChevalierNyalaLSU","pzkChevalierNyala_nr",{"pzka_t_lighbar","VVA_Normal_Lightbar"})
PZKA.CopyTemplateToVehicle("pzkChevalierNyalaMall", "pzkChevalierNyalaLSU")

-- Hearse
PZKA.ApplyTemplateToVehicle("pzkHearse","PZKA_Vehicles_Normal_Hearse_nr",{"pzka_4SeatsR","PZKA_Hearse_nr"})

-- Limo
PZKA.ApplyTemplateToVehicle("pzkLimo","PZKA_Normal_Limo",{"pzka_4SeatsR","PZKA_Limo"})


-- Station Wagon
PZKA.ApplyTemplateToVehicle("PZKA_Normal_Wagon","PZKA_Normal_Wagon",{"pzka_4SeatsR","PZKA_Normal_Wagon"})
PZKA.ApplyTemplateToVehicle("PZKA_Normal_Wagon_nr","PZKA_Normal_Wagon_nr",{"pzka_4SeatsR","PZKA_Normal_Wagon_nr"})

PZKA.CopyTemplateToVehicle("pzkCeriseStationWagon","PZKA_Normal_Wagon",{"PZKA_Wagon_Cerise"})
PZKA.CopyTemplateToVehicle("pzkRapierStationWagon","PZKA_Normal_Wagon",{"PZKA_Wagon_Rapier"})
PZKA.CopyTemplateToVehicle("pzkDashMayorStationWagon","PZKA_Normal_Wagon",{"PZKA_Wagon_Mayor"})
PZKA.CopyTemplateToVehicle("pzkTriumphStationWagon","PZKA_Normal_Wagon",{"PZKA_Wagon_TWD"})
PZKA.CopyTemplateToVehicle("pzkTriumphStationWagonTaxi","PZKA_Normal_Wagon_nr",{"PZKA_Wagon_TWD", "pzka_sle_taxi","PZKA_Normal_TaxiSignWagon"})

PZKA.ApplyTemplateToVehicle("pzkTriumphTWDStationWagonGriswold","PZKA_Grisworld_nr",{"pzka_4SeatsR","PZKA_Normal_Wagon_nr","PZKA_Wagon_Grisworld_nr"})
PZKA.ApplyTemplateToVehicle("pzkHearseGhoulbusters","PZKA_Ghoulbuster_nr",{"pzka_4SeatsR","PZKA_Normal_Wagon_nr","PZKA_Ghoulbuster_nr"})

--Bank Truck

PZKA.ApplyTemplateToVehicle("pzkFranklinBankTruck","PZKA_Vehicles_BankTrunk_nr",{"pzka_2SeatsF","PZKA_BankTruck_Bank"})
PZKA.ApplyTemplateToVehicle("pzkFranklinSwatTruck","PZKA_Vehicles_BankTrunk_nr",{"pzka_2SeatsF","PZKA_BankTruck_Bank","pzka_t_lighbar","PZKA_BankTruck_lightbar"})

-- FranklinTruck

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckBed", "PZKA_Vehicles_FranklinTruck_TruckBed",{"pzka_2SeatsF","PZKA_FranklinTruck"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckSemi", "PZKA_Vehicles_FranklinTruck_TruckSemi",{"pzka_2SeatsF","PZKA_FranklinTruck_Semi"})
PZKA.ApplyTemplateToVehicle("pzkFranklinTruckSemiMadMax", "PZKA_Vehicles_FranklinTruck_TruckSemi_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Semi_nr"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckShort", "PZKA_Vehicles_FranklinTruck_TruckBedShort",{"pzka_2SeatsF","PZKA_FranklinTruck_Short"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckMcCoy", "PZKA_Vehicles_FranklinTruck_Logging_nr",{"pzka_2SeatsF","PZKA_FranklinTruck"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckFlatbed", "PZKA_Vehicles_FranklinTruck_TruckFlatbed",{"pzka_2SeatsF","PZKA_FranklinTruck"})
PZKA.ApplyTemplateToVehicle("pzkFranklinTruckFlatbedPublicWorks", "PZKA_Vehicles_FranklinTruck_TruckFlatbed_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_nr"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckDump", "PZKA_Vehicles_FranklinTruck_Dump",{"pzka_2SeatsF","PZKA_FranklinTruck_Dump"})
PZKA.ApplyTemplateToVehicle("pzkFranklinTruckDumpPublicWorks", "PZKA_Vehicles_FranklinTruck_Dump_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Dump_nr"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckBox", "PZKA_Vehicles_FranklinTruck_TruckBox",{"pzka_2SeatsF","PZKA_FranklinTruck_Box"})
PZKA.ApplyTemplateToVehicle("pzkFranklinTruckBoxLectromax", "PZKA_Vehicles_FranklinTruck_TruckBox_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Box_nr"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckCab", "PZKA_Vehicles_FranklinTruck_Sleeper",{"pzka_4SeatsR","PZKA_FranklinTruck_Sleeper"})
PZKA.ApplyTemplateToVehicle("pzkFranklinTruckTow", "PZKA_Vehicles_FranklinTruck_Tow",{"pzka_2SeatsF","PZKA_FranklinTruck_Tow","pzka_t_lighbar","PZKA_FranklinTruck_Tow_lightbar"})
PZKA.ApplyTemplateToVehicle("pzkFranklinTruckUtility", "PZKA_Vehicles_FranklinTruck_Utility",{"pzka_2SeatsF","PZKA_FranklinTruck_Utility","pzka_t_lighbar","PZKA_FranklinTruck_Tow_lightbar"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckFire", "PZKA_Vehicles_FranklinTruck_Fire_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Fire_nr","pzka_t_lighbar","PZKA_FranklinTruck_lightbar","PZKA_FranklinTruck_Fire_lightbar"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckGarbage", "PZKA_Vehicles_FranklinTruck_Garbage_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Garbage_nr","pzka_t_lighbar","PZKA_FranklinTruck_lightbar"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckMil", "PZKA_Vehicles_FranklinTruck_Military_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Military_nr"})

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckPropane", "PZKA_Vehicles_FranklinTruck_Propane",{"pzka_2SeatsF","PZKA_FranklinTruck_Propane","pzka_t_lighbar","PZKA_FranklinTruck_lightbar"})
PZKA.CopyTemplateToVehicle("pzkFranklinTruckPropane2", "pzkFranklinTruckPropane")

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckFireTanker", "PZKA_Vehicles_FranklinTruck_Tanker_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Tanker_nr","pzka_t_lighbar","PZKA_FranklinTruck_lightbar"})
PZKA.CopyTemplateToVehicle("pzkFranklinTruckTankerFossoil", "pzkFranklinTruckFireTanker")
PZKA.CopyTemplateToVehicle("pzkFranklinTruckTankerMil", "pzkFranklinTruckFireTanker")

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckMilTankerWater", "PZKA_Vehicles_FranklinTruck_Tanker2_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Tanker2_nr","pzka_t_lighbar","PZKA_FranklinTruck_lightbar"})
PZKA.ApplyTemplateToVehicle("pzkFranklinTruckTankerSeptic", "PZKA_Vehicles_FranklinTruck_Tanker2",{"pzka_2SeatsF","PZKA_FranklinTruck_Tanker2","pzka_t_lighbar","PZKA_FranklinTruck_lightbar"})
PZKA.CopyTemplateToVehicle("pzkFranklinTruckTankerWater","pzkFranklinTruckTankerSeptic")

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckRV", "PZKA_Vehicles_FranklinTruck_RV",{"pzka_4SeatsR","PZKA_FranklinTruck_RV"})

-- Frnaklin Bus

PZKA.ApplyTemplateToVehicle("pzkFranklinTruckBus","PZKA_Vehicles_TruckBus_a_nr",{"pzka_2SeatsF","PZKA_FranklinBus_nr"})
PZKA.CopyTemplateToVehicle("pzkFranklinTruckBusAirport","pzkFranklinTruckBus")
PZKA.InheritTemplateToVehicle("pzkFranklinTruckBusArmy","pzkFranklinTruckBus","PZKA_Vehicles_TruckBus_Bars_a_nr")
PZKA.CopyTemplateToVehicle("pzkFranklinTruckBusPrison","pzkFranklinTruckBusArmy")

-- Chevaliuer Van70

PZKA.ApplyTemplateToVehicle("pzkChevalierVan70","PZKA_Vehicles_ChevalierVan70_a",{"pzka_6Seats","PZKA_CVan70"})
PZKA.ApplyTemplateToVehicle("pzkDashVan70","PZKA_Vehicles_DashVan70_a",{"pzka_6Seats","PZKA_DashVan70"})
PZKA.ApplyTemplateToVehicle("pzkDashVan70Riddle","PZKA_Vehicles_Riddle_a",{"pzka_4SeatsR","PZKA_Riddle_nr"})

-- Pickup

PZKA.ApplyTemplateToVehicle("pzkChevalierTowTruck","PZKA_Vehicles_ChevTow_a",{"pzka_2SeatsF","PZKA_PickupTow","pzka_t_lighbar","VVA_PickupTruck_Lightbar"})
PZKA.ApplyTemplateToVehicle("pzkChevalierTowTruck_nr","PZKA_Vehicles_ChevTow_nr_a",{"pzka_2SeatsF","PZKA_PickupTow_nr","pzka_t_lighbar","VVA_PickupTruck_Lightbar"})
PZKA.CopyTemplateToVehicle("pzkChevalierTowTruckFire","pzkChevalierTowTruck_nr")
PZKA.CopyTemplateToVehicle("pzkChevalierTowTruckPolice","pzkChevalierTowTruck_nr")

PZKA.ApplyTemplateToVehicle("pzkPickUpTruckPublicWorks","VVA_Vehicles_PickupTruck_nr",{"pzka_2SeatsF","VVA_PickupTruck_nr","pzka_t_lighbar","VVA_PickupTruck_Lightbar"})

PZKA.ApplyTemplateToVehicle("pzkPickUpTruckWoodboarded","VVA_Vehicles_PickupTruck",{"pzka_2SeatsF","PZKA_Woodboard"})

-- FType
---- Box
PZKA.ApplyTemplateToVehicle("pzkFTypeBox_nr","PZKA_Vehicles_Ftype_Box_Base_nr",{"pzka_2SeatsF","PZKA_FType_CUCV"})
PZKA.CopyTemplateToVehicle("pzkF350BoxCUCV","pzkFTypeBox_nr",{"pzka_t_lighbar","PZKA_FType_LightbarCUCV"})
PZKA.CopyTemplateToVehicle("pzkF350BoxSwat","pzkFTypeBox_nr",{"pzka_t_lighbar","PZKA_FType_Lightbar"})

PZKA.ApplyTemplateToVehicle("pzkF350BoxAmbulance","PZKA_Vehicles_Ftype_Box_Base_nr",{"pzka_2SeatsF","PZKA_FType_Ampulance","pzka_t_lighbar","PZKA_FType_Lightbar"})

PZKA.ApplyTemplateToVehicle("pzkF350BoxUmoveit","PZKA_Vehicles_Ftype_Box_Base_nr",{"pzka_2SeatsF","PZKA_FType_BoxShutter_nr"})

---- Tow

PZKA.ApplyTemplateToVehicle("pzkFtypeTowTruck","PZKA_Vehicles_FType_Tow_Base",{"pzka_2SeatsF","PZKA_FType_Tow","pzka_t_lighbar","PZKA_FType_LightbarTow"})

---- Utility

PZKA.ApplyTemplateToVehicle("pzkChevalier150Utility","PZKA_Vehicles_Ftype_Utility_Base",{"pzka_2SeatsF","PZKA_FType_Utility_Province"})
PZKA.ApplyTemplateToVehicle("pzkDash150Utility","PZKA_Vehicles_Ftype_Utility_Base",{"pzka_2SeatsF","PZKA_FType_Utility_Intruder"})
PZKA.ApplyTemplateToVehicle("pzkF150Utility","PZKA_Vehicles_Ftype_Utility_Base",{"pzka_2SeatsF","PZKA_FType_Utility_F350"})

PZKA.ApplyTemplateToVehicle("pzkChevalier150UtilityNR","PZKA_Vehicles_Ftype_Utility_Base_nr",{"pzka_2SeatsF","PZKA_FType_Utility_Province_nr"})
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityMoore","pzkChevalier150UtilityNR")
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityNewCoalfieldMechanic","pzkChevalier150UtilityNR")

PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityService","pzkChevalier150UtilityNR",{"pzka_t_lighbar","PZKA_FType_LightbarTow"})
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityAirport","pzkChevalier150UtilityService")
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityIrvingtonSpeedway","pzkChevalier150UtilityService")
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityRanger","pzkChevalier150UtilityService")
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityPublicWorks","pzkChevalier150UtilityService")
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityFire","pzkChevalier150UtilityService")
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityLVPD","pzkChevalier150UtilityService")
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityMuldPD","pzkChevalier150UtilityService")
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityKSTPD","pzkChevalier150UtilityService")
PZKA.CopyTemplateToVehicle("pzkChevalier150UtilityBulletinPD","pzkChevalier150UtilityService")


PZKA.ApplyTemplateToVehicle("pzkDash150UtilityNR","PZKA_Vehicles_Ftype_Utility_Base_nr",{"pzka_2SeatsF","PZKA_FType_Utility_Intruder_nr"})
PZKA.CopyTemplateToVehicle("pzkDash150UtilityMoore","pzkDash150UtilityNR")
PZKA.CopyTemplateToVehicle("pzkDash150UtilityNewCoalfieldMechanic","pzkDash150UtilityNR")

PZKA.CopyTemplateToVehicle("pzkDash150UtilityService","pzkDash150UtilityNR",{"pzka_t_lighbar","PZKA_FType_LightbarTow"})
PZKA.CopyTemplateToVehicle("pzkDash150UtilityAirport","pzkDash150UtilityService")
PZKA.CopyTemplateToVehicle("pzkDash150UtilityIrvingtonSpeedway","pzkDash150UtilityService")
PZKA.CopyTemplateToVehicle("pzkDash150UtilityRanger","pzkDash150UtilityService")
PZKA.CopyTemplateToVehicle("pzkDash150UtilityPublicWorks","pzkDash150UtilityService")
PZKA.CopyTemplateToVehicle("pzkDash150UtilityFire","pzkDash150UtilityService")
PZKA.CopyTemplateToVehicle("pzkDash150UtilityLVPD","pzkDash150UtilityService")
PZKA.CopyTemplateToVehicle("pzkDash150UtilityMuldPD","pzkDash150UtilityService")
PZKA.CopyTemplateToVehicle("pzkDash150UtilityKSTPD","pzkDash150UtilityService")
PZKA.CopyTemplateToVehicle("pzkDash150UtilityBulletinPD","pzkDash150UtilityService")


PZKA.ApplyTemplateToVehicle("pzkF150UtilityNR","PZKA_Vehicles_Ftype_Utility_Base_nr",{"pzka_2SeatsF","PZKA_FType_Utility_Province_nr","pzka_t_lighbar","PZKA_FType_LightbarTow"})
PZKA.CopyTemplateToVehicle("pzkF150UtilityMoore","pzkF150UtilityNR")
PZKA.CopyTemplateToVehicle("pzkF150UtilityNewCoalfieldMechanic","pzkF150UtilityNR")

PZKA.CopyTemplateToVehicle("pzkF150UtilityService","pzkF150UtilityNR",{"pzka_t_lighbar","PZKA_FType_LightbarTow"})
PZKA.CopyTemplateToVehicle("pzkF150UtilityAirport","pzkF150UtilityService")
PZKA.CopyTemplateToVehicle("pzkF150UtilityIrvingtonSpeedway","pzkF150UtilityService")
PZKA.CopyTemplateToVehicle("pzkF150UtilityRanger","pzkF150UtilityService")
PZKA.CopyTemplateToVehicle("pzkF150UtilityPublicWorks","pzkF150UtilityService")
PZKA.CopyTemplateToVehicle("pzkF150UtilityFire","pzkF150UtilityService")
PZKA.CopyTemplateToVehicle("pzkF150UtilityLVPD","pzkF150UtilityService")
PZKA.CopyTemplateToVehicle("pzkF150UtilityMuldPD","pzkF150UtilityService")
PZKA.CopyTemplateToVehicle("pzkF150UtilityKSTPD","pzkF150UtilityService")
PZKA.CopyTemplateToVehicle("pzkF150UtilityBulletinPD","pzkF150UtilityService")

---- Flatbed
PZKA.ApplyTemplateToVehicle("pzkChevalier150BoxFlatbed","PZKA_Vehicles_Ftype_Flatbed_Base",{"pzka_2SeatsF","PZKA_FType_Flatbed_Province"})
PZKA.ApplyTemplateToVehicle("pzkChevalier150BoxFlatbedPublicWorks","PZKA_Vehicles_Ftype_Flatbed_Base_nr",{"pzka_2SeatsF","PZKA_FType_Flatbed_Province_nr","pzka_t_lighbar","PZKA_FType_LightbarTow"})

PZKA.ApplyTemplateToVehicle("pzkDash150BoxFlatbed","PZKA_Vehicles_Ftype_Flatbed_Base",{"pzka_2SeatsF","PZKA_FType_Flatbed_Intruder"})
PZKA.ApplyTemplateToVehicle("pzkDash150BoxFlatbedPublicWorks","PZKA_Vehicles_Ftype_Flatbed_Base_nr",{"pzka_2SeatsF","PZKA_FType_Flatbed_Intruder_nr","pzka_t_lighbar","PZKA_FType_LightbarTow"})

PZKA.ApplyTemplateToVehicle("pzkF150BoxFlatbed","PZKA_Vehicles_Ftype_Flatbed_Base",{"pzka_2SeatsF","PZKA_FType_Flatbed_F350"})
PZKA.ApplyTemplateToVehicle("pzkF150BoxFlatbedPublicWorks","PZKA_Vehicles_Ftype_Flatbed_Base_nr",{"pzka_2SeatsF","PZKA_FType_Flatbed_F350_nr","pzka_t_lighbar","PZKA_FType_LightbarTow"})

---- Reg

PZKA.ApplyTemplateToVehicle("pzkChevalierE6","PZKA_Vehicles_Ftype_Reg_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Pickup_Province"})
PZKA.CopyTemplateToVehicle("pzkChevalierF6","pzkChevalierE6")
PZKA.ApplyTemplateToVehicle("pzkFranklin150FPickupReg","PZKA_Vehicles_Ftype_Reg_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Pickup_F350"})
PZKA.ApplyTemplateToVehicle("pzkPickUpTruck93","PZKA_Vehicles_Ftype_Reg_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Pickup_Intruder"})


PZKA.ApplyTemplateToVehicle("pzkChevalierE6Van","PZKA_Vehicles_Ftype_Reg_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Wagon_Province"})
PZKA.CopyTemplateToVehicle("pzkChevalierF6Van","pzkChevalierE6Van")
PZKA.ApplyTemplateToVehicle("pzkFranklin150van","PZKA_Vehicles_Ftype_Reg_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Wagon_F350"})
PZKA.ApplyTemplateToVehicle("pzkDashIntruder150RegVan","PZKA_Vehicles_Ftype_Reg_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Wagon_Intruder"})

---- Med

PZKA.ApplyTemplateToVehicle("pzkChevalierPickupCrewMedium","PZKA_Vehicles_Ftype_Med_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Med_Pickup_Province"})
PZKA.ApplyTemplateToVehicle("pzkFranklin150FPickupMedium","PZKA_Vehicles_Ftype_Med_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Med_Pickup_F350"})

PZKA.ApplyTemplateToVehicle("pzkFranklin150FWagonMedium","PZKA_Vehicles_Ftype_Med_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Med_Wagon_F350"})
PZKA.CopyTemplateToVehicle("pzkFranklin250FWagonLong","pzkFranklin150FWagonMedium")

---- CrewMed

PZKA.ApplyTemplateToVehicle("pzkChevalierProvince","PZKA_Vehicles_Ftype_CrewMed_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_CrewMed_Wagon_Province"})

---- Long

PZKA.ApplyTemplateToVehicle("pzkDashIntruder250PickupLong","PZKA_Vehicles_Ftype_Long_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Long_Pickup_Intruder"})
PZKA.ApplyTemplateToVehicle("pzkFranklin250FPickupCrewLong","PZKA_Vehicles_Ftype_Long_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Long_Pickup_F350"})

PZKA.ApplyTemplateToVehicle("pzkFranklin250FPickupWagonLong","PZKA_Vehicles_Ftype_Long_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Long_Wagon_F350"})
PZKA.ApplyTemplateToVehicle("pzkDashIntruder250WagonLong","PZKA_Vehicles_Ftype_Long_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Long_Wagon_Intruder"})

---- CrewLong

PZKA.ApplyTemplateToVehicle("pzkChevalierPickupCrewLong","PZKA_Vehicles_Ftype_CrewLong_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_CrewLong_Pickup_Province"})
PZKA.ApplyTemplateToVehicle("pzkFranklin350FPickupCrewLong","PZKA_Vehicles_Ftype_CrewLong_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_CrewLong_Pickup_F350"})

PZKA.ApplyTemplateToVehicle("pzkChevalierProvinceLong","PZKA_Vehicles_Ftype_CrewLong_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_CrewLong_Wagon_Province"})
PZKA.ApplyTemplateToVehicle("pzkFranklin350FWagonLong","PZKA_Vehicles_Ftype_CrewLong_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_CrewLong_Wagon_F350"})

PZKA.ApplyTemplateToVehicle("pzkChevalierProvinceLongCUCV","PZKA_Vehicles_Ftype_CrewLong_Wagon_Base_nr",{"pzka_2SeatsF","PZKA_FType_CrewLong_Wagon_Province_nr"})

-- Marocco80

PZKA.ApplyTemplateToVehicle("pzkChevalierMaroca80","PZKA_Vehicles_Marocco80_Base",{"pzka_2SeatsF","pzka_Marocco80_variable"})
PZKA.ApplyTemplateToVehicle("pzkChevalierMaroca80Bulletin","PZKA_Vehicles_Marocco80_Base_nr",{"pzka_2SeatsF","pzka_Marocco80_nr","pzka_sle_lighbar","PZKA_Marocco80_lightbar"})
PZKA.CopyTemplateToVehicle("pzkChevalierMaroca80KST","pzkChevalierMaroca80Bulletin")
PZKA.CopyTemplateToVehicle("pzkChevalierMaroca80LV","pzkChevalierMaroca80Bulletin")
PZKA.CopyTemplateToVehicle("pzkChevalierMaroca80Muld","pzkChevalierMaroca80Bulletin")

PZKA.ApplyTemplateToVehicle("pzkDashPhoenix80","PZKA_Vehicles_Phoehix80_Base",{"pzka_2SeatsF","pzka_Phoenix80_variable"})
PZKA.ApplyTemplateToVehicle("pzkDashPhoenix75","PZKA_Vehicles_Phoehix75_Base",{"pzka_2SeatsF","pzka_Phoenix75"})
PZKA.ApplyTemplateToVehicle("pzkDashPhoenix75JP","PZKA_Vehicles_Phoehix75_Base_nr",{"pzka_2SeatsF","pzka_Phoenix75_nr"})

-- SUV

PZKA.ApplyTemplateToVehicle("pzkSuvCustom","VVA_Vehicles_SUV_nr",{"pzka_4SeatsR","VVA_SUV_nr"})


-- SUV Pickup

PZKA.ApplyTemplateToVehicle("pzkPickupFranklin","PZKA_Vehicles_Raider",{"pzka_2SeatsF","PZKA_Raider"})
--PZKA.ApplyTemplateToVehicle("pzkPickupFranklinRanger","PZKA_Vehicles_SUV_P_nr",{"pzka_2SeatsF","PZKA_SUV_P_nr","pzka_t_lighbar","PZKA_SUV_Lightbar"})
--PZKA.CopyTemplateToVehicle("pzkPickupFranklinFire","pzkPickupFranklinRanger")

-- VVans

PZKA.ApplyTemplateToVehicle("pzkVanMcCoy","VVA_Vehicles_VanCargo_nr",{"pzka_2SeatsF","VVA_Van_nr"})

PZKA.ApplyTemplateToVehicle("pzkVanMultivan","VVA_Vehicles_VVan_Multu",{"pzka_4SeatsR","PZKA_VVan_Multi","VVA_Van_4Seats"})

PZKA.ApplyTemplateToVehicle("pzkVanPolice","VVA_Vehicles_VVan_Police",{"pzka_4SeatsR","PZKA_VVan_Multi_nr","VVA_Van_4Seats","pzka_sle_lighbar","PZKA_Van_Lightbar","PZKA_Van_InteriorBars"})


---- Camper

PZKA.ApplyTemplateToVehicle("pzkVanCamper","PZKA_Vehicles_Van_Camper_a",{"pzka_2SeatsF","PZKA_Van_Camper"})

---- Brig

PZKA.ApplyTemplateToVehicle("pzkVanBrig","PZKA_Vehicles_Van_Brig_a",{"pzka_4SeatsR","PZKA_Van_Brig","PZKA_Van_Brig_RSeats"})

---- CVans

PZKA.ApplyTemplateToVehicle("pzkCVanCargo","VVA_Vehicles_CVan_Cargo",{"pzka_2SeatsF","PZKA_CVan_Cargo_Blind","PZKA_CVan_Var"})
PZKA.ApplyTemplateToVehicle("pzkCVan","VVA_Vehicles_CVan_Cargo",{"pzka_2SeatsF","PZKA_CVan_Cargo","PZKA_CVan_Var"})
PZKA.ApplyTemplateToVehicle("pzkCVanMultivan","VVA_Vehicles_CVan_Multi",{"pzka_4SeatsR","PZKA_CVan_Multi","PZKA_CVan_Var","VVA_Van_4Seats"})
PZKA.ApplyTemplateToVehicle("pzkCVan6Seats","VVA_Vehicles_CVan_Seats",{"pzka_6Seats","PZKA_CVan_Seats","PZKA_CVan_Var","VVA_Van_AllSeats"})

PZKA.ApplyTemplateToVehicle("pzkCVanCargo3","VVA_Vehicles_CVan_Cargo",{"pzka_2SeatsF","PZKA_CVan_Cargo_Blind","PZKA_CVan_3"})
PZKA.ApplyTemplateToVehicle("pzkCVan3","VVA_Vehicles_CVan_Cargo",{"pzka_2SeatsF","PZKA_CVan_Cargo","PZKA_CVan_3"})
PZKA.ApplyTemplateToVehicle("pzkCVanMultivan3","VVA_Vehicles_CVan_Multi",{"pzka_4SeatsR","PZKA_CVan_Multi","PZKA_CVan_3","VVA_Van_4Seats"})
PZKA.ApplyTemplateToVehicle("pzkCVan6Seats3","VVA_Vehicles_CVan_Seats",{"pzka_6Seats","PZKA_CVan_Seats","PZKA_CVan_3","VVA_Van_AllSeats"})

---- DVans

PZKA.ApplyTemplateToVehicle("pzkDVanCargo","VVA_Vehicles_DVan_Cargo",{"pzka_2SeatsF","PZKA_DVan_Cargo_Blind","PZKA_DVan_1"})
PZKA.ApplyTemplateToVehicle("pzkDVan","VVA_Vehicles_DVan_Cargo",{"pzka_2SeatsF","PZKA_DVan_Cargo","PZKA_DVan_1"})
PZKA.ApplyTemplateToVehicle("pzkDVanSpiffo","VVA_Vehicles_DVan_Cargo_nr",{"pzka_2SeatsF","PZKA_DVan_Cargo_nr","PZKA_DVan_1_nr"})
PZKA.ApplyTemplateToVehicle("pzkDVanMultivan","VVA_Vehicles_DVan_Multi",{"pzka_4SeatsR","PZKA_DVan_Multi","PZKA_DVan_1","VVA_Van_4Seats"})
PZKA.ApplyTemplateToVehicle("pzkDVan6Seats","VVA_Vehicles_DVan_Seats",{"pzka_6Seats","PZKA_DVan_Seats","PZKA_DVan_1","VVA_Van_AllSeats"})

PZKA.ApplyTemplateToVehicle("pzkDVanCargo2","VVA_Vehicles_DVan_Cargo",{"pzka_2SeatsF","PZKA_DVan_Cargo_Blind","PZKA_DVan_2"})
PZKA.ApplyTemplateToVehicle("pzkDVan2","VVA_Vehicles_DVan_Cargo",{"pzka_2SeatsF","PZKA_DVan_Cargo","PZKA_DVan_2"})
PZKA.ApplyTemplateToVehicle("pzkDVan2Spiffo","VVA_Vehicles_DVan_Cargo_nr",{"pzka_2SeatsF","PZKA_DVan_Cargo_nr","PZKA_DVan_2_nr"})
PZKA.ApplyTemplateToVehicle("pzkDVanMultivan2","VVA_Vehicles_DVan_Multi",{"pzka_4SeatsR","PZKA_DVan_Multi","PZKA_DVan_2","VVA_Van_4Seats"})
PZKA.ApplyTemplateToVehicle("pzkDVan6Seats2","VVA_Vehicles_DVan_Seats",{"pzka_6Seats","PZKA_DVan_Seats","PZKA_DVan_2","VVA_Van_AllSeats"})

PZKA.ApplyTemplateToVehicle("pzkDVanCargo3","VVA_Vehicles_DVan_Cargo",{"pzka_2SeatsF","PZKA_DVan_Cargo_Blind","PZKA_DVan_3"})
PZKA.ApplyTemplateToVehicle("pzkDVan3","VVA_Vehicles_DVan_Cargo",{"pzka_2SeatsF","PZKA_DVan_Cargo","PZKA_DVan_3"})
PZKA.ApplyTemplateToVehicle("pzkDVan3Spiffo","VVA_Vehicles_DVan_Cargo_nr",{"pzka_2SeatsF","PZKA_DVan_Cargo_nr","PZKA_DVan_3_nr"})
PZKA.ApplyTemplateToVehicle("pzkDVanMultivan3","VVA_Vehicles_DVan_Multi",{"pzka_4SeatsR","PZKA_DVan_Multi","PZKA_DVan_3","VVA_Van_4Seats"})
PZKA.ApplyTemplateToVehicle("pzkDVan6Seats3","VVA_Vehicles_DVan_Seats",{"pzka_6Seats","PZKA_DVan_Seats","PZKA_DVan_3","VVA_Van_AllSeats"})

---- FVans

PZKA.ApplyTemplateToVehicle("pzkFVanCargo","VVA_Vehicles_FVan_Cargo",{"pzka_2SeatsF","PZKA_FVan_Cargo_Blind","PZKA_FVan_Var"})
PZKA.ApplyTemplateToVehicle("pzkFVan","VVA_Vehicles_FVan_Cargo",{"pzka_2SeatsF","PZKA_FVan_Cargo","PZKA_FVan_Var"})
PZKA.ApplyTemplateToVehicle("pzkFVanSpiffo","VVA_Vehicles_FVan_Cargo_nr",{"pzka_2SeatsF","PZKA_FVan_Cargo_nr","PZKA_FVan_Var_nr"})
PZKA.ApplyTemplateToVehicle("pzkFVanMultivan","VVA_Vehicles_FVan_Multi",{"pzka_4SeatsR","PZKA_FVan_Multi","PZKA_FVan_Var","VVA_Van_4Seats"})
PZKA.ApplyTemplateToVehicle("pzkFVan6Seats","VVA_Vehicles_FVan_Seats",{"pzka_6Seats","PZKA_FVan_Seats","PZKA_FVan_Var","VVA_Van_AllSeats"})

---- VanBox

PZKA.ApplyTemplateToVehicle("pzkVanBoxAmbulance","PZKA_Vehicles_VanBox_nr",{"pzka_2SeatsF","PZKA_VanBox_nr","pzka_t_lighbar","PZKA_VanBox_Lightbar"})
PZKA.CopyTemplateToVehicle("pzkVanBoxFiretruck","pzkVanBoxAmbulance")
PZKA.CopyTemplateToVehicle("pzkVanBoxSwat","pzkVanBoxAmbulance")

PZKA.ApplyTemplateToVehicle("pzkVanBox","PZKA_Vehicles_VanBox_Shutter",{"pzka_2SeatsF","PZKA_VanBox_Shutter"})

-- Sport Cabrio

PZKA.ApplyTemplateToVehicle("pzkChevalierCosetteCabrio","PZKA_Vehicles_SportCabrio",{"pzka_2SeatsF","PZKA_CosetteCabrio"})

-- Lady

PZKA.ApplyTemplateToVehicle("pzkMastersonLady","PZKA_Vehicles_Lady",{"pzka_2SeatsF","PZKA_Lady"})

-- LadyZ


-- Laser

PZKA.ApplyTemplateToVehicle("pzkChevalierLaserModern","PZKA_Vehicles_Laser_2D",{"pzka_4SeatsR","PZKA_Laser","PZKA_LaserFill"})
PZKA.ApplyTemplateToVehicle("pzkChevalierLaserCUCV","PZKA_Vehicles_Laser_2D_nr",{"pzka_4SeatsR","PZKA_Laser_nr","PZKA_LaserFill_nr"})
PZKA.CopyTemplateToVehicle("pzkChevalierLaserFire","pzkChevalierLaserCUCV",{"pzka_t_lighbar","PZKA_Laser_Lightbar"})
PZKA.CopyTemplateToVehicle("pzkChevalierLaserRanger","pzkChevalierLaserFire")
PZKA.CopyTemplateToVehicle("pzkChevalierLaserLSU","pzkChevalierLaserFire")
PZKA.CopyTemplateToVehicle("pzkChevalierLaserMall","pzkChevalierLaserLSU")
PZKA.CopyTemplateToVehicle("pzkChevalierLaserPolice","pzkChevalierLaserCUCV",{"pzka_sle_lighbar","PZKA_Laser_Lightbar"})

PZKA.ApplyTemplateToVehicle("pzkChevalierLaserOffroader","PZKA_Vehicles_Laser_5D",{"pzka_4SeatsR","PZKA_Laser5D","PZKA_LaserFill"})

---- Galloper

PZKA.ApplyTemplateToVehicle("pzkFranklinGalloper","PZKA_Vehicles_Laser_2D",{"pzka_4SeatsR","PZKA_Laser","PZKA_GalloperFill"})
PZKA.ApplyTemplateToVehicle("pzkFranklinGalloperCUCV","PZKA_Vehicles_Laser_2D_nr",{"pzka_4SeatsR","PZKA_Laser_nr","PZKA_GalloperFill_nr"})
PZKA.CopyTemplateToVehicle("pzkFranklinGalloperFire","pzkFranklinGalloperCUCV",{"pzka_t_lighbar","PZKA_Laser_Lightbar"})
PZKA.CopyTemplateToVehicle("pzkFranklinGalloperRanger","pzkFranklinGalloperFire")
PZKA.CopyTemplateToVehicle("pzkFranklinGalloperLSU","pzkFranklinGalloperFire")
PZKA.CopyTemplateToVehicle("pzkFranklinGalloperMall","pzkFranklinGalloperFire")
PZKA.CopyTemplateToVehicle("pzkFranklinGalloperPolice","pzkFranklinGalloperCUCV",{"pzka_sle_lighbar","PZKA_Laser_Lightbar"})

---- Intruder

PZKA.ApplyTemplateToVehicle("pzkDashIntruder150short","PZKA_Vehicles_Laser_2D",{"pzka_4SeatsR","PZKA_Laser","PZKA_IntruderFill"})

-- Rookie

PZKA.ApplyTemplateToVehicle("pzkChevalierRookie","PZKA_Vehicles_Rookie",{"pzka_4SeatsR","PZKA_Rookie"})

-- Marocca

PZKA.ApplyTemplateToVehicle("pzkChevalierMaroca","PZKA_Vehicles_Marocca_a",{"pzka_2SeatsF","PZKA_Marocca"})

---- Phoenix

PZKA.ApplyTemplateToVehicle("pzkDashPhoenix","PZKA_Vehicles_Phoenix_a",{"pzka_2SeatsF","PZKA_Phoenix"})
PZKA.ApplyTemplateToVehicle("pzkDashPhoenixBandit","PZKA_Vehicles_Phoenix_nr_a",{"pzka_2SeatsF","PZKA_Phoenix_nr"})

-- Offroad

PZKA.ApplyTemplateToVehicle("pzkDashRancherCustom","VVA_Vehicles_OffRoad_nr",{"pzka_2SeatsF","VVA_OffRoad_nr"})
PZKA.CopyTemplateToVehicle("pzkDashRancherRanger","pzkDashRancherCustom",{"pzka_t_lighbar","PZKA_Offroad_Lightbar"})

---- Cabrio
if VVE then
    PZKA.ApplyTemplateToVehicle("pzkDashRancherCabrio","PZKA_VVE_OffroadC",{"pzka_2SeatsF","VVA_VVE_OffRoadC_nr"})
else
    PZKA.ApplyTemplateToVehicle("pzkDashRancherCabrio","PZKA_Vehicles_OffroadC_a",{"pzka_2SeatsF","PZKA_OffRoadC"})
end

-- Lang4000Cabrio

PZKA.ApplyTemplateToVehicle("pzkMerciaLang4000Cabrio","PZKA_Vehicles_Lang4000C",{"pzka_2SeatsF","PZKA_Lang4000C"})

-- StepVan

PZKA.ApplyTemplateToVehicle("pzkStepVanMilk","VVA_Vehicles_StepVan_nr",{"pzka_2SeatsF","VVA_StepVan_nr"})
PZKA.CopyTemplateToVehicle("pzkStepVanUPZ","pzkStepVanMilk")
PZKA.CopyTemplateToVehicle("pzkStepVanFedLog","pzkStepVanMilk")
PZKA.CopyTemplateToVehicle("pzkStepVanSwat","pzkStepVanMilk",{"pzka_sle_lighbar","PZKA_StepVan_SWAT"})


---- Food

PZKA.ApplyTemplateToVehicle("PZKA_StepVanFood","PZKA_Vehicle_StepVan_Food_nr",{"pzka_2SeatsF","VVA_StepVan_Food_nr"})

PZKA.CopyTemplateToVehicle("pzkStepVanPizza","PZKA_StepVanFood",{"PZKA_StepVan_Pizza"})
PZKA.CopyTemplateToVehicle("pzkStepVanCoffe","pzkStepVanPizza")

PZKA.CopyTemplateToVehicle("pzkStepVanTacoVan","PZKA_StepVanFood",{"pzka_t_taxi","PZKA_StepVan_Taco"})
PZKA.CopyTemplateToVehicle("pzkStepVanHotDog","PZKA_StepVanFood",{"pzka_t_taxi","PZKA_StepVan_Hotdog"})
PZKA.CopyTemplateToVehicle("pzkStepVanIceCream","PZKA_StepVanFood",{"pzka_t_taxi","PZKA_StepVan_Icecream"})
PZKA.CopyTemplateToVehicle("pzkStepVanPierogi","PZKA_StepVanFood",{"pzka_t_taxi","PZKA_StepVan_Pierogi"})

-- Cheyene

PZKA.ApplyTemplateToVehicle("pzkDashCheyene","PZKA_Vehicles_Cheyene",{"pzka_4SeatsR","PZKA_Cheyene"})
PZKA.ApplyTemplateToVehicle("PZKA_DashCheyene_nr","PZKA_Vehicles_Cheyene_nr",{"pzka_4SeatsR","PZKA_Cheyene_nr"})
PZKA.CopyTemplateToVehicle("PZKA_DashCheyene_lightbar","PZKA_DashCheyene_nr",{"PZKA_Cheyene_Lightbar"})
PZKA.CopyTemplateToVehicle("pzkDashCheyeneBFRF","PZKA_DashCheyene_lightbar",{"pzka_t_lighbar"})
PZKA.CopyTemplateToVehicle("pzkDashCheyeneAirportSecurity","PZKA_DashCheyene_lightbar",{"pzka_t_lighbar"})
PZKA.CopyTemplateToVehicle("pzkDashCheyeneBFRFSec","PZKA_DashCheyene_lightbar",{"pzka_t_lighbar"})
PZKA.CopyTemplateToVehicle("pzkDashCheyeneMeadeSheriff","PZKA_DashCheyene_lightbar",{"pzka_sle_lighbar"})
PZKA.CopyTemplateToVehicle("pzkDashCheyenePoliceLouisvillePD","pzkDashCheyeneMeadeSheriff")
PZKA.CopyTemplateToVehicle("pzkDashCheyeneWestPoint","pzkDashCheyeneMeadeSheriff")

---- Navajo

PZKA.ApplyTemplateToVehicle("pzkDashNavajoP","PZKA_Vehicles_NavajoP",{"pzka_4SeatsR","PZKA_NavajoP"})
PZKA.ApplyTemplateToVehicle("pzkDashNavajoW","PZKA_Vehicles_NavajoW",{"pzka_4SeatsR","PZKA_NavajoW"})


--W35

PZKA.ApplyTemplateToVehicle("pzkTruckDashW35BedMil","PZKA_Vehicles_W35_nr",{"pzka_2SeatsF","PZKA_W35_nr","PZKA_W35_TarpFrame_nr"})

---- Cabrio

PZKA.ApplyTemplateToVehicle("pzkTruckDashW35CabrioMil","PZKA_Vehicles_W35Cabrio_nr",{"pzka_2SeatsF","PZKA_W35Cabrio_nr","PZKA_DoorsFront75"})

---- Tanker

PZKA.ApplyTemplateToVehicle("pzkTruckDashW35FuelMil","PZKA_Vehicles_W35Tanker_nr",{"pzka_2SeatsF","PZKA_W35Tanker_nr"})
PZKA.CopyTemplateToVehicle("pzkTruckDashW35WaterMil","pzkTruckDashW35FuelMil")

--- OLD FRAMEWORK CODE





PZKA.CreateAnimationProfile("pzkContinentalBayer3304D","PZKA_Vehicles_Bayer_a","PZKA_Bayer4D_Light","PZKA_Bayer4D_animatedDoors",{"FLW","FRW","RLW","RRW"}, "VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer3302D","PZKA_Vehicles_Bayer_2D_a","PZKA_Bayer4D_Light","PZKA_Bayer2D_animatedDoors",{"FLW","FRW","RLOW","RROW"}, "VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer330Sport","PZKA_Vehicles_Bayer_Sport_a","PZKA_Bayer4D_Light","PZKA_BayerSport_animatedDoors",{"FLW","FRW","RLOW","RROW"}, "VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer330Cabrio","PZKA_Vehicles_Bayer_Cabrio_a","PZKA_Bayer4D_Light","PZKA_BayerCabrio_animatedDoors",{"FL","FR"}, "VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})










PZKA.CreateAnimationProfile("pzkCarMuscle", "PZKA_Vehicles_Muscle_a","PZKA_Muscle_lights","PZKA_Muscle_animatedDoors",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkCarMuscleCabrio", "PZKA_Vehicles_MuscleCabrio_a","PZKA_Muscle_lights","PZKA_MuscleCabrio_animatedDoors",{"FL","FR"},"VVA_TrunkDoorVersion")








PZKA.CreateAnimationProfile("pzkChevalierCerise93Wagon","PZKA_Vehicles_Wagon_Cerise93_a","PZKA_Wagon_Cerise93_Lights","PZKA_Wagon_Cerise93_animatedDoors",{"FLW","FRW","RLW","RRW"}, "VVA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkChevalierCerise93WagonFire","pzkChevalierCerise93Wagon","PZKA_Vehicles_Wagon_Cerise93_nr_a","PZKA_Wagon_Cerise93_Lights","PZKA_Wagon_Cerise93_animatedDoors_lightbar")
PZKA.CloneAnimationProfile("pzkChevalierCerise93WagonLSU","pzkChevalierCerise93WagonFire")
PZKA.CloneAnimationProfile("pzkChevalierCerise93WagonMall","pzkChevalierCerise93WagonFire")





PZKA.CreateAnimationProfile("pzkDashRoyal","PZKA_Vehicles_Royal_a","PZKA_Royal_Lights_Royal","PZKA_DashRoyal_sedan_Royal",{"FLW","FRW"}, "VVA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkDashRoyalGrand","pzkDashRoyal")
PZKA.CloneAnimationProfile("pzkDashTornado","pzkDashRoyal","PZKA_Vehicles_Tornado_a","PZKA_Royal_Lights_Tornado","PZKA_DashRoyal_sedan_Tornado")
PZKA.CloneAnimationProfile("pzkChevalierDownhill","pzkDashRoyal","PZKA_Vehicles_Downhill_a","PZKA_Royal_Lights_Downhill","PZKA_DashRoyal_sedan_Downhill")
PZKA.CreateAnimationProfile("pzkChevalierRoadrunner","PZKA_Vehicles_Roadrunner_a","PZKA_Royal_Lights_Roadrunner","PZKA_DashRoyal_roadrunner",{"FLW","FRW"}, "PZKA_OpenBedVersion")

PZKA.CreateAnimationProfile("pzkChevalierCerise93","PZKA_Vehicles_Cerise93_Sedan_a","PZKA_Cerise93_Sedan_Lights","PZKA_Cerise93_sedan_C93",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkChevalierCerise93Fire","pzkChevalierCerise93","PZKA_Vehicles_Cerise93_Sedan_nr_a",false,"PZKA_Cerise93_sedan_C93_police")
PZKA.CloneAnimationProfile("pzkChevalierCerise93LSU","pzkChevalierCerise93Fire")
PZKA.CloneAnimationProfile("pzkChevalierCerise93Mall","pzkChevalierCerise93Fire")
if SLE then
    PZKA.CloneAnimationProfile("pzkChevalierCerise93Police","pzkChevalierCerise93","PZKA_Vehicles_Cerise93_Sedan_nr_a",false,"PZKA_Cerise93_sedan_C93_nr")
else
    PZKA.CloneAnimationProfile("pzkChevalierCerise93Police","pzkChevalierCerise93Fire")
end
if SLE then
    PZKA.CloneAnimationProfile("pzkChevalierCerise93Taxi","pzkChevalierCerise93Police")
else
    PZKA.CloneAnimationProfile("pzkChevalierCerise93Taxi","pzkChevalierCerise93","PZKA_Vehicles_Cerise93_Sedan_nr_a",false,"PZKA_Cerise93_sedan_C93_taxi")
end

PZKA.CloneAnimationProfile("pzkFranklinTriumph","pzkChevalierCerise93","PZKA_Vehicles_Triumph_Sedan_a","PZKA_Triumph_Sedan_Lights","PZKA_Cerise93_sedan_Triumph")
PZKA.CloneAnimationProfile("pzkFranklinTriumphLSU","pzkFranklinTriumph","PZKA_Vehicles_Triumph_Sedan_nr_a",false,"PZKA_Cerise93_sedan_Triumph_police")
PZKA.CloneAnimationProfile("pzkFranklinTriumphMall","pzkFranklinTriumphLSU")
if SLE then
    PZKA.CloneAnimationProfile("pzkFranklinTriumphPolice","pzkFranklinTriumph","PZKA_Vehicles_Triumph_Sedan_nr_a",false,"PZKA_Cerise93_sedan_Triumph_nr")
else
    PZKA.CloneAnimationProfile("pzkFranklinTriumphPolice","pzkFranklinTriumphLSU")
end
if SLE then
    PZKA.CloneAnimationProfile("pzkFranklinTriumphTaxi","pzkFranklinTriumphPoliceLouisvillePD")
else    
    PZKA.CloneAnimationProfile("pzkFranklinTriumphTaxi","pzkFranklinTriumph","PZKA_Vehicles_Triumph_Sedan_nr_a",false,"PZKA_Cerise93_sedan_Triumph_taxi")
end

PZKA.CloneAnimationProfile("pzkFranklinTriumphWagon","pzkFranklinTriumph","PZKA_Vehicles_Triumph_Wagon_a","PZKA_Triumph_Wagon_Lights","PZKA_Cerise93_wagon_Triumph")
PZKA.CloneAnimationProfile("pzkFranklinTriumphWagonLSU","pzkFranklinTriumphWagon","PZKA_Vehicles_Triumph_Wagon_nr_a",false,"PZKA_Cerise93_wagon_Triumph_police")
PZKA.CloneAnimationProfile("pzkFranklinTriumphWagonMall","pzkFranklinTriumphWagonLSU")

PZKA.CreateAnimationProfile("pzkAutowagenBunny","PZKA_Vehicles_Bunny_a","PZKA_Bunny_Light","PZKA_Bunny",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkContinentalBayer534","PZKA_Vehicles_Bayer534_a","PZKA_Bayer534_Light","PZKA_Bayer534",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer732","PZKA_Vehicles_Bayer732_a","PZKA_Bayer732_Light","PZKA_Bayer732",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkPeterbuiltSleeper","PZKA_Vehicles_PeterbuiltS_a","pzka_Peterbuilt_Sleeper_Light","PZKA_PeterbuiltS",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkPeterbuiltSleeperBandit","pzkPeterbuiltSleeper","PZKA_Vehicles_PeterbuiltS_nr_a",false,"PZKA_PeterbuiltS_nr")
PZKA.CloneAnimationProfile("pzkPeterbuiltSleeperOptimus","pzkPeterbuiltSleeperBandit")
PZKA.CloneAnimationProfile("pzkPeterbuiltSleeperPop","pzkPeterbuiltSleeperBandit")

PZKA.CreateAnimationProfile("pzkPeterbuilt","PZKA_Vehicles_Peterbuilt_a","pzka_Peterbuilt_Light","PZKA_Peterbuilt",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkPeterbuiltFossoil","pzkPeterbuilt","PZKA_Vehicles_Peterbuilt_nr_a",false,"PZKA_Peterbuilt_nr")
PZKA.CloneAnimationProfile("pzkPeterbuiltPop","pzkPeterbuiltFossoil")


PZKA.CreateAnimationProfile("pzkContinentalBug","PZKA_Vehicles_Bug_a","pzka_Bug_Light","PZKA_Bug",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkContinentalBugHerbie","pzkContinentalBug","PZKA_Vehicles_Bug_nr_a",false,"PZKA_Bug_nr")
PZKA.CloneAnimationProfile("pzkContinentalBugRedT","pzkContinentalBugHerbie")

PZKA.CreateAnimationProfile("pzkMastersonLadyZ","PZKA_Vehicles_LadyZ_a","pzka_LadyZ_Light","PZKA_LadyZ",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashNoble","PZKA_Vehicles_DashNoble_a","pzka_DashNoble_Light","PZKA_DashNoble",{"FLW","FRW"},"VVA_TrunkDoorVersion")



PZKA.CreateAnimationProfile("pzkContinentalCruiser","PZKA_Vehicles_Cruiser_a","PZKA_Cruiser_Light","PZKA_Cruiser",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkHMMV","PZKA_Vehicles_HMMV_1_a","PZKA_HMMV_Light_1","PZKA_HMMV_1",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkHMMV2","PZKA_Vehicles_HMMV_2_a","PZKA_HMMV_Light_2","PZKA_HMMV_2",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkHMMV2Mil","PZKA_Vehicles_HMMV_2_nr_a","PZKA_HMMV_Light_2","PZKA_HMMV_2_nr",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkHMMV3","PZKA_Vehicles_HMMV_3_a","PZKA_HMMV_Light_2","PZKA_HMMV_3",{"FLW","FRW","RLW","RRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkHMMV3Mil","PZKA_Vehicles_HMMV_3_nr_a","PZKA_HMMV_Light_2","PZKA_HMMV_3_nr",{"FLW","FRW","RLW","RRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkHMMV4Mil","PZKA_Vehicles_HMMV_4_nr_a","PZKA_HMMV_Light_2","PZKA_HMMV_4_nr",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalHammermanKnight","PZKA_Vehicles_Hammerman_a","PZKA_Hammerman_Light","PZKA_Hammerman",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalNord","PZKA_Vehicles_Nord_a","PZKA_Nord_Light_S","PZKA_Nord_S",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalNordWagon","PZKA_Vehicles_NordWagon_a","PZKA_Nord_Light_W","PZKA_Nord_W",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalPfeiffer901","PZKA_Vehicles_Pfeiffer_911_a","pzka_Pfeiffer_Light","PZKA_Pfeiffer_P911",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalPfeiffer901c","PZKA_Vehicles_Pfeiffer_911c_a","pzka_Pfeiffer_Light","PZKA_Pfeiffer_P911c",{"FL","FR"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalPfeiffer930","PZKA_Vehicles_Pfeiffer_930_a","pzka_Pfeiffer_Light","PZKA_Pfeiffer_P930",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalPfeiffer930c","PZKA_Vehicles_Pfeiffer_930c_a","pzka_Pfeiffer_Light","PZKA_Pfeiffer_P930c",{"FL","FR"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalPyrenean310","PZKA_Vehicles_Pyre_a","PZKA_Pyre_Light","PZKA_Pyre",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalSpirit","PZKA_Vehicles_Spirit_a","pzka_Spirit_Light","PZKA_Spirit",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalTRK","PZKA_Vehicles_TRK_nr_a","pzka_TRK_Light","PZKA_TRK_nr",{"FLW","FRW"},"VVA_RearDoorVersionMed")

PZKA.CreateAnimationProfile("pzkMastersonIberiaPickup","PZKA_Vehicles_IberiaP_a","PZKA_Iberia_Light","PZKA_IberiaP",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkMastersonIberiaVan1","PZKA_Vehicles_IberiaW_a","PZKA_Iberia_Light","PZKA_IberiaW",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkMastersonIberiaVan2","PZKA_Vehicles_IberiaW2_a","PZKA_Iberia_Light","PZKA_IberiaW2",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashChampion","PZKA_Vehicles_Champion_a","PZKA_Champion_Light","PZKA_Champion",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashDeluxo","PZKA_Vehicles_Deluxo_a","PZKA_Deluxo_Light","PZKA_Deluxo",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashElite2D","PZKA_Vehicles_Elite2D_a","PZKA_Elite2D_Light","PZKA_Elite2D",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkDashGTA","PZKA_Vehicles_GTA_a","PZKA_GTA_Light","PZKA_GTA",{"FLW","FRW"},"VVA_TrunkDoorVersion")


PZKA.CreateAnimationProfile("pzkDashOhio","PZKA_Vehicles_Ohio_a","PZKA_Ohio_Light","PZKA_Ohio",{"FL","FR"},"VVA_TrunkDoorVersion",{"FL","FR","RL"})



PZKA.CreateAnimationProfile("pzkDashPiranha","PZKA_Vehicles_Piranha_a","PZKA_Piranha_Light","PZKA_Piranha",{"FLW","FRW"},"VVA_TrunkDoorVersion")


PZKA.CreateAnimationProfile("pzkDashRunner","PZKA_Vehicles_Runner_a","PZKA_Runner_Light","PZKA_Runner",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkDashRunnerGeneral","PZKA_Vehicles_Runner_nr_a","PZKA_Runner_Light","PZKA_Runner_general",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkFireTruckFlatSemi","PZKA_Vehicles_FireTruck_Semi_nr_a","pzka_FireTruck_Light_S","PZKA_FireTruck_S_nr",{"FLW","FRW","RLW","RRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkFireTruckFlatLadder","PZKA_Vehicles_FireTruck_Ladder_nr_a","pzka_FireTruck_Light_L","PZKA_FireTruck_L_nr",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFireTruckFlatPumper","PZKA_Vehicles_FireTruck_nr_Pump_a","pzka_FireTruck_Light_L","PZKA_FireTruck_L_nr",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashHEMTT6x6semi","PZKA_Vehicles_HEMTT_nr_a","pzka_HEMTT_Light","PZKA_HEMTT_nr",{"FLW","FRW"},"PZKA_OpenBedVersion")

PZKA.CreateAnimationProfile("pzkFranklinIslander","PZKA_Vehicles_Islander_a","PZKA_Islander_Light","PZKA_Islander",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkFreightlinerFlat","PZKA_Vehicles_Freight_S1_a","pzka_Freight_S_Light","PZKA_Freight",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkFreightlinerFlat2","PZKA_Vehicles_Freight_S2_a","pzka_Freight_S_Light","PZKA_Freight",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkFreightlinerTerminatorTow","PZKA_Vehicles_Freight_T_nr_a","pzka_Freight_T_Light","PZKA_Freight_nr",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkFreightlinerFlatOptimus","PZKA_Vehicles_Freight_S1_nr_a","pzka_Freight_S_Light","PZKA_Freight_nr",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkFreightlinerFlatSpiffo","pzkFreightlinerFlatOptimus")

PZKA.CreateAnimationProfile("pzkFranklinPony","PZKA_Vehicles_Pony_a","PZKA_Pony_Light","PZKA_Pony",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkFranklinStallion","PZKA_Vehicles_Stallion_a","PZKA_Stallion_Light","PZKA_Stallion1S",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})
PZKA.CreateAnimationProfile("pzkFranklinStallion2","PZKA_Vehicles_Stallion2_a","PZKA_Stallion_Light2","PZKA_Stallion2",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})
PZKA.CreateAnimationProfile("pzkFranklinStallionSport","PZKA_Vehicles_Stallion2_a","PZKA_Stallion_Light2","PZKA_Stallion2Sport",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})
if SLE then
    PZKA.CreateAnimationProfile("pzkFranklinStallionPolice","PZKA_Vehicles_Stallion2_nr_a","PZKA_Stallion_Light2","PZKA_Stallion2_nr",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})
else
    PZKA.CreateAnimationProfile("pzkFranklinStallionPolice","PZKA_Vehicles_Stallion2_nr_a","PZKA_Stallion_Light2","PZKA_Stallion2_lightbar",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})
end

PZKA.CreateAnimationProfile("pzkFranklinStallionKing","PZKA_Vehicles_StallionKing124_a","PZKA_StallionKing_Light1","PZKA_StallionKing1",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKing2","PZKA_Vehicles_StallionKing124_a","PZKA_StallionKing_Light1","PZKA_StallionKing2",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKing3","PZKA_Vehicles_StallionKing3_a","PZKA_StallionKing_Light1","PZKA_StallionKing3",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKing4","PZKA_Vehicles_StallionKing124_a","PZKA_StallionKing_Light1","PZKA_StallionKing4",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKing5","PZKA_Vehicles_StallionKing5_a","PZKA_StallionKing_Light1","PZKA_StallionKing5",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkFranklinStallionKingPeterGleen","PZKA_Vehicles_StallionKing124_nr_a","PZKA_StallionKing_Light1","PZKA_StallionKing1_nr",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingJohnWick","PZKA_Vehicles_StallionKing124_nr_a","PZKA_StallionKing_Light1","PZKA_StallionKing1_nr",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingSeanBoswell","PZKA_Vehicles_StallionKing124_nr_a","PZKA_StallionKing_Light1","PZKA_StallionKing2_nr",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingEleanor","PZKA_Vehicles_StallionKingE_a","PZKA_StallionKing_LightE","PZKA_StallionKing2_nr",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingFrankBullitt","PZKA_Vehicles_StallionKingB_a","PZKA_StallionKing_LightB","PZKA_StallionKing4_nr",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingKenMiles","PZKA_Vehicles_StallionKingM_a","PZKA_StallionKing_LightB","PZKA_StallionKing5_nr",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingTheKing","PZKA_Vehicles_StallionKingK_a","PZKA_StallionKing_LightK","PZKA_StallionKing2_nr",{"FLW","FRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkFranklinVan70","PZKA_Vehicles_FranklinV70_a","PZKA_FranklinV70_Light","PZKA_FranklinV70",{"FLW","FRW","ML","MR"},"VVA_RearDoorVersionMed",{"FL","FR","ML","MR","RL","RR"})

PZKA.CreateAnimationProfile("pzkMastersonCrown","PZKA_Vehicles_Crown_a","PZKA_Crown_Light","PZKA_Crown",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkMastersonExpander","PZKA_Vehicles_Expander_a","PZKA_Expander_Light","PZKA_Expander",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkMastersonHarmony","PZKA_Vehicles_Harmony_a","PZKA_Harmony_Light","PZKA_Harmony",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkMastersonHarmonyWagon","PZKA_Vehicles_HarmonyWagon_a","PZKA_Harmony_Light","PZKA_HarmonyW",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkMastersonInitial","PZKA_Vehicles_Initial_a","pzka_Initial_Light","PZKA_Initial",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})
PZKA.CreateAnimationProfile("pzkMastersonInitialFuji","PZKA_Vehicles_Initial_nr_a","pzka_Initial_Light","PZKA_Initial_nr",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkMastersonScout4D","PZKA_Vehicles_Scout_a","PZKA_Scout_Light","PZKA_Scout",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkMastersonSensation","PZKA_Vehicles_Sensation_a","PZKA_Sensation_Light","PZKA_Sensation",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkMastersonSunrise","PZKA_Vehicles_Sunrise_a","PZKA_Sunrise_Light","PZKA_Sunrise",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkMastersonXSR","PZKA_Vehicles_XSR_a","PZKA_XSR_Light","PZKA_XSR",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkMerciaLang1240","PZKA_Vehicles_Lang1240_a","PZKA_Lang1240_Light","PZKA_Lang1240_4D",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkMerciaLang12402D","PZKA_Vehicles_Lang1240_2D_a","PZKA_Lang1240_Light","PZKA_Lang1240_2D",{"FLW","FRW"},"VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkMerciaLangBerg","PZKA_Vehicles_Berg_a","PZKA_Berg_Light","PZKA_Berg",{"FLW","FRW","RLW","RRW"},"VVA_TrunkDoorVersion")


PZKA.CreateAnimationProfile("pzkMinivan2","PZKA_Vehicles_Minivan2_a","PZKA_Minivan2_Light","PZKA_Minivan2",{"FLW","FRW","RR"},"VVA_RearDoorVersionMed")
PZKA.CreateAnimationProfile("pzkMinivanC22","PZKA_Vehicles_MinivanC22_a","PZKA_MinivanC22_Light","PZKA_MinivanC22",{"FLW","FRW","RR"},"VVA_RearDoorVersionMed")
PZKA.CreateAnimationProfile("pzkMinivanChev","PZKA_Vehicles_MinivanChev_a","PZKA_MinivanChev_Light","PZKA_MinivanChev",{"FLW","FRW","RR"},"VVA_RearDoorVersionMed")
PZKA.CreateAnimationProfile("pzkMinivanConvoy","PZKA_Vehicles_MinivanChev_Convoy_a","PZKA_MinivanConvoy_Light","PZKA_MinivanConvoy",{"FLW","FRW","RR"},"VVA_RearDoorVersionMed")
PZKA.CreateAnimationProfile("pzkMinivanMPV","PZKA_Vehicles_MinivanMPV_a","PZKA_MinivanMPV_Light","PZKA_MinivanMPV",{"FLW","FRW","RR"},"VVA_RearDoorVersionSlow")
PZKA.CreateAnimationProfile("pzkMinivanPrev","PZKA_Vehicles_VanPrev_a","PZKA_VanPrev_Light","PZKA_VanPrev",{"FLW","FRW","RR"},"VVA_RearDoorVersionSlow")

PZKA.CreateAnimationProfile("pzkMinivanStellaris","PZKA_Vehicles_Stellaris_a","PZKA_Stellaris_Light","PZKA_Stellaris",{"FLW","FRW","RR"},"VVA_RearDoorVersionMed")
PZKA.CreateAnimationProfile("pzkMinivanStellarisMail","PZKA_Vehicles_Stellaris_cargo_nr_a","PZKA_Stellaris_Light","PZKA_StellarisCargo_nr",{"FLW","FRW"},"VVA_RearDoorVersionMed")
if SLE then
    PZKA.CreateAnimationProfile("pzkMinivanStellarisTaxi","PZKA_Vehicles_Stellaris_nr_a","PZKA_Stellaris_Light","PZKA_Stellaris_nr",{"FLW","FRW","RR"},"VVA_RearDoorVersionMed")    
else
    PZKA.CreateAnimationProfile("pzkMinivanStellarisTaxi","PZKA_Vehicles_Stellaris_nr_a","PZKA_Stellaris_Light","PZKA_Stellaris_taxi",{"FLW","FRW","RR"},"VVA_RearDoorVersionMed")    
end

PZKA.CreateAnimationProfile("pzkMinivanT3","PZKA_Vehicles_T3_a","PZKA_T3_Light","PZKA_T3",{"FLW","FRW","RR"},"VVA_RearDoorVersionMed")
PZKA.CreateAnimationProfile("pzkMinivanT3C","PZKA_Vehicles_T3C_a","PZKA_T3_Light","PZKA_T3",{"FLW","FRW","RR"},"VVA_RearDoorVersionMed")

PZKA.CreateAnimationProfile("pzkMinivanTask","PZKA_Vehicles_VanTask_a","PZKA_VanTask_Light","PZKA_VanTask",{"FLW","FRW","RR"},"VVA_RearDoorVersionMed")

PZKA.CreateAnimationProfile("pzkTransitBus","PZKA_Vehicles_TransitBus_a","PZKA_TransitBus_Light","PZKA_TransitBus",{"FR","RR"},"VVA_RearDoorVersionMed")

PZKA.CreateAnimationProfile("pzkTractor","PZKA_Vehicles_Tractor_1_nr_a","pzka_Tractor_Light_1","PZKA_Tractor1_nr",{"FL","FR"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkTractor2","PZKA_Vehicles_Tractor_2_nr_a","pzka_Tractor_Light_2","PZKA_Tractor2_nr",{"FL","FR"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkTractor3","PZKA_Vehicles_Tractor_3_nr_a","pzka_Tractor_Light_3","PZKA_Tractor3_nr",{"FL","FR"},"PZKA_OpenBedVersion")


--[[
PZKA.CreateAnimationProfile("CarNormal","PZKA_Vehicles_CarNormal_a","PZKA_CarNormal_animatedDoors", {"FLW","FRW","RLW","RRW"}, "VVA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("CarTaxi","CarNormal","PZKA_Vehicles_CarTaxi_a","PZKA_CarNormal_norandom_animatedDoors")
PZKA.CloneAnimationProfile("CarTaxi2","CarTaxi")
PZKA.CloneAnimationProfile("CarLightsNorandom","CarNormal","PZKA_Vehicles_CarLights_a","PZKA_CarNormal_norandom_animatedDoors")
PZKA.CloneAnimationProfile("CarLightsBulletinSheriff","CarLightsNorandom")
PZKA.CloneAnimationProfile("CarLightsKST","CarLightsNorandom")
PZKA.CloneAnimationProfile("CarLightsLouisvilleCounty","CarLightsNorandom")
PZKA.CloneAnimationProfile("CarLightsMuldraughPolice","CarLightsNorandom")
PZKA.CloneAnimationProfile("CarLightsRanger","CarLightsNorandom")
PZKA.CloneAnimationProfile("CarLightsPolice","CarLightsNorandom")

PZKA.CreateAnimationProfile("CarLuxury","PZKA_Vehicles_LuxuryCar_a","PZKA_LuxuryCar_animatedDoors", {"FLW","FRW"}, "VVA_TrunkDoorVersion", {"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("CarStationWagon","PZKA_Vehicles_CarStationWagon_a", "PZKA_CarStationWagon_animatedDoors", {"FLW","FRW","RLW","RRW"}, "VVA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("CarStationWagon2","CarStationWagon")

PZKA.CreateAnimationProfile("ModernCar","PZKA_Vehicles_ModernCar_a", "PZKA_ModernCar_animatedDoors", {"FLW","FRW","RLW","RRW"}, "VVA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("ModernCar02","ModernCar","PZKA_Vehicles_ModernCar02_a","PZKA_ModernCar02_animatedDoors")
PZKA.CloneAnimationProfile("ModernCarLightsCityLouisvillePD","ModernCar","PZKA_Vehicles_ModernCarLights_a","PZKA_ModernCar_norandom_animatedDoors")
PZKA.CloneAnimationProfile("ModernCarLightsMeadeSheriff","ModernCarLightsCityLouisvillePD")
PZKA.CloneAnimationProfile("ModernCarLightsWestPoint","ModernCarLightsCityLouisvillePD")

PZKA.CreateAnimationProfile("OffRoad","PZKA_Vehicles_OffRoad_a","PZKA_OffRoad_animatedDoors", {"FLW","FRW"}, "VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("PickUpTruck","PZKA_Vehicles_PickUpTruck_a","PZKA_PickUpTruck_animatedDoors", {"FLW","FRW"}, "PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("PickUpTruck_Camo","PickUpTruck","PZKA_Vehicles_PickUpTruck_NoRandom_a","PZKA_PickUpTruck_norandom_animatedDoors")
PZKA.CloneAnimationProfile("PickUpTruckJPLandscaping","PickUpTruck_Camo")
PZKA.CloneAnimationProfile("PickUpTruckMccoy","PickUpTruck_Camo")
PZKA.CloneAnimationProfile("PickUpTruckLightsAirport","PickUpTruck_Camo","PZKA_Vehicles_PickUpTruckLights_NoRandom_a")
PZKA.CloneAnimationProfile("PickUpTruckLightsAirportSecurity","PickUpTruckLightsAirport")
PZKA.CloneAnimationProfile("PickUpTruckLightsFire","PickUpTruckLightsAirport")
PZKA.CloneAnimationProfile("PickUpTruckLightsFossoil","PickUpTruckLightsAirport")
PZKA.CloneAnimationProfile("PickUpTruckLightsRanger","PickUpTruckLightsAirport")

PZKA.CreateAnimationProfile("PickUpVan","PZKA_Vehicles_PickUpVan_a","PZKA_PickUpVan_animatedDoors", {"FLW","FRW"}, "VVA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("PickUpVan_Camo","PickUpVan","PZKA_Vehicles_PickUpVan_NoRandom_a","PZKA_PickUpVan_norandom_animatedDoors")
PZKA.CloneAnimationProfile("PickUpVanBrickingIt","PickUpVan_Camo")
PZKA.CloneAnimationProfile("PickUpVanBuilder", "PickUpVan_Camo")
PZKA.CloneAnimationProfile("PickUpVanCallowayLandscaping", "PickUpVan_Camo")
PZKA.CloneAnimationProfile("PickUpVanHeltonMetalWorking", "PickUpVan_Camo")
PZKA.CloneAnimationProfile("PickUpVanKimbleKonstruction", "PickUpVan_Camo")
PZKA.CloneAnimationProfile("PickUpVanMarchRidgeConstruction", "PickUpVan_Camo")
PZKA.CloneAnimationProfile("PickUpVanMccoy", "PickUpVan_Camo")
PZKA.CloneAnimationProfile("PickUpVanMetalworker", "PickUpVan_Camo")
PZKA.CloneAnimationProfile("PickUpVanWeldingbyCamille", "PickUpVan_Camo")
PZKA.CloneAnimationProfile("PickUpVanYingsWood", "PickUpVan_Camo")
PZKA.CloneAnimationProfile("PickUpVanLightsCarpenter", "PickUpVan_Camo", "PZKA_Vehicles_PickUpVanLights_NoRandom_a")
PZKA.CloneAnimationProfile("PickUpVanLightsFire", "PickUpVanLightsCarpenter")
PZKA.CloneAnimationProfile("PickUpVanLightsFossoil", "PickUpVanLightsCarpenter")
PZKA.CloneAnimationProfile("PickUpVanLightsKentuckyLumber", "PickUpVanLightsCarpenter")
PZKA.CloneAnimationProfile("PickUpVanLightsLouisvilleCounty", "PickUpVanLightsCarpenter")
PZKA.CloneAnimationProfile("PickUpVanLightsPolice", "PickUpVanLightsCarpenter")
PZKA.CloneAnimationProfile("PickUpVanLightsRanger", "PickUpVanLightsCarpenter")
PZKA.CloneAnimationProfile("PickUpVanLightsStatePolice", "PickUpVanLightsCarpenter")

PZKA.CreateAnimationProfile("SmallCar","PZKA_Vehicles_SmallCar_a","PZKA_SmallCar_animatedDoors", {"FLW","FRW"}, "VVA_TrunkDoorVersion", {"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("SmallCar02","PZKA_Vehicles_SmallCar02_a","PZKA_SmallCar02_animatedDoors", {"FLW","FRW"}, "VVA_TrunkDoorVersion", {"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("SportsCar","PZKA_Vehicles_SportsCar_a","PZKA_SportsCar_animatedDoors", {"FLW","FRW"}, "VVA_TrunkDoorVersion", {})

PZKA.CreateAnimationProfile("StepVan","PZKA_Vehicle_StepVan_a","PZKA_StepVan_animatedDoors", {"FLW","FRW"}, "VVA_RearDoorVersionMed")
PZKA.CloneAnimationProfile("StepVan_Cereal", "StepVan","PZKA_Vehicle_StepVan_NoRandom_a","PZKA_StepVan_norandom_animatedDoors")
PZKA.CloneAnimationProfile("StepVan_Citr8", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_CompleteRepairShop", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_Genuine_Beer", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_Heralds", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_HuangsLaundry", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_Jorgensen", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_LouisvilleMotorShop", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_LouisvilleSWAT", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_MarineBites", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_Mechanic", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_Plonkies", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_RandisPlants", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_Scarlet", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_SouthEasternHosp", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_SouthEasternPaint", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_USL", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVan_Zippee", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVanAirportCatering", "StepVan_Cereal")
PZKA.CloneAnimationProfile("StepVanMail", "StepVan_Cereal")

PZKA.CreateAnimationProfile("SUV","PZKA_Vehicles_SUV_a", "PZKA_SUV_animatedDoors", {"FLW","FRW","RLW","RRW"}, "VVA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("Van","PZKA_Vehicles_Van_a","PZKA_Van_animatedDoors", {"FLW","FRW"}, "VVA_RearDoorVersionMed")
PZKA.CloneAnimationProfile("Van_BugWipers", "Van","PZKA_Vehicles_Van_NoRandom_a","PZKA_Van_norandom_animatedDoors")
PZKA.CloneAnimationProfile("Van_Charlemange_Beer", "Van_BugWipers")
PZKA.CloneAnimationProfile("Van_KnoxDisti", "Van_BugWipers")
PZKA.CloneAnimationProfile("Van_LectroMax", "Van_BugWipers")
PZKA.CloneAnimationProfile("Van_MassGenFac", "Van_BugWipers")
PZKA.CloneAnimationProfile("Van_Perfick_Potato", "Van_BugWipers")
PZKA.CloneAnimationProfile("Van_Transit", "Van_BugWipers")
PZKA.CloneAnimationProfile("Van_VoltMojo", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanAmbulance", "Van_BugWipers","PZKA_Vehicles_Ambulance_a")
PZKA.CloneAnimationProfile("VanBeckmans", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanBrewsterHarbin", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanBuilder", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanCarpenter", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanCoastToCoast", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanDeerValley", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanFossoil", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanGardener", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanGardenGods", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanGreenes", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanJohnMcCoy", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanJonesFabrication", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanKerrHomes", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanKnobCreekGas", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanKnoxCom", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanKorshunovs", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanLouisvilleLandscaping", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanMail", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanMccoy", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanMechanic", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanMeltingPointMetal", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanMetalheads", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanMetalworker", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanMicheles", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanMobileMechanics", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanMooreMechanics", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanOldMill", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanOvoFarm", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanPennSHam", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanPlattAuto", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanPluggedInElectrics", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanRiversideFabrication", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanRosewoodworking", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanSchwabSheetMetal", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanSpiffo", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanTreyBaines", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanUncloggers", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanUtility", "Van_BugWipers")
PZKA.CloneAnimationProfile("VanWPCarpentry", "Van_BugWipers")
PZKA.CloneAnimationProfile("Vehicles_VanRadio", "Van_BugWipers","PZKA_Vehicles_VanRadio_a")
PZKA.CloneAnimationProfile("VanRadio_3N", "Vehicles_VanRadio")

PZKA.CreateAnimationProfile("VanSeats","PZKA_Vehicles_VanSeats_a","PZKA_VanSeats_animatedDoors", {"FLW","FRW","ML","MR"}, "VVA_RearDoorVersionMed",{"FL","FR","ML","MR","RL","RR"})
PZKA.CloneAnimationProfile("VanSeats_Creature", "VanSeats","PZKA_Vehicles_VanSeats_norandom_a","PZKA_VanSeats_norandom_animatedDoors")
PZKA.CloneAnimationProfile("VanSeats_LadyDelighter", "VanSeats_Creature")
PZKA.CloneAnimationProfile("VanSeats_Mural", "VanSeats_Creature")
PZKA.CloneAnimationProfile("VanSeats_Prison", "VanSeats_Creature")
PZKA.CloneAnimationProfile("VanSeats_Space", "VanSeats_Creature")
PZKA.CloneAnimationProfile("VanSeats_Trippy", "VanSeats_Creature")
PZKA.CloneAnimationProfile("VanSeats_Valkyrie", "VanSeats_Creature")
PZKA.CloneAnimationProfile("VanSeatsAirportShuttle", "VanSeats_Creature")
]]

print("PZKA: applyAnimations loaded")