local PZKA = require "PZKA_addAnimations"

local SLE = getActivatedMods():contains("\\SimpleLightbarsExpandedPZK")
local VVE = getActivatedMods():contains("\\VVehicleEnhancer") or getActivatedMods():contains("\\Ze_VVehicleEnhancer_42B")

PZKA.CreateAnimationProfile("pzkChevalierCeriseSedan","PZKA_Vehicles_Sedan_Cerise_a","PZKA_Sedan_Lights_Cerise","PZKA_SedanFlat",{"FLW","FRW","RLW","RRW"}, "PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkChevalierCeriseDetective","pzkChevalierCeriseSedan","PZKA_Vehicles_Sedan_Cerise_a",false,"PZKA_SedanFlat_Detective")
PZKA.CloneAnimationProfile("pzkChevalierCeriseSedanFire","pzkChevalierCeriseSedan","PZKA_Vehicles_Sedan_Cerise_nr_a",false,"PZKA_SedanFlat_Lightbar")
PZKA.CloneAnimationProfile("pzkChevalierCeriseSedanLSU","pzkChevalierCeriseSedanFire")
PZKA.CloneAnimationProfile("pzkChevalierCeriseSedanMall","pzkChevalierCeriseSedanFire")
if SLE then
    PZKA.CloneAnimationProfile("pzkChevalierCeriseSedanPoliceKST","pzkChevalierCeriseSedan","PZKA_Vehicles_Sedan_Cerise_nr_a",false,"PZKA_SedanFlat_nr")
else
    PZKA.CloneAnimationProfile("pzkChevalierCeriseSedanPoliceKST","pzkChevalierCeriseSedanFire")
end

PZKA.CloneAnimationProfile("pzkChevalierCeriseSedanPoliceLouisvilleCounty","pzkChevalierCeriseSedanPoliceKST")
PZKA.CloneAnimationProfile("pzkChevalierCeriseSedanPoliceMuldraughPolice","pzkChevalierCeriseSedanPoliceKST")
PZKA.CloneAnimationProfile("pzkChevalierCeriseSedanPoliceBulletinSheriff","pzkChevalierCeriseSedanPoliceKST")
if SLE then
    PZKA.CloneAnimationProfile("pzkChevalierCeriseSedanTaxi","pzkChevalierCeriseSedanPoliceKST")
else
    PZKA.CloneAnimationProfile("pzkChevalierCeriseSedanTaxi","pzkChevalierCeriseSedanFire","PZKA_Vehicles_Sedan_Cerise_nr_a",false,"PZKA_SedanFlat_TaxiFull")
end

PZKA.CloneAnimationProfile("pzkDashHellion","pzkChevalierCeriseSedan","PZKA_Vehicles_Sedan_Hellion_a","PZKA_Sedan_Lights_Hellion","PZKA_SedanHellion")
PZKA.CloneAnimationProfile("pzkDashHellionDetective","pzkDashHellion","PZKA_Vehicles_Sedan_Hellion_a",false,"PZKA_SedanHellion_Detective")
if SLE then
    PZKA.CloneAnimationProfile("pzkDashHellionTaxi","pzkDashHellion","PZKA_Vehicles_Sedan_Hellion_nr_a",false,"PZKA_SedanHellion_Taxi")
else
    PZKA.CloneAnimationProfile("pzkDashHellionTaxi","pzkDashHellion","PZKA_Vehicles_Sedan_Hellion_nr_a",false,"PZKA_SedanHellion_Taxi")
end

PZKA.CloneAnimationProfile("pzkDashMayor","pzkChevalierCeriseSedan","PZKA_Vehicles_Sedan_Mayor_a","PZKA_Sedan_Lights_Mayor")
PZKA.CloneAnimationProfile("pzkDashMayorDetective","pzkChevalierCeriseDetective","PZKA_Vehicles_Sedan_Mayor_a","PZKA_Sedan_Lights_Mayor")
PZKA.CloneAnimationProfile("pzkDashMayorLSU","pzkChevalierCeriseSedanFire","PZKA_Vehicles_Sedan_Mayor_nr_a","PZKA_Sedan_Lights_Mayor")
PZKA.CloneAnimationProfile("pzkDashMayorMall","pzkDashMayorLSU")
if SLE then
    PZKA.CloneAnimationProfile("pzkDashMayorPoliceMuldraughPolice","pzkChevalierCeriseSedanFire","PZKA_Vehicles_Sedan_Mayor_nr_a",false,"PZKA_SedanFlat_nr")
else    
    PZKA.CloneAnimationProfile("pzkDashMayorPoliceMuldraughPolice","pzkDashMayorLSU")
end
PZKA.CloneAnimationProfile("pzkDashMayorPoliceKST","pzkDashMayorPoliceMuldraughPolice")
PZKA.CloneAnimationProfile("pzkDashMayorPoliceLouisvilleCounty","pzkDashMayorPoliceMuldraughPolice")
PZKA.CloneAnimationProfile("pzkDashMayorPoliceBulletinSheriff","pzkDashMayorPoliceMuldraughPolice")
if SLE then
    PZKA.CloneAnimationProfile("pzkDashMayorTaxi","pzkDashMayorPoliceMuldraughPolice")
else
    PZKA.CloneAnimationProfile("pzkDashMayorTaxi","pzkDashMayor","PZKA_Vehicles_Sedan_Mayor_nr_a",false,"PZKA_SedanFlat_Taxi")
end

PZKA.CloneAnimationProfile("pzkDashRapier","pzkChevalierCeriseSedan","PZKA_Vehicles_Sedan_Rapier_a","PZKA_Sedan_Lights_Rapier")
PZKA.CloneAnimationProfile("pzkDashRapierDetective","pzkChevalierCeriseDetective","PZKA_Vehicles_Sedan_Rapier_a","PZKA_Sedan_Lights_Rapier")

PZKA.CloneAnimationProfile("pzkFranklinTriumphTWD","pzkChevalierCeriseSedan","PZKA_Vehicles_Sedan_TWD_a","PZKA_Sedan_Lights_TWD","PZKA_SedanNya")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDDetective","pzkFranklinTriumphTWD","PZKA_Vehicles_Sedan_TWD_a",false,"PZKA_SedanNya_Detective")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDFire","pzkFranklinTriumphTWD","PZKA_Vehicles_Sedan_TWD_nr_a",false,"PZKA_SedanNya_Lightbar")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDLSU","pzkFranklinTriumphTWDFire")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDMall","pzkFranklinTriumphTWDFire")
if SLE then
    PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDPoliceBulletinSheriff","pzkFranklinTriumphTWD","PZKA_Vehicles_Sedan_TWD_nr_a",false,"PZKA_SedanNya_nr")
else
    PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDPoliceBulletinSheriff","pzkFranklinTriumphTWDFire")
end
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDPoliceKST","pzkFranklinTriumphTWDPoliceBulletinSheriff")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDPoliceLouisvilleCounty","pzkFranklinTriumphTWDPoliceBulletinSheriff")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDPoliceMuldraughPolice","pzkFranklinTriumphTWDPoliceBulletinSheriff")
if SLE then
    PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDTaxi","pzkFranklinTriumphTWDPoliceBulletinSheriff")
else
    PZKA.CloneAnimationProfile("pzkFranklinTriumphTWDTaxi","pzkFranklinTriumphTWDFire","PZKA_Vehicles_Sedan_TWD_nr_a",false,"PZKA_SedanNya_Taxi")
end

PZKA.CloneAnimationProfile("pzkFranklinTriumphTWD91","pzkFranklinTriumphTWD","PZKA_Vehicles_Sedan_TWD91_a","PZKA_Sedan_Lights_TWD91")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWD91Detective","pzkFranklinTriumphTWDDetective","PZKA_Vehicles_Sedan_TWD91_a","PZKA_Sedan_Lights_TWD91")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWD91LSU","pzkFranklinTriumphTWD91","PZKA_Vehicles_Sedan_TWD91_nr_a",false,"PZKA_SedanNya_Lightbar")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWD91Mall","pzkFranklinTriumphTWD91LSU")
if SLE then    
    PZKA.CloneAnimationProfile("pzkFranklinTriumphTWD91PoliceBulletinSheriff","pzkFranklinTriumphTWD91","PZKA_Vehicles_Sedan_TWD91_nr_a",false,"PZKA_SedanNya_nr")
else
    PZKA.CloneAnimationProfile("pzkFranklinTriumphTWD91PoliceBulletinSheriff","pzkFranklinTriumphTWD91LSU")
end
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWD91PoliceKST","pzkFranklinTriumphTWD91PoliceBulletinSheriff")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWD91PoliceLouisvilleCounty","pzkFranklinTriumphTWD91PoliceBulletinSheriff")
PZKA.CloneAnimationProfile("pzkFranklinTriumphTWD91PoliceMuldraughPolice","pzkFranklinTriumphTWD91PoliceBulletinSheriff")

PZKA.CloneAnimationProfile("pzkFranklinHomelander","pzkFranklinTriumphTWD","PZKA_Vehicles_Sedan_Homelander_a","PZKA_Sedan_Lights_Homelander","PZKA_SedanHomelander")
PZKA.CloneAnimationProfile("pzkFranklinHomelanderDetective","pzkFranklinHomelander","PZKA_Vehicles_Sedan_Homelander_a",false,"PZKA_SedanHomelander_Detective")

PZKA.CloneAnimationProfile("pzkChevalierNyalaDetective","pzkFranklinTriumphTWDDetective","PZKA_Vehicles_Sedan_Nyala_a","PZKA_Sedan_Lights_Nyala")
PZKA.CloneAnimationProfile("pzkChevalierNyalaLSU","pzkFranklinTriumphTWDLSU","PZKA_Vehicles_Sedan_Nyala_nr_a","PZKA_Sedan_Lights_Nyala")
PZKA.CloneAnimationProfile("pzkChevalierNyalaMall", "pzkChevalierNyalaLSU")

PZKA.CreateAnimationProfile("pzkContinentalBayer3304D","PZKA_Vehicles_Bayer_a","PZKA_Bayer4D_Light","PZKA_Bayer4D_animatedDoors",{"FLW","FRW","RLW","RRW"}, "PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer3302D","PZKA_Vehicles_Bayer_2D_a","PZKA_Bayer4D_Light","PZKA_Bayer2D_animatedDoors",{"FLW","FRW","RLOW","RROW"}, "PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer330Sport","PZKA_Vehicles_Bayer_Sport_a","PZKA_Bayer4D_Light","PZKA_BayerSport_animatedDoors",{"FLW","FRW","RLOW","RROW"}, "PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer330Cabrio","PZKA_Vehicles_Bayer_Cabrio_a","PZKA_Bayer4D_Light","PZKA_BayerCabrio_animatedDoors",{"FL","FR"}, "PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkFranklinTruckBus","PZKA_Vehicles_TruckBus_a","PZKA_TruckBus_Lights","PZKA_TruckBus_animatedDoors_nr",{"FR"}, "PZKA_RearDoorVersion",{"FL","FR","ML","MR","RL","RR"})
PZKA.CloneAnimationProfile("pzkFranklinTruckBusAirport","pzkFranklinTruckBus")
PZKA.CloneAnimationProfile("pzkFranklinTruckBusArmy","pzkFranklinTruckBus","PZKA_Vehicles_TruckBus_Bars_a")
PZKA.CloneAnimationProfile("pzkFranklinTruckBusPrison","pzkFranklinTruckBusArmy")

PZKA.CreateAnimationProfile("pzkHearse","PZKA_Vehicles_Hearse_nr_a","PZKA_Hearse_light","PZKA_Hearse_nr",{"FLW","FRW","RLW","RRW"}, "PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkLimo","PZKA_Vehicles_Limo_Nyala_a","PZKA_Limo_Lights_Nyala","PZKA_Limo",{"FLW","FRW","RLW","RRW"}, "PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkChevalierCeriseLimo","pzkLimo","PZKA_Vehicles_Limo_Cerise_a","PZKA_Limo_Lights_Cerise")
PZKA.CloneAnimationProfile("pzkDashRapierLimo","pzkLimo","PZKA_Vehicles_Limo_Rapier_a","PZKA_Limo_Lights_Rapier")
PZKA.CloneAnimationProfile("pzkFranklinHomelanderLimo","pzkLimo","PZKA_Vehicles_Limo_Homelander_a","PZKA_Limo_Lights_Homelander","PZKA_Limo_Homelander")
PZKA.CloneAnimationProfile("pzkDashHellionLimo","pzkLimo","PZKA_Vehicles_Limo_Hellion_a","PZKA_Limo_Lights_Hellion","PZKA_Limo_Hellion")

PZKA.CreateAnimationProfile("pzkCeriseStationWagon","PZKA_Vehicles_Wagon_Cerise_a","PZKA_Wagon_Lights_Cerise","PZKA_Normal_Wagon",{"FLW","FRW","RLW","RRW"}, "PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkRapierStationWagon","pzkCeriseStationWagon","PZKA_Vehicles_Wagon_Rapier_a","PZKA_Wagon_Lights_Rapier")
PZKA.CloneAnimationProfile("pzkTriumphTWDStationWagon","pzkCeriseStationWagon","PZKA_Vehicles_Wagon_TWD_a","PZKA_Wagon_Lights_TWD")
if SLE then
    PZKA.CloneAnimationProfile("pzkTriumphTWDStationWagonTaxi","pzkTriumphTWDStationWagon","PZKA_Vehicles_Wagon_TWD_nr_a",false,"PZKA_Normal_Wagon_nr")
else
    PZKA.CloneAnimationProfile("pzkTriumphTWDStationWagonTaxi","pzkTriumphTWDStationWagon","PZKA_Vehicles_Wagon_TWD_nr_a",false,"PZKA_Normal_Wagon_Taxi")
end
PZKA.CloneAnimationProfile("pzkDashMayorStationWagon","pzkCeriseStationWagon","PZKA_Vehicles_Wagon_Mayor_a","PZKA_Wagon_Lights_Mayor","PZKA_Normal_Wagon_Mayor")
PZKA.CloneAnimationProfile("pzkTriumphTWDStationWagonGriswold","pzkCeriseStationWagon","PZKA_Vehicles_Wagon_Grisworld_a","PZKA_Wagon_Grisworld_Lights","PZKA_Wagon_Grisworld_animatedDoors")

PZKA.CreateAnimationProfile("pzkStepVanMilk","PZKA_Vehicle_StepVan_NoRandom_a","PZKA_StepVan_Lights","PZKA_StepVan_animatedDoors",{"FLW","FRW"}, "PZKA_RearDoorVersion")
PZKA.CloneAnimationProfile("pzkStepVanUPZ","pzkStepVanMilk")
PZKA.CloneAnimationProfile("pzkStepVanFedLog","pzkStepVanMilk")
PZKA.CloneAnimationProfile("pzkStepVanSwatLouisvilleSWAT","pzkStepVanMilk","PZKA_Vehicle_StepVan_SWAT_a")
PZKA.CloneAnimationProfile("pzkStepVanTacoVan","pzkStepVanMilk","PZKA_Vehicle_StepVan_Taco_a",false,"PZKA_StepVan_Food_animatedDoors")
PZKA.CloneAnimationProfile("pzkStepVanHotDog","pzkStepVanTacoVan","PZKA_Vehicle_StepVan_HotDog_a")
PZKA.CloneAnimationProfile("pzkStepVanIceCream","pzkStepVanTacoVan","PZKA_Vehicle_StepVan_IceCream_a")
PZKA.CloneAnimationProfile("pzkStepVanPizza","pzkStepVanTacoVan","PZKA_Vehicle_StepVan_Pizza_a")

PZKA.CreateAnimationProfile("pzkVanBrig","PZKA_Vehicles_Van_Brig_a","PZKA_Van_Brig_Lights","PZKA_Van_Brig_animatedDoors",{"FLW","FRW","RLW","RRW"}, "PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkVanBox","PZKA_Vehicles_Van_Box_a","PZKA_Van_Box_Lights","PZKA_Van_Box_animatedDoors",{"FLW","FRW"}, "PZKA_RearDoorVersion")
PZKA.CreateAnimationProfile("pzkVanCamper","PZKA_Vehicles_Van_Camper_a","PZKA_Van_Lights","PZKA_Van_Camper_animatedDoors",{"FLW","FRW","RR"}, "PZKA_RearDoorVersion")
PZKA.CloneAnimationProfile("pzkVanBoxAmbulance","pzkVanBox","PZKA_Vehicles_Van_BoxAmbulance_a","PZKA_Van_BoxAmbulance_Lights","PZKA_Van_BoxAmbulance_animatedDoors")
PZKA.CloneAnimationProfile("pzkVanBoxFiretruck","pzkVanBoxAmbulance")
PZKA.CreateAnimationProfile("pzkVanilaVanAmbulance", "PZKA_Vehicles_Van_Ambulance_a","PZKA_Van_Lights","PZKA_Van_McCoy_animatedDoors",{"FLW","FRW"}, "PZKA_RearDoorVersion")
PZKA.CloneAnimationProfile("pzkVanMcCoy","pzkVanilaVanAmbulance","PZKA_Vehicles_Van_McCoy_a")

PZKA.CreateAnimationProfile("pzkVanMultivan", "PZKA_Vehicles_Van_Seats_a","PZKA_Van_Lights","PZKA_Van_Seats_animatedDoors",{"FLW","FRW","RLW","RRW"}, "PZKA_RearDoorVersion",{"FL","FR","ML","MR","RL","RR"})
PZKA.CloneAnimationProfile("pzkVanMultivanPayday", "pzkVanMultivan", "PZKA_Vehicles_Van_Seats_a_nr", false, "PZKA_Van_Payday_animatedDoors")
if SLE then
    PZKA.CloneAnimationProfile("pzkVanPoliceLouisvillePD", "pzkVanMultivan", "PZKA_Vehicles_Van_Seats_a_nr", false, "PZKA_Van_Police_nr_animatedDoors")
else
    PZKA.CloneAnimationProfile("pzkVanPoliceLouisvillePD", "pzkVanMultivan", "PZKA_Vehicles_Van_Police_a", false, "PZKA_Van_Police_nr_animatedDoors")
end
PZKA.CloneAnimationProfile("pzkVanPoliceMeadeSheriff", "pzkVanPoliceLouisvillePD")
PZKA.CloneAnimationProfile("pzkVanPoliceWestPoint", "pzkVanPoliceLouisvillePD")
if SLE then
    PZKA.CreateAnimationProfile("pzkVanSeatsTaxi", "PZKA_Vehicles_Van_Seats_a_nr", "PZKA_Van_Lights", "PZKA_Van_Taxi_animatedDoors",{"FLW","FRW","MLW","MRW"}, "PZKA_RearDoorVersion",{"FL","FR","ML","MR","RL","RR"})
else
    PZKA.CreateAnimationProfile("pzkVanSeatsTaxi", "PZKA_Vehicles_Van_Taxi_a", "PZKA_Van_Lights", "PZKA_Van_Taxi_animatedDoors",{"FLW","FRW","MLW","MRW"}, "PZKA_RearDoorVersion",{"FL","FR","ML","MR","RL","RR"})
end

PZKA.CreateAnimationProfile("pzkFranklinTruckBed", "PZKA_Vehicles_Truck_Bed_a","PZKA_Truck_Bed_specific","PZKA_Truck_animatedDoors",{"FLW","FRW"}, "PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkFranklinTruckFlatbed","pzkFranklinTruckBed","PZKA_Vehicles_Truck_FlatBed_a")
PZKA.CloneAnimationProfile("pzkFranklinTruckSemi","pzkFranklinTruckBed","PZKA_Vehicles_Truck_Semi_a","PZKA_Truck_Semi_specific")
PZKA.CloneAnimationProfile("pzkFranklinTruckShort","pzkFranklinTruckBed","PZKA_Vehicles_Truck_Short_a","PZKA_Truck_Short_specific")

PZKA.CreateAnimationProfile("pzkFranklinTruckCab", "PZKA_Vehicles_Truck_Cab_a","PZKA_Truck_Cab_specific","PZKA_Truck_animatedDoors",{"FLW","FRW","RLW","RRW"}, "PZKA_OpenBedVersion")

PZKA.CreateAnimationProfile("pzkFranklinTruckBox", "PZKA_Vehicles_Truck_Box_a","PZKA_Truck_Box_specific","PZKA_Truck_animatedDoors",{"FLW","FRW"}, "PZKA_RearDoorVersion")
PZKA.CloneAnimationProfile("pzkFranklinTruckDump","pzkFranklinTruckBox","PZKA_Vehicles_Truck_Dump_a","PZKA_Truck_Dump_specific")
PZKA.CloneAnimationProfile("pzkFranklinTruckPropane","pzkFranklinTruckBox","PZKA_Vehicles_Truck_Propane_a","PZKA_Truck_Propane_specific")
PZKA.CloneAnimationProfile("pzkFranklinTruckTow","pzkFranklinTruckBox","PZKA_Vehicles_Truck_Tow_a","PZKA_Truck_Tow_specific")
PZKA.CloneAnimationProfile("pzkFranklinTruckUtility","pzkFranklinTruckBox","PZKA_Vehicles_Truck_Utility_a","PZKA_Truck_Utility_Specific")

PZKA.CloneAnimationProfile("pzkFranklinTruckFire","pzkFranklinTruckBox","PZKA_Vehicles_Truck_Fire_a","PZKA_Truck_Fire_specific","PZKA_Truck_animatedDoors_nr")
PZKA.CloneAnimationProfile("pzkFranklinTruckGarbage","pzkFranklinTruckFire","PZKA_Vehicles_Truck_Garbage_a","PZKA_Truck_Garbage_specific")
PZKA.CloneAnimationProfile("pzkFranklinTruckMil","pzkFranklinTruckFire","PZKA_Vehicles_Truck_Mil_a","PZKA_Truck_Mil_specific")
PZKA.CloneAnimationProfile("pzkFranklinTruckMilTankerWater","pzkFranklinTruckFire","PZKA_Vehicles_Truck_Tanker2_a_nr","PZKA_Truck_Tanker2_NR_specific")
PZKA.CloneAnimationProfile("pzkFranklinTruckPropane2","pzkFranklinTruckFire","PZKA_Vehicles_Truck_Propane_a_nr","PZKA_Truck_Propane_nr_specific")

PZKA.CloneAnimationProfile("pzkFranklinTruckFireTanker","pzkFranklinTruckFire","PZKA_Vehicles_Truck_Tanker_nr_a","PZKA_Truck_Tanker_NR_specific")
PZKA.CloneAnimationProfile("pzkFranklinTruckTankerFossoil", "pzkFranklinTruckFireTanker")
PZKA.CloneAnimationProfile("pzkFranklinTruckTankerMil", "pzkFranklinTruckFireTanker")

PZKA.CloneAnimationProfile("pzkFranklinTruckTankerSeptic","pzkFranklinTruckMilTankerWater","PZKA_Vehicles_Truck_Tanker2_a",false,"PZKA_Truck_animatedDoors")
PZKA.CloneAnimationProfile("pzkFranklinTruckTankerWater","pzkFranklinTruckTankerSeptic")

PZKA.CreateAnimationProfile("pzkFranklinTruckRV", "PZKA_Vehicles_Truck_RV_a","PZKA_Truck_RV_lights","PZKA_Truck_RV_animatedDoors",{"FLW","FRW","RR"},"PZKA_RearDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkCarMuscle", "PZKA_Vehicles_Muscle_a","PZKA_Muscle_lights","PZKA_Muscle_animatedDoors",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkCarMuscleCabrio", "PZKA_Vehicles_MuscleCabrio_a","PZKA_Muscle_lights","PZKA_MuscleCabrio_animatedDoors",{"FL","FR"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkChevalierLaserModern","PZKA_Vehicles_Galloper_2D_Base_a","PZKA_Laser_Lights","PZKA_Laser",{"FLW","FRW"},"PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})
PZKA.CloneAnimationProfile("pzkChevalierLaserFire","pzkChevalierLaserModern","PZKA_Vehicles_Galloper_2D_Base_a",false,"PZKA_Laser_Lightbar")
PZKA.CloneAnimationProfile("pzkChevalierLaserRanger","pzkChevalierLaserFire")
PZKA.CloneAnimationProfile("pzkChevalierLaserLSU","pzkChevalierLaserFire")
PZKA.CloneAnimationProfile("pzkChevalierLaserMall","pzkChevalierLaserLSU")
if SLE then
    PZKA.CloneAnimationProfile("pzkChevalierLaserPoliceBulletinSheriff","pzkChevalierLaserModern","PZKA_Vehicles_Galloper_2D_Base_a",false,"PZKA_Laser_nr")
else
    PZKA.CloneAnimationProfile("pzkChevalierLaserPoliceBulletinSheriff","pzkChevalierLaserFire")
end
PZKA.CloneAnimationProfile("pzkChevalierLaserPoliceKST","pzkChevalierLaserPoliceBulletinSheriff")
PZKA.CloneAnimationProfile("pzkChevalierLaserPoliceLouisvilleCounty","pzkChevalierLaserPoliceBulletinSheriff")
PZKA.CloneAnimationProfile("pzkChevalierLaserPoliceMuldraughPolice","pzkChevalierLaserPoliceBulletinSheriff")
PZKA.CloneAnimationProfile("pzkChevalierLaserCUCV","pzkChevalierLaserFire","PZKA_Vehicles_Galloper_2D_Base_a",false,"PZKA_Laser_nr")

PZKA.CloneAnimationProfile("pzkFranklinGalloper","pzkChevalierLaserModern","PZKA_Vehicles_Galloper_2D_Base_a","PZKA_Galloper_Lights","PZKA_Galloper")
PZKA.CloneAnimationProfile("pzkFranklinGalloperFire","pzkFranklinGalloper","PZKA_Vehicles_Galloper_2D_Base_a",false,"PZKA_Galloper_Lightbar")
PZKA.CloneAnimationProfile("pzkFranklinGalloperRanger","pzkFranklinGalloperFire")
PZKA.CloneAnimationProfile("pzkFranklinGalloperLSU","pzkFranklinGalloperFire")
PZKA.CloneAnimationProfile("pzkFranklinGalloperMall","pzkFranklinGalloperFire")
if SLE then
    PZKA.CloneAnimationProfile("pzkFranklinGalloperPoliceKST","pzkFranklinGalloper","PZKA_Vehicles_Galloper_2D_Base_a",false,"PZKA_Galloper_nr")
else    
    PZKA.CloneAnimationProfile("pzkFranklinGalloperPoliceKST","pzkFranklinGalloperFire")
end
PZKA.CloneAnimationProfile("pzkFranklinGalloperPoliceLouisvilleCounty","pzkFranklinGalloperPoliceKST")
PZKA.CloneAnimationProfile("pzkFranklinGalloperPoliceMuldraughPolice","pzkFranklinGalloperPoliceKST")
PZKA.CloneAnimationProfile("pzkFranklinGalloperPoliceBulletinSheriff","pzkFranklinGalloperPoliceKST")

PZKA.CreateAnimationProfile("pzkChevalierLaserOffroader","PZKA_Vehicles_Galloper_5D_Base_a","PZKA_Laser_Lights","PZKA_Laser5D",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")

PZKA.CloneAnimationProfile("pzkDashIntruder150short","pzkChevalierLaserModern","PZKA_Vehicles_Galloper_2D_Base_a","PZKA_IntruderShort_Lights","PZKA_IntruderShort")

PZKA.CreateAnimationProfile("pzkChevalierPickupCrewLong","PZKA_Vehicles_Ftype_CrewLong_Pickup_Base2","PZKA_FType_CrewLong_Province_Lights","PZKA_FType_CrewLong_Pickup_Province",{"FLW","FRW","RLW","RRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkFranklin350FPickupCrewLong","pzkChevalierPickupCrewLong","PZKA_Vehicles_Ftype_CrewLong_Pickup_Base1","PZKA_FType_CrewLong_F350_Lights","PZKA_FType_CrewLong_Pickup_F350")

PZKA.CreateAnimationProfile("pzkChevalierE6","PZKA_Vehicles_Ftype_Reg_Pickup_Base2","PZKA_FType_Reg_Province_Lights","PZKA_FType_Reg_Pickup_Province",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkChevalierF6","pzkChevalierE6")
PZKA.CloneAnimationProfile("pzkFranklin150FPickupReg","pzkChevalierE6","PZKA_Vehicles_Ftype_Reg_Pickup_Base1","PZKA_FType_Reg_F350_Lights","PZKA_FType_Reg_Pickup_F350")
PZKA.CloneAnimationProfile("pzkPickUpTruck93","pzkChevalierE6","PZKA_Vehicles_Ftype_Reg_Pickup_Base2","PZKA_FType_Reg_Intruder_Lights","PZKA_FType_Reg_Pickup_Intruder")

PZKA.CreateAnimationProfile("pzkDashIntruder250PickupLong","PZKA_Vehicles_Ftype_Long_Pickup_Base2","PZKA_FType_CrewLong_Intruder_Lights","PZKA_FType_Long_Pickup_Intruder",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkFranklin250FPickupCrewLong","pzkDashIntruder250PickupLong","PZKA_Vehicles_Ftype_Long_Pickup_Base1","PZKA_FType_CrewLong_F350_Lights","PZKA_FType_Long_Pickup_F350")

PZKA.CreateAnimationProfile("pzkChevalierPickupCrewMedium","PZKA_Vehicles_Ftype_Med_Pickup_Base2","PZKA_FType_Med_Province_Lights","PZKA_FType_Med_Pickup_Province",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkFranklin150FPickupMedium","pzkChevalierPickupCrewMedium","PZKA_Vehicles_Ftype_Med_Pickup_Base1","PZKA_FType_Med_F350_Lights","PZKA_FType_Med_Pickup_F350")

PZKA.CreateAnimationProfile("pzkChevalierProvince","PZKA_Vehicles_Ftype_CrewMed_Wagon_Base2","PZKA_FType_CrewMed_Province_Lights","PZKA_FType_CrewMed_Wagon_Province",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkChevalierE6Van","PZKA_Vehicles_Ftype_Reg_Wagon_Base2","PZKA_FType_Reg_Province_Lights","PZKA_FType_Reg_Wagon_Province",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkChevalierF6Van","pzkChevalierE6Van","PZKA_Vehicles_Ftype_Reg_Wagon_Base2")
PZKA.CloneAnimationProfile("pzkDashIntruder150RegVan","pzkChevalierF6Van","PZKA_Vehicles_Ftype_Reg_Wagon_Base2","PZKA_FType_Reg_Intruder_Lights","PZKA_FType_Reg_Wagon_Intruder")
PZKA.CloneAnimationProfile("pzkFranklin150van","pzkChevalierF6Van","PZKA_Vehicles_Ftype_Reg_Wagon_Base1","PZKA_FType_Reg_F350_Lights","PZKA_FType_Reg_Wagon_F350")

PZKA.CreateAnimationProfile("pzkChevalierProvinceLong","PZKA_Vehicles_Ftype_CrewLong_Wagon_Base2","PZKA_FType_CrewLong_Province_Lights","PZKA_FType_CrewLong_Wagon_Province",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkChevalierProvinceLongCUCV","pzkChevalierProvinceLong","PZKA_Vehicles_Ftype_CrewLong_Wagon_Base2_nr",false,"PZKA_FType_CrewLong_Wagon_Province_nr")
PZKA.CloneAnimationProfile("pzkFranklin350FWagonLong","pzkChevalierProvinceLong","PZKA_Vehicles_Ftype_CrewLong_Wagon_Base1","PZKA_FType_CrewLong_F350_Lights","PZKA_FType_CrewLong_Wagon_F350")

PZKA.CreateAnimationProfile("pzkFranklin150FWagonMedium","PZKA_Vehicles_Ftype_Med_Wagon_Base1","PZKA_FType_Med_F350_Lights","PZKA_FType_Med_Wagon_F350",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkFranklin250FWagonLong","pzkFranklin150FWagonMedium")

PZKA.CreateAnimationProfile("pzkFranklin250FPickupWagonLong","PZKA_Vehicles_Ftype_Long_Wagon_Base1","PZKA_FType_CrewLong_F350_Lights","PZKA_FType_Long_Wagon_F350",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkDashIntruder250WagonLong","pzkFranklin250FPickupWagonLong","PZKA_Vehicles_Ftype_Long_Wagon_Base2","PZKA_FType_CrewLong_Intruder_Lights","PZKA_FType_Long_Wagon_Intruder")

PZKA.CreateAnimationProfile("pzkF350BoxCUCV","PZKA_Vehicles_Ftype_Box_Base_nr","PZKA_FType_BOX_CUCV_Lights","PZKA_FType_Box_CUCV",{"FLW","FRW"},"PZKA_RearDoorVersion")
PZKA.CloneAnimationProfile("pzkF350BoxUmoveit","pzkF350BoxCUCV","PZKA_Vehicles_Ftype_Box_Base","PZKA_FType_BOX_UMove_Lights","PZKA_FType_Box_UMove")
PZKA.CloneAnimationProfile("pzkF350BoxAmbulance","pzkF350BoxCUCV","PZKA_Vehicles_Ftype_Box_Base_nr","PZKA_FType_BOX_Ambulance_Lights","PZKA_FType_Box_Ambulance")
PZKA.CloneAnimationProfile("pzkF350BoxSwat","pzkF350BoxCUCV","PZKA_Vehicles_Ftype_Box_Base_nr",false,"PZKA_FType_Box_SWAT")

PZKA.CreateAnimationProfile("pzkFtypeTowTruck","PZKA_Vehicles_Ftype_Tow_Base","PZKA_FType_Tow_Lights","PZKA_FType_Tow",{"FLW","FRW"},"PZKA_OpenBedVersion")

PZKA.CreateAnimationProfile("pzkChevalierCerise93Wagon","PZKA_Vehicles_Wagon_Cerise93_a","PZKA_Wagon_Cerise93_Lights","PZKA_Wagon_Cerise93_animatedDoors",{"FLW","FRW","RLW","RRW"}, "PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkChevalierCerise93WagonFire","pzkChevalierCerise93Wagon","PZKA_Vehicles_Wagon_Cerise93_nr_a","PZKA_Wagon_Cerise93_Lights","PZKA_Wagon_Cerise93_animatedDoors_lightbar")
PZKA.CloneAnimationProfile("pzkChevalierCerise93WagonLSU","pzkChevalierCerise93WagonFire")
PZKA.CloneAnimationProfile("pzkChevalierCerise93WagonMall","pzkChevalierCerise93WagonFire")

PZKA.CreateAnimationProfile("pzkChevalierCosetteCabrio","PZKA_Vehicles_Sport_Cabrio_a","PZKA_Sport_Cabrio_Light","PZKA_Sport_Cabrio_animatedDoors",{"FL","FR"}, "PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkChevalierMaroca","PZKA_Vehicles_Marocco_a","PZKA_Marocco_Light","PZKA_Marocco_animatedDoors",{"FLW","FRW"}, "PZKA_TrunkDoorVersion")
if SLE then
    PZKA.CloneAnimationProfile("pzkChevalierMarocaPoliceLV","pzkChevalierMaroca","PZKA_Vehicles_Marocco_nr_a",false,"PZKA_Marocco_animatedDoors_nr")
else
    PZKA.CloneAnimationProfile("pzkChevalierMarocaPoliceLV","pzkChevalierMaroca","PZKA_Vehicles_Marocco_nr_a",false,"PZKA_Marocco_lightbar")
end
PZKA.CloneAnimationProfile("pzkChevalierMarocaPoliceWP","pzkChevalierMarocaPoliceLV")
PZKA.CloneAnimationProfile("pzkChevalierMarocaPoliceMeade","pzkChevalierMarocaPoliceLV")

PZKA.CreateAnimationProfile("pzkChevalierMaroca80","PZKA_Vehicles_Marocco80_Base_a","pzka_Marocco80_Light","pzka_Marocco80",{"FLW","FRW"}, "PZKA_TrunkDoorVersion")
if SLE then
    PZKA.CloneAnimationProfile("pzkChevalierMaroca80Bulletin","pzkChevalierMaroca80","PZKA_Vehicles_Marocco80_Base_nr_a",false,"pzka_Marocco80_basic_nr")
else
    PZKA.CloneAnimationProfile("pzkChevalierMaroca80Bulletin","pzkChevalierMaroca80","PZKA_Vehicles_Marocco80_Base_nr_a",false,"pzka_Marocco80_Lightbar")
end
PZKA.CloneAnimationProfile("pzkChevalierMaroca80KST","pzkChevalierMaroca80Bulletin")
PZKA.CloneAnimationProfile("pzkChevalierMaroca80LV","pzkChevalierMaroca80Bulletin")
PZKA.CloneAnimationProfile("pzkChevalierMaroca80Muld","pzkChevalierMaroca80Bulletin")

PZKA.CreateAnimationProfile("pzkChevalierVan70","PZKA_Vehicles_Van70_a","PZKA_Van70Chev_Lights","PZKA_Van70Chev_animatedDoors",{"FLW","FRW","ML","MR"}, "PZKA_RearDoorVersion",{"FL","FR","ML","MR","RL","RR"})
PZKA.CloneAnimationProfile("pzkDashVan70","pzkChevalierVan70","PZKA_Vehicles_Van70Dash_a","PZKA_Van70Dash_Lights","PZKA_Van70Dash_animatedDoors")
PZKA.CreateAnimationProfile("pzkDashVan70Riddle","PZKA_Vehicles_Van70_riddle_a","PZKA_Van70Dash_Lights","PZKA_Van70_animatedDoors_nr",{"FLW","FRW","RL","RR"}, "PZKA_RearDoorVersion",{"FL","FR","ML","MR","RL","RR"})

PZKA.CreateAnimationProfile("pzkDashRoyal","PZKA_Vehicles_Royal_a","PZKA_Royal_Lights_Royal","PZKA_DashRoyal_sedan_Royal",{"FLW","FRW"}, "PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkDashRoyalGrand","pzkDashRoyal")
PZKA.CloneAnimationProfile("pzkDashTornado","pzkDashRoyal","PZKA_Vehicles_Tornado_a","PZKA_Royal_Lights_Tornado","PZKA_DashRoyal_sedan_Tornado")
PZKA.CloneAnimationProfile("pzkChevalierDownhill","pzkDashRoyal","PZKA_Vehicles_Downhill_a","PZKA_Royal_Lights_Downhill","PZKA_DashRoyal_sedan_Downhill")
PZKA.CreateAnimationProfile("pzkChevalierRoadrunner","PZKA_Vehicles_Roadrunner_a","PZKA_Royal_Lights_Roadrunner","PZKA_DashRoyal_roadrunner",{"FLW","FRW"}, "PZKA_OpenBedVersion")

PZKA.CreateAnimationProfile("pzkChevalierCerise93","PZKA_Vehicles_Cerise93_Sedan_a","PZKA_Cerise93_Sedan_Lights","PZKA_Cerise93_sedan_C93",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkChevalierCerise93Fire","pzkChevalierCerise93","PZKA_Vehicles_Cerise93_Sedan_nr_a",false,"PZKA_Cerise93_sedan_C93_police")
PZKA.CloneAnimationProfile("pzkChevalierCerise93LSU","pzkChevalierCerise93Fire")
PZKA.CloneAnimationProfile("pzkChevalierCerise93Mall","pzkChevalierCerise93Fire")
if SLE then
    PZKA.CloneAnimationProfile("pzkChevalierCerise93PoliceLouisvillePD","pzkChevalierCerise93","PZKA_Vehicles_Cerise93_Sedan_nr_a",false,"PZKA_Cerise93_sedan_C93_nr")
else
    PZKA.CloneAnimationProfile("pzkChevalierCerise93PoliceLouisvillePD","pzkChevalierCerise93Fire")
end
PZKA.CloneAnimationProfile("pzkChevalierCerise93PoliceMeadeSheriff","pzkChevalierCerise93PoliceLouisvillePD")
PZKA.CloneAnimationProfile("pzkChevalierCerise93PoliceWestPoint","pzkChevalierCerise93PoliceLouisvillePD")
if SLE then
    PZKA.CloneAnimationProfile("pzkChevalierCerise93Taxi","pzkChevalierCerise93PoliceLouisvillePD")
else
    PZKA.CloneAnimationProfile("pzkChevalierCerise93Taxi","pzkChevalierCerise93","PZKA_Vehicles_Cerise93_Sedan_nr_a",false,"PZKA_Cerise93_sedan_C93_taxi")
end

PZKA.CloneAnimationProfile("pzkFranklinTriumph","pzkChevalierCerise93","PZKA_Vehicles_Triumph_Sedan_a","PZKA_Triumph_Sedan_Lights","PZKA_Cerise93_sedan_Triumph")
PZKA.CloneAnimationProfile("pzkFranklinTriumphLSU","pzkFranklinTriumph","PZKA_Vehicles_Triumph_Sedan_nr_a",false,"PZKA_Cerise93_sedan_Triumph_police")
PZKA.CloneAnimationProfile("pzkFranklinTriumphMall","pzkFranklinTriumphLSU")
if SLE then
    PZKA.CloneAnimationProfile("pzkFranklinTriumphPoliceLouisvillePD","pzkFranklinTriumph","PZKA_Vehicles_Triumph_Sedan_nr_a",false,"PZKA_Cerise93_sedan_Triumph_nr")
else
    PZKA.CloneAnimationProfile("pzkFranklinTriumphPoliceLouisvillePD","pzkFranklinTriumphLSU")
end
PZKA.CloneAnimationProfile("pzkFranklinTriumphPoliceMeadeSheriff","pzkFranklinTriumphPoliceLouisvillePD")
PZKA.CloneAnimationProfile("pzkFranklinTriumphPoliceWestPoint","pzkFranklinTriumphPoliceLouisvillePD")
if SLE then
    PZKA.CloneAnimationProfile("pzkFranklinTriumphTaxi","pzkFranklinTriumphPoliceLouisvillePD")
else    
    PZKA.CloneAnimationProfile("pzkFranklinTriumphTaxi","pzkFranklinTriumph","PZKA_Vehicles_Triumph_Sedan_nr_a",false,"PZKA_Cerise93_sedan_Triumph_taxi")
end

PZKA.CloneAnimationProfile("pzkFranklinTriumphWagon","pzkFranklinTriumph","PZKA_Vehicles_Triumph_Wagon_a","PZKA_Triumph_Wagon_Lights","PZKA_Cerise93_wagon_Triumph")
PZKA.CloneAnimationProfile("pzkFranklinTriumphWagonLSU","pzkFranklinTriumphWagon","PZKA_Vehicles_Triumph_Wagon_nr_a",false,"PZKA_Cerise93_wagon_Triumph_police")
PZKA.CloneAnimationProfile("pzkFranklinTriumphWagonMall","pzkFranklinTriumphWagonLSU")

PZKA.CreateAnimationProfile("pzkAutowagenBunny","PZKA_Vehicles_Bunny_a","PZKA_Bunny_Light","PZKA_Bunny",{"FLW","FRW"},"PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkContinentalBayer534","PZKA_Vehicles_Bayer534_a","PZKA_Bayer534_Light","PZKA_Bayer534",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer732","PZKA_Vehicles_Bayer732_a","PZKA_Bayer732_Light","PZKA_Bayer732",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkPeterbuiltSleeper","PZKA_Vehicles_PeterbuiltS_a","pzka_Peterbuilt_Sleeper_Light","PZKA_PeterbuiltS",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkPeterbuiltSleeperBandit","pzkPeterbuiltSleeper","PZKA_Vehicles_PeterbuiltS_nr_a",false,"PZKA_PeterbuiltS_nr")
PZKA.CloneAnimationProfile("pzkPeterbuiltSleeperOptimus","pzkPeterbuiltSleeperBandit")
PZKA.CloneAnimationProfile("pzkPeterbuiltSleeperPop","pzkPeterbuiltSleeperBandit")

PZKA.CreateAnimationProfile("pzkPeterbuilt","PZKA_Vehicles_Peterbuilt_a","pzka_Peterbuilt_Light","PZKA_Peterbuilt",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkPeterbuiltFossoil","pzkPeterbuilt","PZKA_Vehicles_Peterbuilt_nr_a",false,"PZKA_Peterbuilt_nr")
PZKA.CloneAnimationProfile("pzkPeterbuiltPop","pzkPeterbuiltFossoil")

PZKA.CreateAnimationProfile("pzkChevalierTowTruck","PZKA_Vehicles_ChevTow_a","pzka_ChevalierTow_Light","PZKA_ChevTow",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkChevalierTowTruckFire","pzkChevalierTowTruck","PZKA_Vehicles_ChevTow_nr_a",false,"PZKA_ChevTow_nr")
PZKA.CloneAnimationProfile("pzkChevalierTowTruckPoliceLouisvilleCounty","pzkChevalierTowTruckFire")
PZKA.CloneAnimationProfile("pzkChevalierTowTruckStatePolice","pzkChevalierTowTruckFire")

PZKA.CreateAnimationProfile("pzkContinentalBug","PZKA_Vehicles_Bug_a","pzka_Bug_Light","PZKA_Bug",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkContinentalBugHerbie","pzkContinentalBug","PZKA_Vehicles_Bug_nr_a",false,"PZKA_Bug_nr")
PZKA.CloneAnimationProfile("pzkContinentalBugRedT","pzkContinentalBugHerbie")

PZKA.CreateAnimationProfile("pzkMastersonLadyZ","PZKA_Vehicles_LadyZ_a","pzka_LadyZ_Light","PZKA_LadyZ",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkPickupFranklin","PZKA_Vehicles_FranklinRaider_a","pzka_FranklinRaider_Light","PZKA_FranklinRaider",{"FLW","FRW"},"PZKA_OpenBedVersion")

PZKA.CreateAnimationProfile("pzkFranklinBankTruck","PZKA_Vehicles_BankTrunk_nr_a","pzka_BankTrunk_Light","PZKA_BankTrunk_Bank",{"FLW","FRW","RR"},"PZKA_RearDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinSwatTruckLouisvilleSWAT","PZKA_Vehicles_BankTrunk_nr_a","pzka_BankTrunk_Light","PZKA_BankTrunk_lightbar",{"FLW","FRW","MR"},"PZKA_RearDoorVersion")

PZKA.CreateAnimationProfile("pzkDashNoble","PZKA_Vehicles_DashNoble_a","pzka_DashNoble_Light","PZKA_DashNoble",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkMastersonLady","PZKA_Vehicles_Lady_a","pzka_Lady_Light","PZKA_Lady",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkSuvDinoPark","PZKA_Vehicles_SUV_nr_a","PZKA_SUV_Light","PZKA_SUV_nr",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkSuvAirportSecurity","pzkSuvDinoPark","PZKA_Vehicles_SUV_nr_a",false,"PZKA_SUV_lightbar")
if SLE then
    PZKA.CloneAnimationProfile("pzkSuvMeadeSheriff","pzkSuvDinoPark")
else
    PZKA.CloneAnimationProfile("pzkSuvMeadeSheriff","pzkSuvAirportSecurity")
end
PZKA.CloneAnimationProfile("pzkSuvPoliceLouisvillePD","pzkSuvMeadeSheriff")
PZKA.CloneAnimationProfile("pzkSuvWestPoint","pzkSuvMeadeSheriff")

PZKA.CreateAnimationProfile("pzkContinentalCruiser","PZKA_Vehicles_Cruiser_a","PZKA_Cruiser_Light","PZKA_Cruiser",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkHMMV","PZKA_Vehicles_HMMV_1_a","PZKA_HMMV_Light_1","PZKA_HMMV_1",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkHMMV2","PZKA_Vehicles_HMMV_2_a","PZKA_HMMV_Light_2","PZKA_HMMV_2",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkHMMV2Mil","PZKA_Vehicles_HMMV_2_nr_a","PZKA_HMMV_Light_2","PZKA_HMMV_2_nr",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkHMMV3","PZKA_Vehicles_HMMV_3_a","PZKA_HMMV_Light_2","PZKA_HMMV_3",{"FLW","FRW","RLW","RRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkHMMV3Mil","PZKA_Vehicles_HMMV_3_nr_a","PZKA_HMMV_Light_2","PZKA_HMMV_3_nr",{"FLW","FRW","RLW","RRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkHMMV4Mil","PZKA_Vehicles_HMMV_4_nr_a","PZKA_HMMV_Light_2","PZKA_HMMV_4_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalHammermanKnight","PZKA_Vehicles_Hammerman_a","PZKA_Hammerman_Light","PZKA_Hammerman",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalNord","PZKA_Vehicles_Nord_a","PZKA_Nord_Light_S","PZKA_Nord_S",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalNordWagon","PZKA_Vehicles_NordWagon_a","PZKA_Nord_Light_W","PZKA_Nord_W",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalPfeiffer901","PZKA_Vehicles_Pfeiffer_911_a","pzka_Pfeiffer_Light","PZKA_Pfeiffer_P911",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalPfeiffer901c","PZKA_Vehicles_Pfeiffer_911c_a","pzka_Pfeiffer_Light","PZKA_Pfeiffer_P911c",{"FL","FR"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalPfeiffer930","PZKA_Vehicles_Pfeiffer_930_a","pzka_Pfeiffer_Light","PZKA_Pfeiffer_P930",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalPfeiffer930c","PZKA_Vehicles_Pfeiffer_930c_a","pzka_Pfeiffer_Light","PZKA_Pfeiffer_P930c",{"FL","FR"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalPyrenean310","PZKA_Vehicles_Pyre_a","PZKA_Pyre_Light","PZKA_Pyre",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalSpirit","PZKA_Vehicles_Spirit_a","pzka_Spirit_Light","PZKA_Spirit",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkContinentalTRK","PZKA_Vehicles_TRK_nr_a","pzka_TRK_Light","PZKA_TRK_nr",{"FLW","FRW"},"PZKA_RearDoorVersion")

PZKA.CreateAnimationProfile("pzkMastersonIberiaPickup","PZKA_Vehicles_IberiaP_a","PZKA_Iberia_Light","PZKA_IberiaP",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkMastersonIberiaVan1","PZKA_Vehicles_IberiaW_a","PZKA_Iberia_Light","PZKA_IberiaW",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkMastersonIberiaVan2","PZKA_Vehicles_IberiaW2_a","PZKA_Iberia_Light","PZKA_IberiaW2",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashChampion","PZKA_Vehicles_Champion_a","PZKA_Champion_Light","PZKA_Champion",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashCheyene","PZKA_Vehicles_Cheyene_a","PZKA_Cheyene_Light","PZKA_Cheyene",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkDashCheyeneAirportSecurity","PZKA_Vehicles_Cheyene_nr_a","PZKA_Cheyene_Light","PZKA_Cheyene_lightbar",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
if SLE then
    PZKA.CreateAnimationProfile("pzkDashCheyeneMeadeSheriff","PZKA_Vehicles_Cheyene_nr_a","PZKA_Cheyene_Light","PZKA_Cheyene_nr",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
else
    PZKA.CloneAnimationProfile("pzkDashCheyeneMeadeSheriff","pzkDashCheyeneAirportSecurity")
end
PZKA.CloneAnimationProfile("pzkDashCheyenePoliceLouisvillePD","pzkDashCheyeneMeadeSheriff")
PZKA.CloneAnimationProfile("pzkDashCheyeneWestPoint","pzkDashCheyeneMeadeSheriff")

PZKA.CreateAnimationProfile("pzkDashDeluxo","PZKA_Vehicles_Deluxo_a","PZKA_Deluxo_Light","PZKA_Deluxo",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashElite2D","PZKA_Vehicles_Elite2D_a","PZKA_Elite2D_Light","PZKA_Elite2D",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkDashGTA","PZKA_Vehicles_GTA_a","PZKA_GTA_Light","PZKA_GTA",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashNavajoP","PZKA_Vehicles_NavajoP_a","PZKA_Navajo_Light","PZKA_NavajoP",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkDashNavajoW","PZKA_Vehicles_NavajoW_a","PZKA_Navajo_Light","PZKA_NavajoW",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashOhio","PZKA_Vehicles_Ohio_a","PZKA_Ohio_Light","PZKA_Ohio",{"FL","FR"},"PZKA_TrunkDoorVersion",{"FL","FR","RL"})

PZKA.CreateAnimationProfile("pzkDashPhoenix","PZKA_Vehicles_Phoenix_a","pzka_Phoenix_Light","PZKA_Phoenix",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkDashPhoenixBandit","PZKA_Vehicles_Phoenix_nr_a","pzka_Phoenix_Light","PZKA_Phoenix_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashPhoenix80","PZKA_Vehicles_Phoehix80_Base_a","pzka_Phoenix80_Light","pzka_Phoenix80",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkDashPhoenix75","PZKA_Vehicles_Phoehix75_Base_a","pzka_Phoenix75_Light","pzka_Phoenix75",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkDashPhoenix75JP","PZKA_Vehicles_Phoehix75_Base_nr_a","pzka_Phoenix75_Light","pzka_Phoenix75_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashPiranha","PZKA_Vehicles_Piranha_a","PZKA_Piranha_Light","PZKA_Piranha",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

if VVE then
    PZKA.CreateAnimationProfile("pzkDashRancherCabrio","PZKA_VVE_Offroad_a","PZKA_VVE_Offroad_Light","PZKA_VVE_Offroad",{"FL","FR"},"PZKA_TrunkDoorVersion")
else
    PZKA.CreateAnimationProfile("pzkDashRancherCabrio","PZKA_Vehicles_Offroad_C_a","PZKA_Offroad_Light","PZKA_Offroad_C",{"FL","FR"},"PZKA_TrunkDoorVersion")
end
PZKA.CreateAnimationProfile("pzkDashRancherDinoPark","PZKA_Vehicles_Offroad_R_nr_a","PZKA_Offroad_Light","PZKA_Offroad_R_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkDashRancherMail","pzkDashRancherDinoPark")
PZKA.CreateAnimationProfile("pzkDashRancherRanger","PZKA_Vehicles_Offroad_R_nr_a","PZKA_Offroad_Light","PZKA_Offroad_lightbar",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashRunner","PZKA_Vehicles_Runner_a","PZKA_Runner_Light","PZKA_Runner",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkDashRunnerGeneral","PZKA_Vehicles_Runner_nr_a","PZKA_Runner_Light","PZKA_Runner_general",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkFireTruckFlatSemi","PZKA_Vehicles_FireTruck_Semi_nr_a","pzka_FireTruck_Light_S","PZKA_FireTruck_S_nr",{"FLW","FRW","RLW","RRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkFireTruckFlatLadder","PZKA_Vehicles_FireTruck_Ladder_nr_a","pzka_FireTruck_Light_L","PZKA_FireTruck_L_nr",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFireTruckFlatPumper","PZKA_Vehicles_FireTruck_nr_Pump_a","pzka_FireTruck_Light_L","PZKA_FireTruck_L_nr",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkDashHEMTT6x6semi","PZKA_Vehicles_HEMTT_nr_a","pzka_HEMTT_Light","PZKA_HEMTT_nr",{"FLW","FRW"},"PZKA_OpenBedVersion")

PZKA.CreateAnimationProfile("pzkFranklinIslander","PZKA_Vehicles_Islander_a","PZKA_Islander_Light","PZKA_Islander",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkFreightlinerFlat","PZKA_Vehicles_Freight_S1_a","pzka_Freight_S_Light","PZKA_Freight",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkFreightlinerFlat2","PZKA_Vehicles_Freight_S2_a","pzka_Freight_S_Light","PZKA_Freight",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkFreightlinerTerminatorTow","PZKA_Vehicles_Freight_T_nr_a","pzka_Freight_T_Light","PZKA_Freight_nr",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CreateAnimationProfile("pzkFreightlinerFlatOptimus","PZKA_Vehicles_Freight_S1_nr_a","pzka_Freight_S_Light","PZKA_Freight_nr",{"FLW","FRW"},"PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("pzkFreightlinerFlatSpiffo","pzkFreightlinerFlatOptimus")

PZKA.CreateAnimationProfile("pzkFranklinPony","PZKA_Vehicles_Pony_a","PZKA_Pony_Light","PZKA_Pony",{"FLW","FRW"},"PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkFranklinStallion","PZKA_Vehicles_Stallion_a","PZKA_Stallion_Light","PZKA_Stallion1S",{"FLW","FRW"},"PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})
PZKA.CreateAnimationProfile("pzkFranklinStallion2","PZKA_Vehicles_Stallion2_a","PZKA_Stallion_Light2","PZKA_Stallion2",{"FLW","FRW"},"PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})
PZKA.CreateAnimationProfile("pzkFranklinStallionSport","PZKA_Vehicles_Stallion2_a","PZKA_Stallion_Light2","PZKA_Stallion2Sport",{"FLW","FRW"},"PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})
if SLE then
    PZKA.CreateAnimationProfile("pzkFranklinStallionPoliceLouisvillePD","PZKA_Vehicles_Stallion2_nr_a","PZKA_Stallion_Light2","PZKA_Stallion2_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})
else
    PZKA.CreateAnimationProfile("pzkFranklinStallionPoliceLouisvillePD","PZKA_Vehicles_Stallion2_nr_a","PZKA_Stallion_Light2","PZKA_Stallion2_lightbar",{"FLW","FRW"},"PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})
end
PZKA.CloneAnimationProfile("pzkFranklinStallionPoliceMeadeSheriff","pzkFranklinStallionPoliceLouisvillePD")
PZKA.CloneAnimationProfile("pzkFranklinStallionPoliceWestPoint","pzkFranklinStallionPoliceLouisvillePD")

PZKA.CreateAnimationProfile("pzkFranklinStallionKing","PZKA_Vehicles_StallionKing124_a","PZKA_StallionKing_Light1","PZKA_StallionKing1",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKing2","PZKA_Vehicles_StallionKing124_a","PZKA_StallionKing_Light1","PZKA_StallionKing2",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKing3","PZKA_Vehicles_StallionKing3_a","PZKA_StallionKing_Light1","PZKA_StallionKing3",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKing4","PZKA_Vehicles_StallionKing124_a","PZKA_StallionKing_Light1","PZKA_StallionKing4",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKing5","PZKA_Vehicles_StallionKing5_a","PZKA_StallionKing_Light1","PZKA_StallionKing5",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkFranklinStallionKingPeterGleen","PZKA_Vehicles_StallionKing124_nr_a","PZKA_StallionKing_Light1","PZKA_StallionKing1_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingJohnWick","PZKA_Vehicles_StallionKing124_nr_a","PZKA_StallionKing_Light1","PZKA_StallionKing1_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingSeanBoswell","PZKA_Vehicles_StallionKing124_nr_a","PZKA_StallionKing_Light1","PZKA_StallionKing2_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingEleanor","PZKA_Vehicles_StallionKingE_a","PZKA_StallionKing_LightE","PZKA_StallionKing2_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingFrankBullitt","PZKA_Vehicles_StallionKingB_a","PZKA_StallionKing_LightB","PZKA_StallionKing4_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingKenMiles","PZKA_Vehicles_StallionKingM_a","PZKA_StallionKing_LightB","PZKA_StallionKing5_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkFranklinStallionKingTheKing","PZKA_Vehicles_StallionKingK_a","PZKA_StallionKing_LightK","PZKA_StallionKing2_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkFranklinVan70","PZKA_Vehicles_FranklinV70_a","PZKA_FranklinV70_Light","PZKA_FranklinV70",{"FLW","FRW","ML","MR"},"PZKA_RearDoorVersion",{"FL","FR","ML","MR","RL","RR"})

PZKA.CreateAnimationProfile("pzkMastersonCrown","PZKA_Vehicles_Crown_a","PZKA_Crown_Light","PZKA_Crown",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkMastersonExpander","PZKA_Vehicles_Expander_a","PZKA_Expander_Light","PZKA_Expander",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkMastersonHarmony","PZKA_Vehicles_Harmony_a","PZKA_Harmony_Light","PZKA_Harmony",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkMastersonHarmonyWagon","PZKA_Vehicles_HarmonyWagon_a","PZKA_Harmony_Light","PZKA_HarmonyW",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("pzkMastersonInitial","PZKA_Vehicles_Initial_a","pzka_Initial_Light","PZKA_Initial",{"FLW","FRW"},"PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})
PZKA.CreateAnimationProfile("pzkMastersonInitialFuji","PZKA_Vehicles_Initial_nr_a","pzka_Initial_Light","PZKA_Initial_nr",{"FLW","FRW"},"PZKA_TrunkDoorVersion",{"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("pzkMastersonScout4D","PZKA_Vehicles_Scout_a","PZKA_Scout_Light","PZKA_Scout",{"FLW","FRW","RLW","RRW"},"PZKA_TrunkDoorVersion")


--[[
PZKA.CreateAnimationProfile("CarNormal","PZKA_Vehicles_CarNormal_a","PZKA_CarNormal_animatedDoors", {"FLW","FRW","RLW","RRW"}, "PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("CarTaxi","CarNormal","PZKA_Vehicles_CarTaxi_a","PZKA_CarNormal_norandom_animatedDoors")
PZKA.CloneAnimationProfile("CarTaxi2","CarTaxi")
PZKA.CloneAnimationProfile("CarLightsNorandom","CarNormal","PZKA_Vehicles_CarLights_a","PZKA_CarNormal_norandom_animatedDoors")
PZKA.CloneAnimationProfile("CarLightsBulletinSheriff","CarLightsNorandom")
PZKA.CloneAnimationProfile("CarLightsKST","CarLightsNorandom")
PZKA.CloneAnimationProfile("CarLightsLouisvilleCounty","CarLightsNorandom")
PZKA.CloneAnimationProfile("CarLightsMuldraughPolice","CarLightsNorandom")
PZKA.CloneAnimationProfile("CarLightsRanger","CarLightsNorandom")
PZKA.CloneAnimationProfile("CarLightsPolice","CarLightsNorandom")

PZKA.CreateAnimationProfile("CarLuxury","PZKA_Vehicles_LuxuryCar_a","PZKA_LuxuryCar_animatedDoors", {"FLW","FRW"}, "PZKA_TrunkDoorVersion", {"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("CarStationWagon","PZKA_Vehicles_CarStationWagon_a", "PZKA_CarStationWagon_animatedDoors", {"FLW","FRW","RLW","RRW"}, "PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("CarStationWagon2","CarStationWagon")

PZKA.CreateAnimationProfile("ModernCar","PZKA_Vehicles_ModernCar_a", "PZKA_ModernCar_animatedDoors", {"FLW","FRW","RLW","RRW"}, "PZKA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("ModernCar02","ModernCar","PZKA_Vehicles_ModernCar02_a","PZKA_ModernCar02_animatedDoors")
PZKA.CloneAnimationProfile("ModernCarLightsCityLouisvillePD","ModernCar","PZKA_Vehicles_ModernCarLights_a","PZKA_ModernCar_norandom_animatedDoors")
PZKA.CloneAnimationProfile("ModernCarLightsMeadeSheriff","ModernCarLightsCityLouisvillePD")
PZKA.CloneAnimationProfile("ModernCarLightsWestPoint","ModernCarLightsCityLouisvillePD")

PZKA.CreateAnimationProfile("OffRoad","PZKA_Vehicles_OffRoad_a","PZKA_OffRoad_animatedDoors", {"FLW","FRW"}, "PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("PickUpTruck","PZKA_Vehicles_PickUpTruck_a","PZKA_PickUpTruck_animatedDoors", {"FLW","FRW"}, "PZKA_OpenBedVersion")
PZKA.CloneAnimationProfile("PickUpTruck_Camo","PickUpTruck","PZKA_Vehicles_PickUpTruck_NoRandom_a","PZKA_PickUpTruck_norandom_animatedDoors")
PZKA.CloneAnimationProfile("PickUpTruckJPLandscaping","PickUpTruck_Camo")
PZKA.CloneAnimationProfile("PickUpTruckMccoy","PickUpTruck_Camo")
PZKA.CloneAnimationProfile("PickUpTruckLightsAirport","PickUpTruck_Camo","PZKA_Vehicles_PickUpTruckLights_NoRandom_a")
PZKA.CloneAnimationProfile("PickUpTruckLightsAirportSecurity","PickUpTruckLightsAirport")
PZKA.CloneAnimationProfile("PickUpTruckLightsFire","PickUpTruckLightsAirport")
PZKA.CloneAnimationProfile("PickUpTruckLightsFossoil","PickUpTruckLightsAirport")
PZKA.CloneAnimationProfile("PickUpTruckLightsRanger","PickUpTruckLightsAirport")

PZKA.CreateAnimationProfile("PickUpVan","PZKA_Vehicles_PickUpVan_a","PZKA_PickUpVan_animatedDoors", {"FLW","FRW"}, "PZKA_TrunkDoorVersion")
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

PZKA.CreateAnimationProfile("SmallCar","PZKA_Vehicles_SmallCar_a","PZKA_SmallCar_animatedDoors", {"FLW","FRW"}, "PZKA_TrunkDoorVersion", {"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("SmallCar02","PZKA_Vehicles_SmallCar02_a","PZKA_SmallCar02_animatedDoors", {"FLW","FRW"}, "PZKA_TrunkDoorVersion", {"FL","FR","RL","RR"})

PZKA.CreateAnimationProfile("SportsCar","PZKA_Vehicles_SportsCar_a","PZKA_SportsCar_animatedDoors", {"FLW","FRW"}, "PZKA_TrunkDoorVersion", {})

PZKA.CreateAnimationProfile("StepVan","PZKA_Vehicle_StepVan_a","PZKA_StepVan_animatedDoors", {"FLW","FRW"}, "PZKA_RearDoorVersion")
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

PZKA.CreateAnimationProfile("SUV","PZKA_Vehicles_SUV_a", "PZKA_SUV_animatedDoors", {"FLW","FRW","RLW","RRW"}, "PZKA_TrunkDoorVersion")

PZKA.CreateAnimationProfile("Van","PZKA_Vehicles_Van_a","PZKA_Van_animatedDoors", {"FLW","FRW"}, "PZKA_RearDoorVersion")
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

PZKA.CreateAnimationProfile("VanSeats","PZKA_Vehicles_VanSeats_a","PZKA_VanSeats_animatedDoors", {"FLW","FRW","ML","MR"}, "PZKA_RearDoorVersion",{"FL","FR","ML","MR","RL","RR"})
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