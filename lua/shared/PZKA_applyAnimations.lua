local VVA = require "VVA_core"

if not VVA.addToProfileNR then
    VVA.addToProfileNR = function(profileName, templates)
        VVA.addToProfile(profileName, templates)
        local NRtemplates = {}
        for i, template in pairs(templates) do
            if (template) then
                NRtemplates[i] = template
            end
        end
        VVA.addToProfile(profileName.."_nr", NRtemplates)
    end
end

local PZKA = require "PZKA_addAnimations"
require "VVA_applyAnimations"
require "VVA_misc_Profiles"

local SLE =  VVA.CheckModEnabled("SimpleLightbarsExpandedPZK")
if SLE then
    VVA.addToProfile("PZKA_sle_lightbar", {"VVA_sle_lightbar"})
    VVA.addToProfile("PZKA_sle_taxi", {"VVA_sle_taxi"})
else
    VVA.addToProfile("PZKA_sle_lightbar", {"VVA_t_lightbar"})
    VVA.addToProfile("PZKA_sle_taxi", {"VVA_t_taxi"})
end
local CullSeats = VVA.CheckModEnabled("VVA_cullseats") or VVA.CheckModEnabled("PZKA_cullseats")
local VVE = VVA.CheckModEnabled("VVehicleEnhancer") or VVA.CheckModEnabled("Ze_VVehicleEnhancer_42B")


-- BEGIN: VVA-Related
--VVA.addToProfile("VVA_Normal_Base",{"VVA_Normal_Interior","VVA_Normal_SeatsF","VVA_Normal_Windshield"});
VVA.addToProfileNR("VVA_PZK_Normal_Common",{"VVA_Normal_Front","VVA_PZK_Normal_hood"})

VVA.addToProfileNR("VVA_PZK_Normal_Rear",{"VVA_Wagon_RearLeft","VVA_PZK_Normal_RearRight"})
--VVA.addToProfile("VVA_PZK_Normal_Rear_nr",{"VVA_Wagon_RearLeft_nr","VVA_PZK_Normal_RearRight_nr"})

VVA.addToProfile("pzka_Normal_SedanRearF",{"VVA_Normal_Base","VVA_PZKASedan_RearWindow","VVA_PZKASedan_SedanF_Decor"})
VVA.addToProfile("pzka_Normal_SedanRearV",{"VVA_Normal_Base","VVA_Normal_RearWindow","VVA_PZKASedan_SedanV_Decor"})

VVA.ApplyTemplateToVehicle("PZKA_Normal_Sedan_F","VVA_Vehicles_PZKASedan_SedanF",{"VVA_PZK_Normal_Common","VVA_PZK_Normal_Rear"})
VVA.ApplyTemplateToVehicle("PZKA_Normal_Sedan_F_nr","VVA_Vehicles_PZKASedan_SedanF_nr",{"VVA_PZK_Normal_Common_nr","VVA_PZK_Normal_Rear_nr"})


VVA.ApplyTemplateToVehicle("PZKA_Normal_Sedan_V","VVA_Vehicles_PZKASedan_SedanV",{"VVA_PZK_Normal_Common","VVA_Normal_Rear"})
VVA.ApplyTemplateToVehicle("PZKA_Normal_Sedan_V_nr","VVA_Vehicles_PZKASedan_SedanV_nr",{"VVA_PZK_Normal_Common_nr","VVA_Normal_Rear_nr"})

-- Cerise Sedan 
VVA.addToProfileNR("VVA_PZK_Normal_CeriseSedan",{"VVA_PZK_Normal_Cerise_FrontFill","VVA_PZKASedan_Cerise_RearFill","VVA_PZKASedan_Cerise_Trunk"})
--VVA.addToProfile("VVA_PZK_Normal_CeriseSedan_nr",{"VVA_PZK_Normal_Cerise_FrontFill_nr","VVA_PZKASedan_Cerise_RearFill_nr","VVA_PZKASedan_Cerise_Trunk_nr"})

VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedan","PZKA_Normal_Sedan_F",{"4SeatsR","pzka_Normal_SedanRearF","VVA_Normal_SeatsR","VVA_PZK_Normal_CeriseSedan"})
VVA.CopyTemplateToVehicle("pzkChevalierCeriseDetective","pzkChevalierCeriseSedan",{"VVA_t_lightbar","VVA_NormalBars_Decor","VVA_PZK_Normal_Detective_Lightbar"})

VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedan_nr","PZKA_Normal_Sedan_F_nr",{"4SeatsR","pzka_Normal_SedanRearF","VVA_Normal_SeatsR","VVA_PZK_Normal_CeriseSedan_nr"})
VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedanFire","pzkChevalierCeriseSedan_nr",{"VVA_NormalBars_Decor","VVA_t_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedanLSU","pzkChevalierCeriseSedanFire")
VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedanMall","pzkChevalierCeriseSedanFire")

VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedanPolice","pzkChevalierCeriseSedan_nr",{"VVA_NormalBars_Decor","PZKA_sle_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedanPoliceKST","pzkChevalierCeriseSedanPolice")
VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedanPoliceLouisvilleCounty","pzkChevalierCeriseSedanPolice")
VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedanPoliceMuldraughPolice","pzkChevalierCeriseSedanPolice")
VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedanPoliceBulletinSheriff","pzkChevalierCeriseSedanPolice")

VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedanTaxi","pzkChevalierCeriseSedan_nr",{"PZKA_sle_taxi","VVA_Normal_Taxi"})

-- Hellion Sedan
VVA.addToProfileNR("VVA_PZK_Normal_HellionSedan",{"VVA_PZK_Normal_Hellion_FrontFill","VVA_PZKASedan_Hellion_RearFill","VVA_PZKASedan_Hellion_Trunk"})

VVA.CopyTemplateToVehicle("pzkDashHellion","PZKA_Normal_Sedan_F",{"4SeatsR","pzka_Normal_SedanRearF","VVA_Normal_SeatsR","VVA_PZK_Normal_HellionSedan"})
VVA.CopyTemplateToVehicle("pzkDashHellionDetective","pzkDashHellion",{"VVA_t_lightbar","VVA_NormalBars_Decor","VVA_PZK_Normal_Detective_Lightbar"})

VVA.CopyTemplateToVehicle("pzkDashHellion_nr","PZKA_Normal_Sedan_F_nr",{"4SeatsR","pzka_Normal_SedanRearF","VVA_Normal_SeatsR","VVA_PZK_Normal_HellionSedan_nr"})
VVA.CopyTemplateToVehicle("pzkDashHellionTaxi","pzkDashHellion_nr",{"PZKA_sle_taxi","VVA_PZK_Normal_short_Taxi"})

-- Mayor Sedan
VVA.addToProfileNR("VVA_PZK_Normal_MayorSedan",{"VVA_PZK_Normal_Mayor_FrontFill","VVA_PZKASedan_Mayor_RearFill","VVA_PZKASedan_Cerise_Trunk"})

VVA.CopyTemplateToVehicle("pzkDashMayor","PZKA_Normal_Sedan_F",{"4SeatsR","pzka_Normal_SedanRearF","VVA_Normal_SeatsR","VVA_PZK_Normal_MayorSedan"})
VVA.CopyTemplateToVehicle("Vehicles_pzkDashMayor","pzkDashMayor")
VVA.CopyTemplateToVehicle("pzkDashMayorDetective","pzkDashMayor",{"VVA_t_lightbar","VVA_NormalBars_Decor","VVA_PZK_Normal_Detective_Lightbar"})

VVA.CopyTemplateToVehicle("pzkDashMayor_nr","PZKA_Normal_Sedan_F_nr",{"4SeatsR","pzka_Normal_SedanRearF","VVA_Normal_SeatsR","VVA_PZK_Normal_MayorSedan_nr"})
VVA.CopyTemplateToVehicle("pzkDashMayorLSU","pzkDashMayor_nr",{"VVA_NormalBars_Decor","VVA_t_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkDashMayorMall","pzkDashMayorLSU")

VVA.CopyTemplateToVehicle("pzkDashMayorPolice","pzkDashMayor_nr",{"VVA_NormalBars_Decor","PZKA_sle_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkDashMayorPoliceMuldraughPolice","pzkDashMayorPolice")
VVA.CopyTemplateToVehicle("pzkDashMayorPoliceKST","pzkDashMayorPolice")
VVA.CopyTemplateToVehicle("pzkDashMayorPoliceLouisvilleCounty","pzkDashMayorPolice")
VVA.CopyTemplateToVehicle("pzkDashMayorPoliceBulletinSheriff","pzkDashMayorPolice")
VVA.CopyTemplateToVehicle("pzkDashMayorPolice","pzkDashMayor_nr",{"VVA_NormalBars_Decor","PZKA_sle_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkDashMayorPoliceMuldraughPolice","pzkDashMayorPolice")
VVA.CopyTemplateToVehicle("pzkDashMayorPoliceKST","pzkDashMayorPolice")
VVA.CopyTemplateToVehicle("pzkDashMayorPoliceLouisvilleCounty","pzkDashMayorPolice")
VVA.CopyTemplateToVehicle("pzkDashMayorPoliceBulletinSheriff","pzkDashMayorPolice")

VVA.CopyTemplateToVehicle("pzkDashMayorTaxi","pzkDashMayor_nr",{"PZKA_sle_taxi","VVA_PZK_Normal_short_Taxi"})
VVA.CopyTemplateToVehicle("pzkDashMayorTaxi","pzkDashMayor_nr",{"PZKA_sle_taxi","VVA_PZK_Normal_short_Taxi"})

-- Rapier Sedan
VVA.addToProfileNR("VVA_PZK_Normal_RapierSedan",{"VVA_PZK_Normal_Rapier_FrontFill","VVA_PZKASedan_Rapier_RearFill","VVA_PZKASedan_Cerise_Trunk"})

VVA.CopyTemplateToVehicle("pzkDashRapier","PZKA_Normal_Sedan_F",{"4SeatsR","pzka_Normal_SedanRearF","VVA_Normal_SeatsR","VVA_PZK_Normal_RapierSedan"})
VVA.CopyTemplateToVehicle("Vehicles_pzkDashRapier","pzkDashRapier")
VVA.CopyTemplateToVehicle("pzkDashRapierDetective","pzkDashRapier",{"VVA_t_lightbar","VVA_PZK_Normal_Detective_Lightbar"})

-- TWD Sedan
VVA.addToProfileNR("VVA_PZK_Normal_TWDSedan",{"VVA_PZK_Normal_TWD_FrontFill","VVA_PZKASedan_TWD_RearFill","VVA_PZKASedan_TWD_Trunk"})

VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD","PZKA_Normal_Sedan_V",{"4SeatsR","pzka_Normal_SedanRearV","VVA_Normal_SeatsR","VVA_PZK_Normal_TWDSedan"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDDetective","pzkFranklinTriumphTWD",{"VVA_t_lightbar","VVA_NormalBars_Decor","VVA_PZK_Normal_Detective_Lightbar"})

VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD_nr","PZKA_Normal_Sedan_V_nr",{"4SeatsR","pzka_Normal_SedanRearV","VVA_Normal_SeatsR","VVA_PZK_Normal_TWDSedan_nr"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDFire","pzkFranklinTriumphTWD_nr",{"VVA_NormalBars_Decor","VVA_t_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDLSU","pzkFranklinTriumphTWDFire")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDMall","pzkFranklinTriumphTWDFire")

VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPolice","pzkFranklinTriumphTWD_nr",{"VVA_NormalBars_Decor","PZKA_sle_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPoliceBulletinSheriff","pzkFranklinTriumphTWDPolice")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPoliceKST","pzkFranklinTriumphTWDPolice")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPoliceLouisvilleCounty","pzkFranklinTriumphTWDPolice")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPoliceMuldraughPolice","pzkFranklinTriumphTWDPolice")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPolice","pzkFranklinTriumphTWD_nr",{"VVA_NormalBars_Decor","PZKA_sle_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPoliceBulletinSheriff","pzkFranklinTriumphTWDPolice")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPoliceKST","pzkFranklinTriumphTWDPolice")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPoliceLouisvilleCounty","pzkFranklinTriumphTWDPolice")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPoliceMuldraughPolice","pzkFranklinTriumphTWDPolice")

VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDTaxi","pzkFranklinTriumphTWD_nr",{"PZKA_sle_taxi","VVA_PZK_Normal_short_Taxi"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDTaxi","pzkFranklinTriumphTWD_nr",{"PZKA_sle_taxi","VVA_PZK_Normal_short_Taxi"})

-- TWD91 Sedan
VVA.addToProfileNR("VVA_PZK_Normal_TWD91Sedan",{"VVA_PZK_Normal_TWD_FrontFill","VVA_PZKASedan_TWD91_RearFill","VVA_PZKASedan_TWD_Trunk"})

VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91","PZKA_Normal_Sedan_V",{"4SeatsR","pzka_Normal_SedanRearV","VVA_Normal_SeatsR","VVA_PZK_Normal_TWD91Sedan"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91Detective","pzkFranklinTriumphTWD91",{"VVA_t_lightbar","VVA_NormalBars_Decor","VVA_PZK_Normal_Detective_Lightbar"})

VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91_nr","PZKA_Normal_Sedan_V_nr",{"4SeatsR","pzka_Normal_SedanRearV","VVA_Normal_SeatsR","VVA_PZK_Normal_TWD91Sedan_nr"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91LSU","pzkFranklinTriumphTWD91_nr",{"VVA_NormalBars_Decor","VVA_t_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91Mall","pzkFranklinTriumphTWD91LSU")

VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91Police","pzkFranklinTriumphTWD91_nr",{"VVA_NormalBars_Decor","PZKA_sle_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91PoliceBulletinSheriff","pzkFranklinTriumphTWD91Police")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91PoliceKST","pzkFranklinTriumphTWD91Police")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91PoliceLouisvilleCounty","pzkFranklinTriumphTWD91Police")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91PoliceMuldraughPolice","pzkFranklinTriumphTWD91Police")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91Police","pzkFranklinTriumphTWD91_nr",{"VVA_NormalBars_Decor","PZKA_sle_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91PoliceBulletinSheriff","pzkFranklinTriumphTWD91Police")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91PoliceKST","pzkFranklinTriumphTWD91Police")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91PoliceLouisvilleCounty","pzkFranklinTriumphTWD91Police")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWD91PoliceMuldraughPolice","pzkFranklinTriumphTWD91Police")

-- Homelander Sedan
VVA.addToProfileNR("VVA_PZK_Normal_HomelanderSedan",{"VVA_PZK_Normal_Homelander_FrontFill","VVA_PZKASedan_Homelander_RearFill","VVA_PZKASedan_Homelander_Trunk"})

VVA.CopyTemplateToVehicle("pzkFranklinHomelander","PZKA_Normal_Sedan_V",{"4SeatsR","pzka_Normal_SedanRearV","VVA_Normal_SeatsR","VVA_PZK_Normal_HomelanderSedan"})
VVA.CopyTemplateToVehicle("pzkFranklinHomelanderDetective","pzkFranklinHomelander",{"VVA_t_lightbar","VVA_PZK_Normal_Detective_Lightbar"})


-- Nyala42 Sedan
--[[
VVA.addToProfileNR("VVA_PZK_Normal_Nyala42Sedan",{"VVA_PZK_Normal_Nyala42_FrontFill","VVA_PZKASedan_Nyala42_RearFill","VVA_PZKASedan_Nyala42_Trunk"})

VVA.ApplyTemplateToVehicle("PZKA_Normal_Nyala42","VVA_Vehicles_PZKASedan_SedanV",{"VVA_Normal_Front","VVA_PZK_Normal_hood","VVA_PZK_Normal_Nyala42_Rear"})
VVA.ApplyTemplateToVehicle("PZKA_Normal_Nyala42_nr","VVA_Vehicles_PZKASedan_SedanV_nr",{"VVA_Normal_Front_nr","VVA_PZK_Normal_hood_nr","VVA_PZK_Normal_Nyala42_Rear_nr"})

VVA.CopyTemplateToVehicle("PZKA_Nyala_Sedan","PZKA_Normal_Nyala42",{"4SeatsR","pzka_Normal_SedanRearV","VVA_Normal_SeatsR","VVA_PZK_Normal_Nyala42Sedan"})
VVA.CopyTemplateToVehicle("PZKA_Nyala_Sedan_nr","PZKA_Normal_Nyala42",{"4SeatsR","pzka_Normal_SedanRearV","VVA_Normal_SeatsR","VVA_PZK_Normal_Nyala42Sedan_nr"})

VVA.CopyTemplateToVehicle("CarNormal","PZKA_Nyala_Sedan")

VVA.CopyTemplateToVehicle("CarTaxi","PZKA_Nyala_Sedan_nr",{"VVA_sle_taxi","VVA_Normal_Taxi"})
VVA.CopyTemplateToVehicle("CarTaxi2","CarTaxi")
VVA.CopyTemplateToVehicle("CarLightsBulletinSheriff","PZKA_Nyala_Sedan_nr",{"VVA_NormalBars_Decor","VVA_sle_lightbar","VVA_Normal_Lightbar"})
VVA.CopyTemplateToVehicle("CarLightsKST","CarLightsBulletinSheriff")
VVA.CopyTemplateToVehicle("CarLightsLouisvilleCounty","CarLightsBulletinSheriff")
VVA.CopyTemplateToVehicle("CarLightsMuldraughPolice","CarLightsBulletinSheriff")

VVA.CopyTemplateToVehicle("pzkChevalierNyalaDetective","CarNormal",{"VVA_t_lightbar","VVA_NormalBars_Decor","VVA_PZK_Normal_Detective_Lightbar"})
VVA.CopyTemplateToVehicle("pzkChevalierNyalaLSU","CarLightsRanger")
--]]
-- Nyala Sedan
--[-[
VVA.CopyTemplateToVehicle("PZKA_Nyala_Sedan_nr","VVA_CarNormal_nr")
VVA.CopyTemplateToVehicle("pzkChevalierNyalaDetective","PZKA_Nyala_Sedan_nr",{"VVA_t_lightbar","VVA_NormalBars_Decor","VVA_PZK_Normal_Detective_Lightbar"})
VVA.CopyTemplateToVehicle("CarLightsRanger","PZKA_Nyala_Sedan_nr",{"VVA_t_lightbar","VVA_Normal_Lightbar","VVA_NormalBars_Decor"})
VVA.CopyTemplateToVehicle("pzkChevalierNyalaLSU","PZKA_Nyala_Sedan_nr",{"VVA_t_lightbar","VVA_Normal_Lightbar"})
--]]
VVA.CopyTemplateToVehicle("pzkChevalierNyalaMall", "pzkChevalierNyalaLSU")

-- Hearse
VVA.ApplyTemplateToVehicle("pzkHearse","VVA_Vehicles_Hearse_nr",{"4SeatsR","VVA_Normal_Base","VVA_Hearse_SeatsR","VVA_PZK_Normal_Common_nr","VVA_Hearse_Rear_nr","VVA_Hearse_Trunk_nr","VVA_PZK_Normal_Nyala_FrontFill_nr","VVA_Hearse_RearLights"})

-- Limo
VVA.ApplyTemplateToVehicle("PZKA_Limo_Base","VVA_Vehicles_Limo",{"4SeatsR","VVA_Normal_Base","VVA_Limo_SeatsR","VVA_PZK_Normal_Common","VVA_Limo_Decor"})
VVA.CopyTemplateToVehicle("pzkLimo","PZKA_Limo_Base",{"VVA_Limo_Rear","PZKA_Limo_RearWindow","VVA_PZK_Normal_VariableFrontFill","VVA_Limo_VariableRearFill","VVA_Limo_Homelander_Trunk_Variable"})
--VVA.CopyTemplateToVehicle("pzkLimo","PZKA_Limo_Base",{"VVA_Limo_Nyala42_Rear","VVA_PZK_Normal_Nyala42_FrontFill","VVA_Limo_Cerise_Trunk","VVA_Limo_Nyala42_RearFill"})
--VVA.CopyTemplateToVehicle("pzkChevalierCeriseLimo","PZKA_Limo_Base",{"VVA_Limo_Rear","VVA_PZK_Normal_Cerise_FrontFill","VVA_Limo_Cerise_Trunk","VVA_Limo_Cerise_RearFill"})
--VVA.CopyTemplateToVehicle("pzkDashRapierLimo","PZKA_Limo_Base",{"VVA_Limo_Rear","VVA_PZK_Normal_Rapier_FrontFill","VVA_Limo_Cerise_Trunk","VVA_Limo_Rapier_RearFill"})
--VVA.CopyTemplateToVehicle("pzkFranklinHomelanderLimo","PZKA_Limo_Base",{"VVA_Limo_Rear","VVA_PZK_Normal_Homelander_FrontFill","VVA_Limo_Homelander_Trunk","VVA_Limo_Homelander_RearFill"})
--VVA.CopyTemplateToVehicle("pzkDashHellionLimo","PZKA_Limo_Base",{"VVA_Limo_Rear","VVA_PZK_Normal_Hellion_FrontFill","VVA_Limo_Hellion_Trunk","VVA_Limo_Hellion_RearFill"})

-- Station Wagon
VVA.ApplyTemplateToVehicle("PZKA_Normal_Wagon","VVA_Vehicles_PZKAWagon",{"4SeatsR","VVA_Normal_Base","VVA_Normal_SeatsR","VVA_PZK_Normal_Common","VVA_PZK_Normal_Rear"})
VVA.ApplyTemplateToVehicle("PZKA_Normal_Wagon_nr","VVA_Vehicles_PZKAWagon_nr",{"4SeatsR","VVA_Normal_Base","VVA_Normal_SeatsR","VVA_PZK_Normal_Common_nr","VVA_PZK_Normal_Rear_nr"})

VVA.CopyTemplateToVehicle("pzkCeriseStationWagon","PZKA_Normal_Wagon",{"VVA_PZK_Normal_Cerise_FrontFill","VVA_PZKAWagon_Cerise_RearFill","VVA_PZKAWagon_Trunk"})
VVA.CopyTemplateToVehicle("pzkRapierStationWagon","PZKA_Normal_Wagon",{"VVA_PZK_Normal_Rapier_FrontFill","VVA_PZKAWagon_Cerise_RearFill","VVA_PZKAWagon_Trunk"})
VVA.CopyTemplateToVehicle("pzkDashMayorStationWagon","PZKA_Normal_Wagon",{"VVA_PZK_Normal_Mayor_FrontFill","VVA_PZKAWagon_Mayor_RearFill","VVA_PZKAWagon_Mayor_Trunk"})
VVA.CopyTemplateToVehicle("pzkTriumphStationWagon","PZKA_Normal_Wagon",{"VVA_PZK_Normal_TWD_FrontFill","VVA_PZKAWagon_TWD_RearFill","VVA_PZKAWagon_Trunk"})
VVA.CopyTemplateToVehicle("pzkTriumphTWDStationWagon", "pzkTriumphStationWagon")
VVA.CopyTemplateToVehicle("pzkTriumphStationWagonTaxi","PZKA_Normal_Wagon_nr",{"VVA_PZK_Normal_TWD_FrontFill_nr","VVA_PZKAWagon_TWD_RearFill_nr","VVA_PZKAWagon_Trunk_nr", "PZKA_sle_taxi","VVA_PZK_Normal_wagon_Taxi"})
VVA.CopyTemplateToVehicle("pzkTriumphTWDStationWagonTaxi", "pzkTriumphStationWagonTaxi")

VVA.ApplyTemplateToVehicle("pzkTriumphTWDStationWagonGriswold","VVA_Vehicles_PZKAWagon_Grisworld_nr",{"4SeatsR","VVA_Normal_Base","VVA_Normal_SeatsR","VVA_PZK_Normal_Common_nr","VVA_PZK_Normal_Rear_nr","VVA_PZKAWagon_Grisworld_Trunk_nr","VVA_PZKAWagon_Grisworld_FrontFill_nr","VVA_PZKAWagon_Grisworld_RearLights"})
VVA.ApplyTemplateToVehicle("pzkHearseGhoulbusters","VVA_Vehicles_PZKAWagon_Ghoulbuster_nr",{"4SeatsR","VVA_Normal_Base","VVA_Normal_SeatsR","VVA_PZK_Normal_Common_nr","VVA_PZK_Normal_Rear_nr","VVA_Hearse_Ghoulbuster_Trunk_nr","VVA_PZKAWagon_Ghoulbuster_FrontFill_nr","VVA_PZKAWagon_Ghoulbuster_RearLights","VVA_t_lightbar","VVA_Hearse_Lightbar"})

-- K9
if VVA.CheckModEnabled("STFRMain") then
--VVA.addToProfile("VVA_PZK_Normal_K9_Common",{"VVA_Normal_Base","VVA_NormalKennel_Decor"})
VVA.ApplyTemplateToVehicle("PZKA_NormalF_F9Base","VVA_Vehicles_PZKASedan_SedanF_nr",{"2SeatsF","VVA_NormalKennel_Decor","pzka_Normal_SedanRearF","VVA_PZK_Normal_Common_nr","VVA_Wagon_K9_Rear_nr"})
VVA.ApplyTemplateToVehicle("PZKA_NormalV_F9Base","VVA_Vehicles_PZKASedan_SedanV_nr",{"2SeatsF","VVA_NormalKennel_Decor","pzka_Normal_SedanRearF","VVA_PZK_Normal_Common_nr","VVA_Normal_K9_Rear_nr"})
---- Cerise
VVA.CopyTemplateToVehicle("pzkChevalierCeriseSedanPoliceK9","PZKA_NormalF_F9Base",{"VVA_PZK_Normal_CeriseSedan"})
VVA.CopyTemplateToVehicle("pzkDashMayorPoliceK9","PZKA_NormalF_F9Base",{"VVA_PZK_Normal_MayorSedan"})

VVA.CopyTemplateToVehicle("pzkFranklinTriumphTWDPoliceK9","PZKA_NormalV_F9Base",{"VVA_PZK_Normal_TWDSedan"})


end

-- Pickup
VVA.addToProfile("PZKA_Pickup_Common",{"VVA_Pickup_Interior","VVA_Pickup_SeatsF","VVA_PZK_Pickup_Windshield","VVA_PZK_Pickup_FrontLights"})
VVA.addToProfile("PZKA_Pickup_Pickup",{"PZKA_Pickup_Common","VVA_Pickup_RearWindow"})

VVA.ApplyTemplateToVehicle("pzkChevalierTowTruck","VVA_Vehicles_PZK_Pickup_Tow",{"2SeatsF","PZKA_Pickup_Pickup","VVA_PZK_Pickup_hood","VVA_Pickup_Front","VVA_t_lightbar","VVA_Pickup_Lightbar","VVA_PZK_Pickup_Tow_RearLights"})
VVA.ApplyTemplateToVehicle("pzkChevalierTowTruck_nr","VVA_Vehicles_PZK_Pickup_Tow_nr",{"2SeatsF","PZKA_Pickup_Pickup","VVA_PZK_Pickup_hood_nr","VVA_Pickup_Front_nr","VVA_t_lightbar","VVA_Pickup_Lightbar","VVA_PZK_Pickup_Tow_RearLights"})
VVA.CopyTemplateToVehicle("pzkChevalierTowTruckFire","pzkChevalierTowTruck_nr")
VVA.CopyTemplateToVehicle("pzkChevalierTowTruckPolice","pzkChevalierTowTruck_nr")
VVA.CopyTemplateToVehicle("pzkChevalierTowTruckPoliceLouisvilleCounty","pzkChevalierTowTruck_nr")
VVA.CopyTemplateToVehicle("pzkChevalierTowTruckStatePolice","pzkChevalierTowTruck_nr")

VVA.ApplyTemplateToVehicle("pzkChevalierD100Pickup","VVA_Vehicles_PZK_Pickup_D100",{"2SeatsF","PZKA_Pickup_Pickup","VVA_PZK_Pickup_hood","VVA_Pickup_Front","VVA_PZK_Pickup_D100_RearLights"})
VVA.ApplyTemplateToVehicle("pzkChevalierD100PickupCustom","VVA_Vehicles_PZK_Pickup_D100_nr",{"2SeatsF","PZKA_Pickup_Pickup","VVA_PZK_Pickup_hood_nr","VVA_Pickup_Front_nr","VVA_PZK_Pickup_D100_RearLights"})

VVA.TeplateHandler("VVA_Pickup","Base").setModel("VVA_Vehicles_PZK_Pickup").minus({"VVA_Pickup_Common","VVA_Pickup_hood"}).plus({"PZKA_Pickup_Pickup","VVA_PZK_Pickup_hood","VVA_Pickup_RearLights"})
VVA.TeplateHandler("VVA_PickupVan","Base").setModel("VVA_Vehicles_PZK_Pickup_Van").minus({"VVA_PickupVan_Common","VVA_Pickup_hood"}).plus({"PZKA_Pickup_Common","VVA_PZK_Pickup_hood","VVA_Pickup_RearLights"})

VVA.TeplateHandler("VVA_Pickup_nr","Base").setModel("VVA_Vehicles_PZK_Pickup_nr").minus({"VVA_Pickup_Common","VVA_Pickup_hood_nr"}).plus({"PZKA_Pickup_Pickup","VVA_PZK_Pickup_hood_nr","VVA_Pickup_RearLights"})
VVA.TeplateHandler("VVA_PickupVan_nr","Base").setModel("VVA_Vehicles_PZK_Pickup_Van_nr").minus({"VVA_PickupVan_Common","VVA_Pickup_hood_nr"}).plus({"PZKA_Pickup_Common","VVA_PZK_Pickup_hood_nr","VVA_Pickup_RearLights"})


VVA.CopyTemplateToVehicle("pzkPickUpTruckPublicWorks","VVA_Pickup_lightbarF")

VVA.CopyTemplateToVehicle("pzkPickUpTruckWoodboarded","VVA_Pickup")

-- VVans
VVA.addToProfile("pzka_VanBase",{"VVA_Van_Interior","VVA_Van_Windshield","VVA_Van_SeatsF"})
VVA.addToProfile("VVA_Van_VBase",{"pzka_VanBase","VVA_Van_FrontLights","VVA_Van_RearLights","VVA_Van_Fill_Decor"})

VVA.CopyTemplateToVehicle("pzkVanilaVanAmbulance","VVA_VanAmbulance")
VVA.CopyTemplateToVehicle("pzkVanMcCoy","VVA_VanCommecial")
VVA.CopyTemplateToVehicle("pzkVanGigamart","VVA_VanCommecial")

VVA.ApplyTemplateToVehicle("pzkVanMultivan","VVA_Vehicles_VVan_Multi",{"4SeatsR","VVA_Van_SeatsMR","VVA_Van_VBase","VVA_Van_hood","VVA_Van_Front","VVA_Van_Open_Rear","VVA_Van_Trunk_Basic","VVA_VVan_Multi_Decor"})
VVA.ApplyTemplateToVehicle("pzkVanMultivanPayday","VVA_Vehicles_VVan_Multi_nr",{"4SeatsR","VVA_Van_SeatsMR","VVA_Van_VBase","VVA_Van_hood_nr","VVA_Van_Front_nr","VVA_VVan_Blind_Rear_nr","VVA_Van_Trunk_Basic_nr","VVA_VVan_Multi_Decor"})
VVA.CopyTemplateToVehicle("pzkVanZSquad","pzkVanMultivanPayday")

VVA.ApplyTemplateToVehicle("pzka_VVan_Multi_nr","VVA_Vehicles_VVan_Multi_nr",{"4SeatsR","VVA_Van_SeatsMR","VVA_Van_VBase","VVA_Van_hood_nr","VVA_Van_Front_nr","VVA_Van_Open_Rear_nr","VVA_Van_Trunk_Basic_nr","VVA_VVan_Multi_Decor"})
VVA.CopyTemplateToVehicle("pzkVanPublicWorks","pzka_VVan_Multi_nr",{"VVA_t_lightbar","VVA_Van_Bars_Decor","VVA_VVan_Lightbar"})

VVA.CopyTemplateToVehicle("pzkVanPolice","pzka_VVan_Multi_nr",{"PZKA_sle_lightbar","VVA_Van_Bars_Decor","VVA_VVan_Lightbar"})
VVA.CopyTemplateToVehicle("pzkVanPoliceLouisvillePD","pzkVanPolice")
VVA.CopyTemplateToVehicle("pzkVanPoliceMeadeSheriff","pzkVanPoliceLouisvillePD")
VVA.CopyTemplateToVehicle("pzkVanPoliceWestPoint","pzkVanPoliceLouisvillePD")

VVA.ApplyTemplateToVehicle("pzkVanSeatsTaxi","VVA_Vehicles_Van_seats_nr",{"6Seats","VVA_VanSeats_Base","VVA_Van_hood_nr","VVA_Van_Front_nr","VVA_VVan_Open_Middle_nr","VVA_Van_Trunk_Seats"})
VVA.CopyTemplateToVehicle("Vehicles_VanSeatsTaxi","pzkVanSeatsTaxi")

---- Camper

VVA.addToProfile("VVA_Van_Trunk_Camper",{"VVA_Van_Trunk","VVA_Van_Camper_RearWindow"})
VVA.addToProfile("VVA_Van_Camper",{"VVA_Van_VBase","VVA_Van_Camper_Decor","VVA_Van_CamperFurniture_Decor"})

VVA.ApplyTemplateToVehicle("pzkVanCamper","VVA_Vehicles_Van_Camper",{"2SeatsF","VVA_Van_Camper","VVA_Van_hood","VVA_Van_Front","VVA_Van_Camper_Rear","VVA_Van_Trunk_Camper"})

---- Brig

VVA.addToProfile("VVA_Van_Bed",{"pzka_VanBase","VVA_Van_FrontLights","VVA_Van_Bed_RearLights","VVA_Van_Bed_SeatsR","VVA_Van_Bed_RearWindow"})
VVA.ApplyTemplateToVehicle("pzkVanBrig","VVA_Vehicles_Van_Bed",{"4SeatsR","VVA_Van_Bed","VVA_Van_hood","VVA_Van_Front","VVA_Van_Bed_Rear"})

---- CVans

VVA.addToProfile("pzka_CVanBase",{"pzka_VanBase","VVA_CVan_interior_Decor"})

VVA.addToProfile("pzka_CVanFill",{"VVA_CVan_VariableFrontFill","VVA_CVan_RearFill"})
VVA.addToProfile("pzka_CVan3Fill",{"VVA_CVan3_FrontFill","VVA_CVan_RearFill"})
VVA.addToProfile("pzka_CVan1Fill_nr",{"VVA_CVan1_FrontFill_nr","VVA_CVan_RearFill_nr"})
VVA.addToProfile("pzka_CVan2Fill_nr",{"VVA_CVan2_FrontFill_nr","VVA_CVan_RearFill_nr"})
VVA.addToProfile("pzka_CVan3Fill_nr",{"VVA_CVan3_FrontFill_nr","VVA_CVan_RearFill_nr"})
VVA.addToProfile("pzka_CVan_TrunkSeats",{"VVA_CVan_Trunk","VVA_Van_seats_RearWindow"})

VVA.ApplyTemplateToVehicle("pzkCVanCargo","VVA_Vehicles_CVan_Cargo",{"2SeatsF","pzka_CVanBase","pzka_CVanFill","VVA_Van_C_hood","VVA_Van_Front","VVA_CVan_Blind_Trunk","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzkCVan","VVA_Vehicles_CVan_Cargo",{"2SeatsF","pzka_CVanBase","pzka_CVanFill","VVA_Van_C_hood","VVA_Van_Front","VVA_CVan_Trunk","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzkCVanMultivan","VVA_Vehicles_CVan_Multi",{"4SeatsR","pzka_CVanBase","pzka_CVanFill","VVA_Van_C_hood","VVA_Van_Front","VVA_CVan_Rear","VVA_CVan_Trunk","VVA_Van_SeatsMR","VVA_CVan_multi_Decor"})
VVA.ApplyTemplateToVehicle("pzkCVan6Seats","VVA_Vehicles_CVan_Seats",{"6Seats","pzka_CVanBase","pzka_CVanFill","VVA_Van_C_hood","VVA_Van_Front","VVA_CVan_Middle","pzka_CVan_TrunkSeats","VVA_Van_SeatsM","VVA_Van_SeatsR","VVA_CVan_seats_Decor"})

VVA.ApplyTemplateToVehicle("pzkCVanCargo3","VVA_Vehicles_CVan_Cargo",{"2SeatsF","pzka_CVanBase","pzka_CVan3Fill","VVA_Van_C_hood","VVA_Van_Front","VVA_CVan_Blind_Trunk","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzkCVan3","VVA_Vehicles_CVan_Cargo",{"2SeatsF","pzka_CVanBase","pzka_CVan3Fill","VVA_Van_C_hood","VVA_Van_Front","VVA_CVan_Trunk","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzkCVanMultivan3","VVA_Vehicles_CVan_Multi",{"4SeatsR","pzka_CVanBase","pzka_CVan3Fill","VVA_Van_C_hood","VVA_Van_Front","VVA_CVan_Rear","VVA_CVan_Trunk","VVA_Van_SeatsMR","VVA_CVan_multi_Decor"})
VVA.ApplyTemplateToVehicle("pzkCVan6Seats3","VVA_Vehicles_CVan_Seats",{"6Seats","pzka_CVanBase","pzka_CVan3Fill","VVA_Van_C_hood","VVA_Van_Front","VVA_CVan_Middle","pzka_CVan_TrunkSeats","VVA_Van_SeatsM","VVA_Van_SeatsR","VVA_CVan_seats_Decor"})

VVA.ApplyTemplateToVehicle("pzkCVanRail","VVA_Vehicles_CVan_Cargo_nr",{"2SeatsF","pzka_CVanBase","pzka_CVan1Fill_nr","VVA_Van_C_hood_nr","VVA_Van_Front_nr","VVA_CVan_Trunk_nr","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzkCVan2Rail","VVA_Vehicles_CVan_Cargo_nr",{"2SeatsF","pzka_CVanBase","pzka_CVan2Fill_nr","VVA_Van_C_hood_nr","VVA_Van_Front_nr","VVA_CVan_Trunk_nr","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzkCVan3Rail","VVA_Vehicles_CVan_Cargo_nr",{"2SeatsF","pzka_CVanBase","pzka_CVan3Fill_nr","VVA_Van_C_hood_nr","VVA_Van_Front_nr","VVA_CVan_Trunk_nr","VVA_Van_Cargo_Decor"})

---- DVans



VVA.addToProfile("pzka_DVan1Fill",{"VVA_DVan1_FrontFill","VVA_DVan1_RearFill"})
VVA.addToProfile("pzka_DVan2Fill",{"VVA_DVan2_FrontFill","VVA_DVan1_RearFill"})
VVA.addToProfile("pzka_DVan3Fill",{"VVA_DVan3_FrontFill","VVA_DVan3_RearFill"})
VVA.addToProfile("pzka_DVan1Fill_nr",{"VVA_DVan1_FrontFill_nr","VVA_DVan1_RearFill_nr"})
VVA.addToProfile("pzka_DVan2Fill_nr",{"VVA_DVan2_FrontFill_nr","VVA_DVan1_RearFill_nr"})
VVA.addToProfile("pzka_DVan3Fill_nr",{"VVA_DVan3_FrontFill_nr","VVA_DVan3_RearFill_nr"})

VVA.ApplyTemplateToVehicle("pzka_DVanCargo","VVA_Vehicles_DVan_Cargo",{"2SeatsF","pzka_CVanBase","VVA_Van_D_hood","VVA_Van_Front","VVA_CVan_Blind_Trunk","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzka_DVan","VVA_Vehicles_DVan_Cargo",{"2SeatsF","pzka_CVanBase","VVA_Van_D_hood","VVA_Van_Front","VVA_CVan_Trunk","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzka_DVanSpiffo","VVA_Vehicles_DVan_Cargo_nr",{"2SeatsF","pzka_CVanBase","VVA_Van_D_hood_nr","VVA_Van_Front_nr","VVA_CVan_Trunk_nr","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzka_DVanMultivan","VVA_Vehicles_DVan_Multi",{"4SeatsR","pzka_CVanBase","VVA_Van_D_hood","VVA_Van_Front","VVA_Van_Open_Rear","VVA_CVan_Trunk","VVA_Van_SeatsM","VVA_VVan_Multi_Decor"})
VVA.ApplyTemplateToVehicle("pzka_DVan6Seats","VVA_Vehicles_DVan_Seats",{"6Seats","pzka_CVanBase","VVA_Van_D_hood","VVA_Van_Front","VVA_Van_Open_Middle","pzka_CVan_TrunkSeats","VVA_Van_SeatsM","VVA_Van_SeatsR","VVA_Van_seats_Decor"})


VVA.CopyTemplateToVehicle("pzkDVanCargo","pzka_DVanCargo",{"pzka_DVan1Fill"})
VVA.CopyTemplateToVehicle("pzkDVan","pzka_DVan",{"pzka_DVan1Fill"})
VVA.CopyTemplateToVehicle("pzkDVanSpiffo","pzka_DVanSpiffo",{"pzka_DVan1Fill_nr"})
VVA.CopyTemplateToVehicle("pzkDVanMultivan","pzka_DVanMultivan",{"pzka_DVan1Fill"})
VVA.CopyTemplateToVehicle("pzkDVan6Seats","pzka_DVan6Seats",{"pzka_DVan1Fill"})

VVA.CopyTemplateToVehicle("pzkDVanCargo2","pzka_DVanCargo",{"pzka_DVan2Fill"})
VVA.CopyTemplateToVehicle("pzkDVan2","pzka_DVan",{"pzka_DVan2Fill"})
VVA.CopyTemplateToVehicle("pzkDVan2Spiffo","pzka_DVanSpiffo",{"pzka_DVan2Fill_nr"})
VVA.CopyTemplateToVehicle("pzkDVanMultivan2","pzka_DVanMultivan",{"pzka_DVan2Fill"})
VVA.CopyTemplateToVehicle("pzkDVan6Seats2","pzka_DVan6Seats",{"pzka_DVan2Fill"})

VVA.CopyTemplateToVehicle("pzkDVanCargo3","pzka_DVanCargo",{"pzka_DVan3Fill"})
VVA.CopyTemplateToVehicle("pzkDVan3","pzka_DVan",{"pzka_DVan3Fill"})
VVA.CopyTemplateToVehicle("pzkDVan3Spiffo","pzka_DVanSpiffo",{"pzka_DVan3Fill_nr"})
VVA.CopyTemplateToVehicle("pzkDVanMultivan3","pzka_DVanMultivan",{"pzka_DVan3Fill"})
VVA.CopyTemplateToVehicle("pzkDVan6Seats3","pzka_DVan6Seats",{"pzka_DVan3Fill"})

---- FVans

VVA.addToProfile("pzka_FVanBase",{"pzka_VanBase","VVA_FVan_Fill_Decor"})
VVA.addToProfile("pzka_FVan_TrunkSeats",{"VVA_FVan_Trunk","VVA_Van_seats_RearWindow"})

VVA.ApplyTemplateToVehicle("pzkFVanCargo","VVA_Vehicles_FVan_Cargo",{"2SeatsF","VVA_FVan_VariableFrontFill","VVA_FVan_VariableRearFill","pzka_FVanBase","VVA_Van_F_hood","VVA_Van_Front","VVA_FVan_Blind_Trunk","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzkFVan","VVA_Vehicles_FVan_Cargo",{"2SeatsF","VVA_FVan_VariableFrontFill","VVA_FVan_VariableRearFill","pzka_FVanBase","VVA_Van_F_hood","VVA_Van_Front","VVA_FVan_Trunk","VVA_Van_Cargo_Decor"})
VVA.ApplyTemplateToVehicle("pzkFVanMultivan","VVA_Vehicles_FVan_Multi",{"4SeatsR","VVA_FVan_VariableFrontFill","VVA_FVan_VariableRearFill","pzka_FVanBase","VVA_Van_F_hood","VVA_Van_Front","VVA_Van_Open_Rear","VVA_FVan_Trunk","VVA_Van_SeatsM","VVA_VVan_Multi_Decor"})
VVA.ApplyTemplateToVehicle("pzkFVan6Seats","VVA_Vehicles_FVan_Seats",{"6Seats","VVA_FVan_VariableFrontFill","VVA_FVan_VariableRearFill","pzka_FVanBase","VVA_Van_F_hood","VVA_Van_Front","VVA_Van_Open_Middle","pzka_FVan_TrunkSeats","VVA_Van_SeatsM","VVA_Van_SeatsR","VVA_Van_seats_Decor"})

VVA.ApplyTemplateToVehicle("pzkFVanSpiffo","VVA_Vehicles_FVan_Cargo_nr",{"2SeatsF","VVA_FVan_VariableFrontFill_nr","VVA_FVan_VariableRearFill_nr","pzka_FVanBase","VVA_Van_F_hood_nr","VVA_Van_Front_nr","VVA_FVan_Trunk_nr","VVA_Van_Cargo_Decor"})

---- VanBox
VVA.addToProfile("PZKA_VanBox",{"VVA_PZK_VanBox_Interior","VVA_Van_SeatsF","VVA_PZK_VanBox_Windshield","VVA_PZK_VanBox_FrontLights"})
VVA.ApplyTemplateToVehicle("pzkVanBoxAmbulance","VVA_Vehicles_PZK_VanBox_nr",{"2SeatsF","PZKA_VanBox","VVA_PZK_VanBox_RearLights","VVA_PZK_VanBox_hood_nr","VVA_PZK_VanBox_Front_nr","VVA_PZK_VanBox_Trunk_nr","VVA_t_lightbar","VVA_PZK_VanBox_Lightbar"})
VVA.CopyTemplateToVehicle("pzkVanBoxFiretruck","pzkVanBoxAmbulance")
VVA.CopyTemplateToVehicle("pzkVanBoxSwat","pzkVanBoxAmbulance")

VVA.ApplyTemplateToVehicle("pzkVanBox","VVA_Vehicles_PZK_VanBox_Shutter",{"2SeatsF","PZKA_VanBox","VVA_PZK_VanBox_Shutter_RearLights","VVA_PZK_VanBox_hood","VVA_PZK_VanBox_Front","VVA_PZK_VanBox_Shutter_Trunk_nr"})

-- Sport Cabrio
--VVA.addToProfile("PZKA_CosetteCabrio",{"VVA_Sport_Interior","VVA_Sport_SeatsF","VVA_Sport_Windshield","VVA_Sport_FrontLights","VVA_Sport_RearLights"})
VVA.ApplyTemplateToVehicle("pzkChevalierCosetteCabrio","PZKA_Vehicles_SportCabrio",{"2SeatsF","VVA_Sport_Common","VVA_Sport_hood","PZKA_SportCabrio_FrontDoors","PZKA_SportCabrio_Trunk","VVA_Sport_LightHost"})

-- Offroad

VVA.CopyTemplateToVehicle("pzkDashRancherCustom","VVA_Offroad_nr")
VVA.CopyTemplateToVehicle("pzkDashRancherDinoPark","pzkDashRancherCustom")
VVA.CopyTemplateToVehicle("pzkDashRancherMail","pzkDashRancherCustom")
VVA.CopyTemplateToVehicle("pzkDashRancherRanger","pzkDashRancherCustom",{"VVA_t_lightbar","VVA_PZK_Offroad_Lightbar"})

VVA.addToProfile("PZKA_OffRoadC",{"VVA_Offroad_Interior","VVA_Offroad_SeatsF","VVA_Offroad_Windshield","VVA_Offroad_FrontLights","VVA_Offroad_RearLights"})
VVA.ApplyTemplateToVehicle("pzkDashRancherCabrio","VVA_Vehicles_PZK_Offroad_C",{"2SeatsF","PZKA_OffRoadC","VVA_Offroad_hood","VVA_PZK_Offroad_C_Front","VVA_PZK_Offroad_C_Trunk"})

-- Lang4000Cabrio
VVA.addToProfile("PZKA_Lang4000C",{"VVA_Luxury_Windshield","VVA_Luxury_SeatsF","VVA_Luxury_Interior","VVA_Luxury_FrontLights","VVA_Luxury_RearLights"})
VVA.ApplyTemplateToVehicle("pzkMerciaLang4000Cabrio","PZKA_Vehicles_Lang4000C",{"2SeatsF","PZKA_Lang4000C","VVA_Luxury_hood","PZKA_Lang4000C_FrontDoors","VVA_Luxury_Trunk"})

-- StepVan

VVA.CopyTemplateToVehicle("pzkStepVanMilk","VVA_StepVanCommercial")
VVA.CopyTemplateToVehicle("pzkStepVanUPZ","pzkStepVanMilk")
VVA.CopyTemplateToVehicle("pzkStepVanFedLog","pzkStepVanMilk")
VVA.CopyTemplateToVehicle("StepVanSwat","pzkStepVanMilk",{"VVA_t_lightbar","VVA_PZK_StepVan_Lightbar"})
VVA.CopyTemplateToVehicle("pzkStepVanSwatLouisvilleSWAT","StepVanSwat")


---- Food
VVA.addToProfile("VVA_StepVan_Food_Common",{"VVA_StepVan_Interior","VVA_StepVan_SeatsF","VVA_StepVan_Windshield","VVA_StepVan_FrontLights","VVA_StepVan_RearLights","VVA_PZK_StepVan_Food_Decor"})
VVA.addToProfile("PZKA_StepVan_Food_Trunk_nr",{"VVA_StepVan_Trunk_nr","VVA_PZK_StepVan_Food_RearWindow"})
VVA.ApplyTemplateToVehicle("PZKA_StepVanFood","VVA_Vehicles_PZK_StepVan_Food_nr",{"2SeatsF","VVA_StepVan_Common","VVA_StepVan_hood_nr","VVA_StepVan_Front_nr","PZKA_StepVan_Food_Trunk_nr"})

VVA.CopyTemplateToVehicle("pzkStepVanPizza","PZKA_StepVanFood",{"VVA_PZK_StepVan_RoofOven_Decor"})
VVA.CopyTemplateToVehicle("pzkStepVanCoffe","pzkStepVanPizza")

VVA.CopyTemplateToVehicle("pzkStepVanTacoVan","PZKA_StepVanFood",{"pzka_t_taxi","VVA_PZK_StepVan_Taco_Decor"})
VVA.CopyTemplateToVehicle("pzkStepVanHotDog","PZKA_StepVanFood",{"pzka_t_taxi","VVA_PZK_StepVan_HotDog_Decor"})
VVA.CopyTemplateToVehicle("pzkStepVanIceCream","PZKA_StepVanFood",{"pzka_t_taxi","VVA_PZK_StepVan_IceCream_Decor"})
VVA.CopyTemplateToVehicle("pzkStepVanPierogi","PZKA_StepVanFood",{"pzka_t_taxi","VVA_PZK_StepVan_Pierogi_Decor"})

---- B30
VVA.addToProfile("VVA_StepVan_B30_Common",{"VVA_StepVan_Interior","VVA_StepVan_SeatsF","VVA_StepVan_Windshield","VVA_PZK_StepVan_B30_FrontLights","VVA_StepVan_RearLights","VVA_StepVan_Trunk_Decor"})
VVA.ApplyTemplateToVehicle("pzkStepVanB30","VVA_Vehicles_PZK_StepVan_B30",{"2SeatsF","VVA_StepVan_B30_Common","VVA_PZK_StepVan_B30_hood","VVA_StepVan_Front","PZKA_StepVan_Trunk"})
VVA.ApplyTemplateToVehicle("pzkStepVanB30Christmas","VVA_Vehicles_PZK_StepVan_B30_nr",{"2SeatsF","VVA_StepVan_B30_Common","VVA_PZK_StepVan_B30_hood_nr","VVA_StepVan_Front_nr","PZKA_StepVan_Trunk_nr"})
VVA.CopyTemplateToVehicle("pzkStepVanB30Rail","pzkStepVanB30Christmas")

--HMMV
--[[
VVA.addToProfile("VVA_PZKA_HMMV_Common",{"VVA_PZK_HMMV_Interior","VVA_PZK_HMMV_Windshield","VVA_PZK_HMMV_SeatsF","VVA_PZK_HMMV_FrontLights","VVA_PZK_HMMV_RearLights"})
VVA.addToProfile("VVA_PZKA_HMMV_4Seats",{"VVA_PZKA_HMMV_Common","VVA_PZK_HMMV_SeatsR"})
---- 1
VVA.ApplyTemplateToVehicle("pzkHMMV","VVA_Vehicles_PZK_HMMV_1",{"4SeatsR","VVA_PZKA_HMMV_4Seats","VVA_PZK_HMMV_hood","VVA_PZK_HMMV_Front","VVA_PZK_HMMV_Rear","VVA_PZK_HMMV_1_Trunk"})

---- 2

VVA.ApplyTemplateToVehicle("pzkHMMV2","VVA_Vehicles_PZK_HMMV_2",{"4SeatsR","VVA_PZKA_HMMV_4Seats","VVA_PZK_HMMV_hood","VVA_PZK_HMMV_Front","VVA_PZK_HMMV_Rear","VVA_PZK_HMMV_2_Trunk"})
VVA.ApplyTemplateToVehicle("pzkHMMV2Mil","VVA_Vehicles_PZK_HMMV_2M_nr",{"4SeatsR","VVA_PZKA_HMMV_4Seats","VVA_PZK_HMMV_hood_nr","VVA_PZK_HMMV_Front_nr","VVA_PZK_HMMV_Rear_nr","VVA_PZK_HMMV_2M_Trunk_nr"})

---- 346

VVA.ApplyTemplateToVehicle("pzkHMMV3","VVA_Vehicles_PZK_HMMV_3",{"4SeatsR","VVA_PZKA_HMMV_4Seats","VVA_PZK_HMMV_3_RearWindow","VVA_PZK_HMMV_hood","VVA_PZK_HMMV_Front","VVA_PZK_HMMV_Rear","VVA_PZK_HMMV_3_Trunk"})
VVA.ApplyTemplateToVehicle("pzkHMMV3Mil","VVA_Vehicles_PZK_HMMV_3_nr",{"4SeatsR","VVA_PZKA_HMMV_4Seats","VVA_PZK_HMMV_3_RearWindow","VVA_PZK_HMMV_hood_nr","VVA_PZK_HMMV_Front_nr","VVA_PZK_HMMV_Rear_nr","VVA_PZK_HMMV_3_Trunk_nr"})

VVA.ApplyTemplateToVehicle("pzkHMMV4Mil","VVA_Vehicles_PZK_HMMV_4_nr",{"2SeatsF","VVA_PZKA_HMMV_Common","VVA_PZK_HMMV_4_RearWindow","VVA_PZK_HMMV_hood_nr","VVA_PZK_HMMV_Front_nr","VVA_PZK_HMMV_3_Trunk_nr"})
VVA.ApplyTemplateToVehicle("pzkHMMV6Mil","VVA_Vehicles_PZK_HMMV_6_nr",{"2SeatsF","VVA_PZKA_HMMV_Common","VVA_PZK_HMMV_hood_nr","VVA_PZK_HMMV_C_Front_nr","VVA_PZK_HMMV_3_Trunk_nr"})

---- 5
VVA.ApplyTemplateToVehicle("pzkHMMV5Mil","VVA_Vehicles_PZK_HMMV_5_nr",{"2SeatsF","VVA_PZKA_HMMV_Common","VVA_PZK_HMMV_hood_nr","VVA_PZK_HMMV_Front_nr","VVA_PZK_HMMV_5_Trunk_nr"})
]]--


-- HMMV_old
VVA.addToProfile("VVA_PZKA_HMMV_old_Common",{"PZKA_HMMV_old_shared","PZKA_HMMV_old_FrontLights"})

VVA.ApplyTemplateToVehicle("pzkHMMV","PZKA_Vehicles_HMMV_old_1",{"4SeatsR","VVA_PZKA_HMMV_old_Common","PZKA_HMMV_old_1_RearLights","PZKA_HMMV_old_hood","PZKA_HMMV_old_FrontDoors","PZKA_HMMV_old_RearDoors","PZKA_HMMV_old_1_Trunk"})
VVA.ApplyTemplateToVehicle("pzkHMMV2","PZKA_Vehicles_HMMV_old_2",{"4SeatsR","VVA_PZKA_HMMV_old_Common","PZKA_HMMV_old_RearLights","PZKA_HMMV_old_hood","PZKA_HMMV_old_FrontDoors","PZKA_HMMV_old_RearDoors","PZKA_HMMV_old_2_Trunk"})
VVA.ApplyTemplateToVehicle("pzkHMMV3","PZKA_Vehicles_HMMV_old_3",{"4SeatsR","VVA_PZKA_HMMV_old_Common","PZKA_HMMV_old_RearLights","PZKA_HMMV_old_hood","PZKA_HMMV_old_FrontDoors","PZKA_HMMV_old_RearDoors","PZKA_HMMV_old_3_RearWindow"})


--Cerise93
VVA.addToProfile("VVA_PZK_Cerise93_Common",{"VVA_PZK_Cerise93_Interior","VVA_PZK_Cerise93_Windshield","VVA_PZK_Cerise93_SeatsF"})
VVA.addToProfile("VVA_PZK_Cerise93_Sedan_Common",{"4SeatsR","VVA_PZK_Cerise93_Common","VVA_PZK_Cerise93_SeatsR","VVA_PZK_Cerise93_Sedan_RearWindow"})

VVA.ApplyTemplateToVehicle("PZK_Cerise93_Sedan","VVA_Vehicles_PZK_Cerise93_Sedan_Cerise93",{"VVA_PZK_Cerise93_Sedan_Common","VVA_PZK_Cerise93_Cerise93_FrontLights","VVA_PZK_Cerise93_Sedan_Cerise93_RearLights","VVA_PZK_Cerise93_C93_hood","VVA_PZK_Cerise93_Front","VVA_PZK_Cerise93_Rear","VVA_PZK_Cerise93_Sedan_Trunk"})
VVA.ApplyTemplateToVehicle("PZK_Cerise93_Sedan_nr","VVA_Vehicles_PZK_Cerise93_Sedan_Cerise93_nr",{"VVA_PZK_Cerise93_Sedan_Common","VVA_PZK_Cerise93_Cerise93_FrontLights","VVA_PZK_Cerise93_Sedan_Cerise93_RearLights","VVA_PZK_Cerise93_C93_hood_nr","VVA_PZK_Cerise93_Front_nr","VVA_PZK_Cerise93_Rear_nr","VVA_PZK_Cerise93_Sedan_Trunk_nr"})

VVA.CopyTemplateToVehicle("pzkChevalierCerise93","PZK_Cerise93_Sedan")
VVA.CopyTemplateToVehicle("pzkChevalierCerise93Fire","PZK_Cerise93_Sedan_nr", {"VVA_PZK_Cerise93_Bars_Decor","VVA_t_lightbar","VVA_PZK_Cerise93_Lightbar"})
VVA.CopyTemplateToVehicle("pzkChevalierCerise93LSU","pzkChevalierCerise93Fire")
VVA.CopyTemplateToVehicle("pzkChevalierCerise93Mall","pzkChevalierCerise93Fire")
VVA.CopyTemplateToVehicle("pzkChevalierCerise93Police","PZK_Cerise93_Sedan_nr", {"VVA_PZK_Cerise93_Bars_Decor","PZKA_sle_lightbar","VVA_PZK_Cerise93_Lightbar"})
VVA.CopyTemplateToVehicle("pzkChevalierCerise93PoliceLouisvillePD","pzkChevalierCerise93Police")
VVA.CopyTemplateToVehicle("pzkChevalierCerise93PoliceMeadeSheriff","pzkChevalierCerise93PoliceLouisvillePD")
VVA.CopyTemplateToVehicle("pzkChevalierCerise93PoliceWestPoint","pzkChevalierCerise93PoliceLouisvillePD")

VVA.CopyTemplateToVehicle("pzkChevalierCerise93Taxi","PZK_Cerise93_Sedan_nr",{"PZKA_sle_taxi","VVA_PZK_Cerise93_Taxi"})

----Triumph
VVA.ApplyTemplateToVehicle("PZK_Triumph_Sedan","VVA_Vehicles_PZK_Cerise93_Sedan_Triumph",{"VVA_PZK_Cerise93_Sedan_Common","VVA_PZK_Cerise93_Triumph_FrontLights","VVA_PZK_Cerise93_Sedan_Triumph_RearLights","VVA_PZK_Cerise93_hood","VVA_PZK_Cerise93_Front","VVA_PZK_Cerise93_Rear","VVA_PZK_Cerise93_Sedan_Trunk"})
VVA.ApplyTemplateToVehicle("PZK_Triumph_Sedan_nr","VVA_Vehicles_PZK_Cerise93_Sedan_Triumph_nr",{"VVA_PZK_Cerise93_Sedan_Common","VVA_PZK_Cerise93_Triumph_FrontLights","VVA_PZK_Cerise93_Sedan_Triumph_RearLights","VVA_PZK_Cerise93_hood_nr","VVA_PZK_Cerise93_Front_nr","VVA_PZK_Cerise93_Rear_nr","VVA_PZK_Cerise93_Sedan_Trunk_nr"})

VVA.CopyTemplateToVehicle("pzkFranklinTriumph","PZK_Triumph_Sedan")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphLSU","PZK_Triumph_Sedan_nr", {"VVA_PZK_Cerise93_Bars_Decor","VVA_t_lightbar","VVA_PZK_Cerise93_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphMall","pzkFranklinTriumphLSU")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphPolice","PZK_Triumph_Sedan_nr", {"VVA_PZK_Cerise93_Bars_Decor","PZKA_sle_lightbar","VVA_PZK_Cerise93_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphPoliceLouisvillePD","pzkFranklinTriumphPolice")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphPoliceMeadeSheriff","pzkFranklinTriumphPolice")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphPoliceWestPoint","pzkFranklinTriumphPolice")

VVA.CopyTemplateToVehicle("pzkFranklinTriumphTaxi","PZK_Triumph_Sedan_nr",{"PZKA_sle_taxi","VVA_PZK_Cerise93_Taxi"})

---- Cerise93 Wagon
VVA.addToProfile("VVA_PZK_Cerise93_Wagon_Common",{"4SeatsR","VVA_PZK_Cerise93_Common","VVA_PZK_Cerise93_SeatsR"})

VVA.ApplyTemplateToVehicle("PZK_Cerise93_Wagon","VVA_Vehicles_PZK_Cerise93_Wagon_Cerise93",{"VVA_PZK_Cerise93_Wagon_Common","VVA_PZK_Cerise93_Cerise93_FrontLights","VVA_PZK_Cerise93_Wagon_Cerise93_RearLights","VVA_PZK_Cerise93_C93_hood","VVA_PZK_Cerise93_Front","VVA_PZK_Cerise93_Rear","VVA_PZK_Cerise93_Wagon_Trunk"})
VVA.ApplyTemplateToVehicle("PZK_Cerise93_Wagon_nr","VVA_Vehicles_PZK_Cerise93_Wagon_Cerise93_nr",{"VVA_PZK_Cerise93_Wagon_Common","VVA_PZK_Cerise93_Cerise93_FrontLights","VVA_PZK_Cerise93_Wagon_Cerise93_RearLights","VVA_PZK_Cerise93_C93_hood_nr","VVA_PZK_Cerise93_Front_nr","VVA_PZK_Cerise93_Rear_nr","VVA_PZK_Cerise93_Wagon_Trunk_nr"})

VVA.CopyTemplateToVehicle("pzkChevalierCerise93Wagon","PZK_Cerise93_Wagon")
VVA.CopyTemplateToVehicle("pzkChevalierCerise93WagonFire","PZK_Cerise93_Wagon_nr", {"VVA_t_lightbar","VVA_PZK_Cerise93_Lightbar"})
VVA.CopyTemplateToVehicle("pzkChevalierCerise93WagonLSU","pzkChevalierCerise93WagonFire")
VVA.CopyTemplateToVehicle("pzkChevalierCerise93WagonMall","pzkChevalierCerise93WagonFire")


---- Triumph Wagon

VVA.ApplyTemplateToVehicle("PZK_Cerise93_Wagon","VVA_Vehicles_PZK_Cerise93_Wagon_Triumph",{"VVA_PZK_Cerise93_Wagon_Common","VVA_PZK_Cerise93_Triumph_FrontLights","VVA_PZK_Cerise93_Wagon_Triumph_RearLights","VVA_PZK_Cerise93_hood","VVA_PZK_Cerise93_Front","VVA_PZK_Cerise93_Rear","VVA_PZK_Cerise93_Wagon_Trunk"})
VVA.ApplyTemplateToVehicle("PZK_Cerise93_Wagon_nr","VVA_Vehicles_PZK_Cerise93_Wagon_Triumph_nr",{"VVA_PZK_Cerise93_Wagon_Common","VVA_PZK_Cerise93_Triumph_FrontLights","VVA_PZK_Cerise93_Wagon_Triumph_RearLights","VVA_PZK_Cerise93_hood_nr","VVA_PZK_Cerise93_Front_nr","VVA_PZK_Cerise93_Rear_nr","VVA_PZK_Cerise93_Wagon_Trunk_nr"})

VVA.CopyTemplateToVehicle("pzkFranklinTriumphWagon","PZK_Cerise93_Wagon")
VVA.CopyTemplateToVehicle("pzkFranklinTriumphWagonLSU","PZK_Cerise93_Wagon_nr", {"VVA_t_lightbar","VVA_PZK_Cerise93_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTriumphWagonMall","pzkFranklinTriumphWagonLSU")

---- K9

VVA.ApplyTemplateToVehicle("PZK_Cerise93_Sedan_K9_nr","VVA_Vehicles_PZK_Cerise93_Sedan_Cerise93_nr",{"2SeatsF","VVA_PZK_Cerise93_Common","VVA_PZK_Cerise93_Kennel_Decor","VVA_PZK_Cerise93_Sedan_RearWindow","VVA_PZK_Cerise93_Triumph_FrontLights","VVA_PZK_Cerise93_Sedan_Triumph_RearLights","VVA_PZK_Cerise93_hood_nr","VVA_PZK_Cerise93_Front_nr","VVA_PZK_Cerise93_Rear_nr","VVA_PZK_Cerise93_Sedan_Trunk_nr"})
VVA.ApplyTemplateToVehicle("PZK_Triumph_Sedan_K9_nr","VVA_Vehicles_PZK_Cerise93_Sedan_Triumph_nr",{"2SeatsF","VVA_PZK_Cerise93_Common","VVA_PZK_Cerise93_Kennel_Decor","VVA_PZK_Cerise93_Sedan_RearWindow","VVA_PZK_Cerise93_Triumph_FrontLights","VVA_PZK_Cerise93_Sedan_Triumph_RearLights","VVA_PZK_Cerise93_hood_nr","VVA_PZK_Cerise93_Front_nr","VVA_PZK_Cerise93_Rear_nr","VVA_PZK_Cerise93_Sedan_Trunk_nr"})

--VVA.CopyTemplateToVehicle("pzkChevalierCerise93PoliceK9","PZK_Cerise93_Sedan_K9_nr", {"PZKA_sle_lightbar","VVA_PZK_Cerise93_Lightbar"})
--VVA.CopyTemplateToVehicle("pzkFranklinTriumphPoliceK9","PZK_Triumph_Sedan_K9_nr", {"PZKA_sle_lightbar","VVA_PZK_Cerise93_Lightbar"})



--!!-- END OF V3 Code


-- SUV

--VVA.ApplyTemplateToVehicle("SUV","PZKA_Vehicles_SUV",{"pzka_4SeatsR","PZKA_SUV"})
VVA.CopyTemplateToVehicle("pzkSuvCustom","VVA_SUV_nr")

VVA.CopyTemplateToVehicle("pzkSuvDinoPark","pzkSuvCustom")
VVA.CopyTemplateToVehicle("pzkSuvPleistoceneLand","pzkSuvDinoPark")

VVA.CopyTemplateToVehicle("pzkSuvAirportSecurity","pzkSuvCustom",{"VVA_t_lightbar","PZKA_SUV_Lightbar"})
VVA.CopyTemplateToVehicle("pzkSuvFire","pzkSuvAirportSecurity")
VVA.CopyTemplateToVehicle("pzkSuvRanger","pzkSuvAirportSecurity")
VVA.CopyTemplateToVehicle("pzkSuvMeadeSheriff","pzkSuvCustom",{"PZKA_sle_lightbar","PZKA_SUV_Lightbar"})
VVA.CopyTemplateToVehicle("pzkSuvPoliceLouisvillePD","pzkSuvMeadeSheriff")
VVA.CopyTemplateToVehicle("pzkSuvWestPoint","pzkSuvMeadeSheriff")

-- SUV Pickup
--VVA.ApplyTemplateToVehicle("pzkPickupFranklin","PZKA_Vehicles_FranklinRaider_a",{"2SeatsF","PZKA_FranklinRaider","pzka_FranklinRaider_Light"})
--VVA.ApplyTemplateToVehicle("pzkPickupFranklinRanger","PZKA_Vehicles_SUV_P_nr",{"pzka_2SeatsF","PZKA_SUV_P_nr","VVA_t_lightbar","PZKA_SUV_Lightbar"})
--VVA.CopyTemplateToVehicle("pzkPickupFranklinFire","pzkPickupFranklinRanger")


--Bank Truck

VVA.ApplyTemplateToVehicle("pzkFranklinBankTruck","PZKA_Vehicles_BankTrunk_nr",{"pzka_2SeatsF","PZKA_BankTruck_Bank"})
VVA.ApplyTemplateToVehicle("pzkFranklinSwatTruck","PZKA_Vehicles_BankTrunk_nr",{"pzka_2SeatsF","PZKA_BankTruck_Bank","VVA_t_lightbar","PZKA_BankTruck_lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinSwatTruckLouisvilleSWAT","pzkFranklinSwatTruck")

-- FranklinTruck

VVA.ApplyTemplateToVehicle("pzkFranklinTruckBed", "PZKA_Vehicles_FranklinTruck_TruckBed",{"pzka_2SeatsF","PZKA_FranklinTruck"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckSemi", "PZKA_Vehicles_FranklinTruck_TruckSemi",{"pzka_2SeatsF","PZKA_FranklinTruck_Semi"})
VVA.ApplyTemplateToVehicle("pzkFranklinTruckSemiMadMax", "PZKA_Vehicles_FranklinTruck_TruckSemi_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Semi_nr"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckShort", "PZKA_Vehicles_FranklinTruck_TruckBedShort",{"pzka_2SeatsF","PZKA_FranklinTruck_Short"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckMcCoy", "PZKA_Vehicles_FranklinTruck_Logging_nr",{"pzka_2SeatsF","PZKA_FranklinTruck"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckFlatbed", "PZKA_Vehicles_FranklinTruck_TruckFlatbed",{"pzka_2SeatsF","PZKA_FranklinTruck"})
VVA.ApplyTemplateToVehicle("pzkFranklinTruckFlatbedPublicWorks", "PZKA_Vehicles_FranklinTruck_TruckFlatbed_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_nr"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckDump", "PZKA_Vehicles_FranklinTruck_Dump",{"pzka_2SeatsF","PZKA_FranklinTruck_Dump"})
VVA.ApplyTemplateToVehicle("pzkFranklinTruckDumpPublicWorks", "PZKA_Vehicles_FranklinTruck_Dump_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Dump_nr"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckBox", "PZKA_Vehicles_FranklinTruck_TruckBox",{"pzka_2SeatsF","PZKA_FranklinTruck_Box"})
VVA.ApplyTemplateToVehicle("pzkFranklinTruckBoxLectromax", "PZKA_Vehicles_FranklinTruck_TruckBox_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Box_nr"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckCab", "PZKA_Vehicles_FranklinTruck_Sleeper",{"pzka_4SeatsR","PZKA_FranklinTruck_Sleeper"})
VVA.ApplyTemplateToVehicle("pzkFranklinTruckTow", "PZKA_Vehicles_FranklinTruck_Tow",{"pzka_2SeatsF","PZKA_FranklinTruck_Tow","VVA_t_lightbar","PZKA_FranklinTruck_Tow_lightbar"})
VVA.ApplyTemplateToVehicle("pzkFranklinTruckUtility", "PZKA_Vehicles_FranklinTruck_Utility",{"pzka_2SeatsF","PZKA_FranklinTruck_Utility","VVA_t_lightbar","PZKA_FranklinTruck_Tow_lightbar"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckFire", "PZKA_Vehicles_FranklinTruck_Fire_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Fire_nr","VVA_t_lightbar","PZKA_FranklinTruck_lightbar","PZKA_FranklinTruck_Fire_lightbar"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckGarbage", "PZKA_Vehicles_FranklinTruck_Garbage_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Garbage_nr","VVA_t_lightbar","PZKA_FranklinTruck_lightbar"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckMil", "PZKA_Vehicles_FranklinTruck_Military_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Military_nr"})

VVA.ApplyTemplateToVehicle("pzkFranklinTruckPropane", "PZKA_Vehicles_FranklinTruck_Propane",{"pzka_2SeatsF","PZKA_FranklinTruck_Propane","VVA_t_lightbar","PZKA_FranklinTruck_lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTruckPropane2", "pzkFranklinTruckPropane")

VVA.ApplyTemplateToVehicle("pzkFranklinTruckFireTanker", "PZKA_Vehicles_FranklinTruck_Tanker_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Tanker_nr","VVA_t_lightbar","PZKA_FranklinTruck_lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTruckTankerFossoil", "pzkFranklinTruckFireTanker")
VVA.CopyTemplateToVehicle("pzkFranklinTruckTankerMil", "pzkFranklinTruckFireTanker")

VVA.ApplyTemplateToVehicle("pzkFranklinTruckMilTankerWater", "PZKA_Vehicles_FranklinTruck_Tanker2_nr",{"pzka_2SeatsF","PZKA_FranklinTruck_Tanker2_nr","VVA_t_lightbar","PZKA_FranklinTruck_lightbar"})
VVA.ApplyTemplateToVehicle("pzkFranklinTruckTankerSeptic", "PZKA_Vehicles_FranklinTruck_Tanker2",{"pzka_2SeatsF","PZKA_FranklinTruck_Tanker2","VVA_t_lightbar","PZKA_FranklinTruck_lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinTruckTankerWater","pzkFranklinTruckTankerSeptic")

VVA.ApplyTemplateToVehicle("pzkFranklinTruckRV", "PZKA_Vehicles_FranklinTruck_RV",{"pzka_4SeatsR","PZKA_FranklinTruck_RV"})

-- Frnaklin Bus

VVA.ApplyTemplateToVehicle("pzkFranklinTruckBus","PZKA_Vehicles_TruckBus_a_nr",{"pzka_2SeatsF","PZKA_FranklinBus_nr"})
VVA.CopyTemplateToVehicle("pzkFranklinTruckBusAirport","pzkFranklinTruckBus")
VVA.InheritTemplateToVehicle("pzkFranklinTruckBusArmy","pzkFranklinTruckBus","PZKA_Vehicles_TruckBus_Bars_a_nr")
VVA.CopyTemplateToVehicle("pzkFranklinTruckBusPrison","pzkFranklinTruckBusArmy")

-- Chevaliuer Van70

VVA.ApplyTemplateToVehicle("pzkChevalierVan70","PZKA_Vehicles_ChevalierVan70_a",{"pzka_6Seats","PZKA_CVan70"})
VVA.ApplyTemplateToVehicle("pzkDashVan70","PZKA_Vehicles_DashVan70_a",{"pzka_6Seats","PZKA_DashVan70"})
VVA.ApplyTemplateToVehicle("pzkDashVan70Riddle","PZKA_Vehicles_Riddle_a",{"pzka_4SeatsR","PZKA_Riddle_nr"})


-- FType
---- Box
VVA.ApplyTemplateToVehicle("pzkFTypeBox_nr","PZKA_Vehicles_Ftype_Box_Base_nr",{"pzka_2SeatsF","PZKA_FType_CUCV"})
VVA.CopyTemplateToVehicle("pzkF350BoxCUCV","pzkFTypeBox_nr",{"VVA_t_lightbar","PZKA_FType_LightbarCUCV"})
VVA.CopyTemplateToVehicle("pzkF350BoxSwat","pzkFTypeBox_nr",{"VVA_t_lightbar","PZKA_FType_Lightbar"})

VVA.ApplyTemplateToVehicle("pzkF350BoxAmbulance","PZKA_Vehicles_Ftype_Box_Base_nr",{"pzka_2SeatsF","PZKA_FType_Ampulance","VVA_t_lightbar","PZKA_FType_Lightbar"})

VVA.ApplyTemplateToVehicle("pzkF350BoxUmoveit","PZKA_Vehicles_Ftype_Box_Base_nr",{"pzka_2SeatsF","PZKA_FType_BoxShutter_nr"})

---- Tow

VVA.ApplyTemplateToVehicle("pzkFtypeTowTruck","PZKA_Vehicles_FType_Tow_Base",{"pzka_2SeatsF","PZKA_FType_Tow","VVA_t_lightbar","PZKA_FType_LightbarTow"})

---- Utility

VVA.ApplyTemplateToVehicle("pzkChevalier150Utility","PZKA_Vehicles_Ftype_Utility_Base",{"pzka_2SeatsF","PZKA_FType_Utility_Province"})
VVA.ApplyTemplateToVehicle("pzkDash150Utility","PZKA_Vehicles_Ftype_Utility_Base",{"pzka_2SeatsF","PZKA_FType_Utility_Intruder"})
VVA.ApplyTemplateToVehicle("pzkF150Utility","PZKA_Vehicles_Ftype_Utility_Base",{"pzka_2SeatsF","PZKA_FType_Utility_F350"})

VVA.ApplyTemplateToVehicle("pzkChevalier150UtilityNR","PZKA_Vehicles_Ftype_Utility_Base_nr",{"pzka_2SeatsF","PZKA_FType_Utility_Province_nr"})
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityMoore","pzkChevalier150UtilityNR")
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityNewCoalfieldMechanic","pzkChevalier150UtilityNR")

VVA.CopyTemplateToVehicle("pzkChevalier150UtilityService","pzkChevalier150UtilityNR",{"VVA_t_lightbar","PZKA_FType_LightbarTow"})
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityAirport","pzkChevalier150UtilityService")
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityIrvingtonSpeedway","pzkChevalier150UtilityService")
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityRanger","pzkChevalier150UtilityService")
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityPublicWorks","pzkChevalier150UtilityService")
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityRail","pzkChevalier150UtilityService")
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityFire","pzkChevalier150UtilityService")
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityLVPD","pzkChevalier150UtilityService")
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityMuldPD","pzkChevalier150UtilityService")
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityKSTPD","pzkChevalier150UtilityService")
VVA.CopyTemplateToVehicle("pzkChevalier150UtilityBulletinPD","pzkChevalier150UtilityService")


VVA.ApplyTemplateToVehicle("pzkDash150UtilityNR","PZKA_Vehicles_Ftype_Utility_Base_nr",{"pzka_2SeatsF","PZKA_FType_Utility_Intruder_nr"})
VVA.CopyTemplateToVehicle("pzkDash150UtilityMoore","pzkDash150UtilityNR")
VVA.CopyTemplateToVehicle("pzkDash150UtilityNewCoalfieldMechanic","pzkDash150UtilityNR")

VVA.CopyTemplateToVehicle("pzkDash150UtilityService","pzkDash150UtilityNR",{"VVA_t_lightbar","PZKA_FType_LightbarTow"})
VVA.CopyTemplateToVehicle("pzkDash150UtilityAirport","pzkDash150UtilityService")
VVA.CopyTemplateToVehicle("pzkDash150UtilityIrvingtonSpeedway","pzkDash150UtilityService")
VVA.CopyTemplateToVehicle("pzkDash150UtilityRanger","pzkDash150UtilityService")
VVA.CopyTemplateToVehicle("pzkDash150UtilityPublicWorks","pzkDash150UtilityService")
VVA.CopyTemplateToVehicle("pzkDash150UtilityFire","pzkDash150UtilityService")
VVA.CopyTemplateToVehicle("pzkDash150UtilityLVPD","pzkDash150UtilityService")
VVA.CopyTemplateToVehicle("pzkDash150UtilityMuldPD","pzkDash150UtilityService")
VVA.CopyTemplateToVehicle("pzkDash150UtilityKSTPD","pzkDash150UtilityService")
VVA.CopyTemplateToVehicle("pzkDash150UtilityBulletinPD","pzkDash150UtilityService")


VVA.ApplyTemplateToVehicle("pzkF150UtilityNR","PZKA_Vehicles_Ftype_Utility_Base_nr",{"pzka_2SeatsF","PZKA_FType_Utility_Province_nr","VVA_t_lightbar","PZKA_FType_LightbarTow"})
VVA.CopyTemplateToVehicle("pzkF150UtilityMoore","pzkF150UtilityNR")
VVA.CopyTemplateToVehicle("pzkF150UtilityNewCoalfieldMechanic","pzkF150UtilityNR")

VVA.CopyTemplateToVehicle("pzkF150UtilityService","pzkF150UtilityNR",{"VVA_t_lightbar","PZKA_FType_LightbarTow"})
VVA.CopyTemplateToVehicle("pzkF150UtilityAirport","pzkF150UtilityService")
VVA.CopyTemplateToVehicle("pzkF150UtilityIrvingtonSpeedway","pzkF150UtilityService")
VVA.CopyTemplateToVehicle("pzkF150UtilityRanger","pzkF150UtilityService")
VVA.CopyTemplateToVehicle("pzkF150UtilityPublicWorks","pzkF150UtilityService")
VVA.CopyTemplateToVehicle("pzkF150UtilityFire","pzkF150UtilityService")
VVA.CopyTemplateToVehicle("pzkF150UtilityLVPD","pzkF150UtilityService")
VVA.CopyTemplateToVehicle("pzkF150UtilityMuldPD","pzkF150UtilityService")
VVA.CopyTemplateToVehicle("pzkF150UtilityKSTPD","pzkF150UtilityService")
VVA.CopyTemplateToVehicle("pzkF150UtilityBulletinPD","pzkF150UtilityService")

---- Flatbed
VVA.ApplyTemplateToVehicle("pzkChevalier150BoxFlatbed","PZKA_Vehicles_Ftype_Flatbed_Base",{"pzka_2SeatsF","PZKA_FType_Flatbed_Province"})
VVA.ApplyTemplateToVehicle("pzkChevalier150BoxFlatbedPublicWorks","PZKA_Vehicles_Ftype_Flatbed_Base_nr",{"pzka_2SeatsF","PZKA_FType_Flatbed_Province_nr","VVA_t_lightbar","PZKA_FType_LightbarTow"})

VVA.ApplyTemplateToVehicle("pzkDash150BoxFlatbed","PZKA_Vehicles_Ftype_Flatbed_Base",{"pzka_2SeatsF","PZKA_FType_Flatbed_Intruder"})
VVA.ApplyTemplateToVehicle("pzkDash150BoxFlatbedPublicWorks","PZKA_Vehicles_Ftype_Flatbed_Base_nr",{"pzka_2SeatsF","PZKA_FType_Flatbed_Intruder_nr","VVA_t_lightbar","PZKA_FType_LightbarTow"})

VVA.ApplyTemplateToVehicle("pzkF150BoxFlatbed","PZKA_Vehicles_Ftype_Flatbed_Base",{"pzka_2SeatsF","PZKA_FType_Flatbed_F350"})
VVA.ApplyTemplateToVehicle("pzkF150BoxFlatbedPublicWorks","PZKA_Vehicles_Ftype_Flatbed_Base_nr",{"pzka_2SeatsF","PZKA_FType_Flatbed_F350_nr","VVA_t_lightbar","PZKA_FType_LightbarTow"})

---- Reg

VVA.ApplyTemplateToVehicle("pzkChevalierE6","PZKA_Vehicles_Ftype_Reg_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Pickup_Province"})
VVA.CopyTemplateToVehicle("pzkChevalierF6","pzkChevalierE6")
VVA.ApplyTemplateToVehicle("pzkFranklin150FPickupReg","PZKA_Vehicles_Ftype_Reg_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Pickup_F350"})
VVA.ApplyTemplateToVehicle("pzkPickUpTruck93","PZKA_Vehicles_Ftype_Reg_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Pickup_Intruder"})

VVA.ApplyTemplateToVehicle("pzkChevalierE6Rail","PZKA_Vehicles_Ftype_Reg_Pickup_Base_nr",{"pzka_2SeatsF","PZKA_FType_Reg_Pickup_Province_nr"})
VVA.CopyTemplateToVehicle("pzkChevalierF6Rail","pzkChevalierE6Rail")


VVA.ApplyTemplateToVehicle("pzkChevalierE6Van","PZKA_Vehicles_Ftype_Reg_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Wagon_Province"})
VVA.CopyTemplateToVehicle("pzkChevalierF6Van","pzkChevalierE6Van")
VVA.ApplyTemplateToVehicle("pzkFranklin150van","PZKA_Vehicles_Ftype_Reg_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Wagon_F350"})
VVA.ApplyTemplateToVehicle("pzkDashIntruder150RegVan","PZKA_Vehicles_Ftype_Reg_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Reg_Wagon_Intruder"})

---- Med

VVA.ApplyTemplateToVehicle("pzkChevalierPickupCrewMedium","PZKA_Vehicles_Ftype_Med_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Med_Pickup_Province"})
VVA.ApplyTemplateToVehicle("pzkFranklin150FPickupMedium","PZKA_Vehicles_Ftype_Med_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Med_Pickup_F350"})

VVA.ApplyTemplateToVehicle("pzkChevalierPickupCrewMediumRail","PZKA_Vehicles_Ftype_Med_Pickup_Base_nr",{"pzka_2SeatsF","PZKA_FType_Med_Pickup_Province_nr"})

VVA.ApplyTemplateToVehicle("pzkFranklin150FWagonMedium","PZKA_Vehicles_Ftype_Med_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Med_Wagon_F350"})
VVA.CopyTemplateToVehicle("pzkFranklin250FWagonLong","pzkFranklin150FWagonMedium")

---- CrewMed

VVA.ApplyTemplateToVehicle("pzkChevalierProvince","PZKA_Vehicles_Ftype_CrewMed_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_CrewMed_Wagon_Province"})

---- Long

VVA.ApplyTemplateToVehicle("pzkDashIntruder250PickupLong","PZKA_Vehicles_Ftype_Long_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Long_Pickup_Intruder"})
VVA.ApplyTemplateToVehicle("pzkFranklin250FPickupCrewLong","PZKA_Vehicles_Ftype_Long_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_Long_Pickup_F350"})

VVA.ApplyTemplateToVehicle("pzkFranklin250FPickupWagonLong","PZKA_Vehicles_Ftype_Long_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Long_Wagon_F350"})
VVA.ApplyTemplateToVehicle("pzkDashIntruder250WagonLong","PZKA_Vehicles_Ftype_Long_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_Long_Wagon_Intruder"})

---- CrewLong

VVA.ApplyTemplateToVehicle("pzkChevalierPickupCrewLong","PZKA_Vehicles_Ftype_CrewLong_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_CrewLong_Pickup_Province"})
VVA.ApplyTemplateToVehicle("pzkFranklin350FPickupCrewLong","PZKA_Vehicles_Ftype_CrewLong_Pickup_Base",{"pzka_2SeatsF","PZKA_FType_CrewLong_Pickup_F350"})

PZKA.ApplyTemplateToVehicle("pzkChevalierProvinceLong","PZKA_Vehicles_Ftype_CrewLong_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_CrewLong_Wagon_Province"})
PZKA.ApplyTemplateToVehicle("pzkFranklin350FWagonLong","PZKA_Vehicles_Ftype_CrewLong_Wagon_Base",{"pzka_2SeatsF","PZKA_FType_CrewLong_Wagon_F350"})

PZKA.ApplyTemplateToVehicle("pzkChevalierProvinceLongCUCV","PZKA_Vehicles_Ftype_CrewLong_Wagon_Base_nr",{"pzka_2SeatsF","PZKA_FType_CrewLong_Wagon_Province_nr"})

-- Marocco80

VVA.ApplyTemplateToVehicle("pzkChevalierMaroca80","PZKA_Vehicles_Marocco80_Base",{"pzka_2SeatsF","pzka_Marocco80_variable"})
VVA.ApplyTemplateToVehicle("pzkChevalierMaroca80Bulletin","PZKA_Vehicles_Marocco80_Base_nr",{"pzka_2SeatsF","pzka_Marocco80_nr","PZKA_sle_lightbar","PZKA_Marocco80_lightbar"})
VVA.CopyTemplateToVehicle("pzkChevalierMaroca80KST","pzkChevalierMaroca80Bulletin")
VVA.CopyTemplateToVehicle("pzkChevalierMaroca80LV","pzkChevalierMaroca80Bulletin")
VVA.CopyTemplateToVehicle("pzkChevalierMaroca80Muld","pzkChevalierMaroca80Bulletin")

VVA.ApplyTemplateToVehicle("pzkDashPhoenix80","PZKA_Vehicles_Phoehix80_Base",{"pzka_2SeatsF","pzka_Phoenix80_variable"})
VVA.ApplyTemplateToVehicle("pzkDashPhoenix75","PZKA_Vehicles_Phoehix75_Base",{"pzka_2SeatsF","pzka_Phoenix75"})
VVA.ApplyTemplateToVehicle("pzkDashPhoenix75JP","PZKA_Vehicles_Phoehix75_Base_nr",{"pzka_2SeatsF","pzka_Phoenix75_nr"})

-- Lady

VVA.ApplyTemplateToVehicle("pzkMastersonLady","PZKA_Vehicles_Lady",{"pzka_2SeatsF","PZKA_Lady"})

-- Laser

VVA.ApplyTemplateToVehicle("pzkChevalierLaserModern","PZKA_Vehicles_Laser_2D",{"pzka_4SeatsR","PZKA_Laser","PZKA_LaserFill"})
VVA.ApplyTemplateToVehicle("pzkChevalierLaserCUCV","PZKA_Vehicles_Laser_2D_nr",{"pzka_4SeatsR","PZKA_Laser_nr","PZKA_LaserFill_nr"})
VVA.CopyTemplateToVehicle("pzkChevalierLaserFire","pzkChevalierLaserCUCV",{"VVA_t_lightbar","PZKA_Laser_Lightbar"})
VVA.CopyTemplateToVehicle("pzkChevalierLaserRanger","pzkChevalierLaserFire")
VVA.CopyTemplateToVehicle("pzkChevalierLaserLSU","pzkChevalierLaserFire")
VVA.CopyTemplateToVehicle("pzkChevalierLaserMall","pzkChevalierLaserLSU")
VVA.CopyTemplateToVehicle("pzkChevalierLaserPolice","pzkChevalierLaserCUCV",{"PZKA_sle_lightbar","PZKA_Laser_Lightbar"})
VVA.CopyTemplateToVehicle("pzkChevalierLaserPoliceBulletinSheriff","pzkChevalierLaserPolice")
VVA.CopyTemplateToVehicle("pzkChevalierLaserPoliceKST","pzkChevalierLaserPolice")
VVA.CopyTemplateToVehicle("pzkChevalierLaserPoliceLouisvilleCounty","pzkChevalierLaserPolice")
VVA.CopyTemplateToVehicle("pzkChevalierLaserPoliceMuldraughPolice","pzkChevalierLaserPolice")

VVA.ApplyTemplateToVehicle("pzkChevalierLaserOffroader","PZKA_Vehicles_Laser_5D",{"pzka_4SeatsR","PZKA_Laser5D","PZKA_LaserFill"})


---- Galloper

VVA.ApplyTemplateToVehicle("pzkFranklinGalloper","PZKA_Vehicles_Laser_2D",{"pzka_4SeatsR","PZKA_Laser","PZKA_GalloperFill"})
VVA.ApplyTemplateToVehicle("pzkFranklinGalloperCUCV","PZKA_Vehicles_Laser_2D_nr",{"pzka_4SeatsR","PZKA_Laser_nr","PZKA_GalloperFill_nr"})
VVA.CopyTemplateToVehicle("pzkFranklinGalloperFire","pzkFranklinGalloperCUCV",{"VVA_t_lightbar","PZKA_Laser_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinGalloperRanger","pzkFranklinGalloperFire")
VVA.CopyTemplateToVehicle("pzkFranklinGalloperLSU","pzkFranklinGalloperFire")
VVA.CopyTemplateToVehicle("pzkFranklinGalloperMall","pzkFranklinGalloperFire")
VVA.CopyTemplateToVehicle("pzkFranklinGalloperPolice","pzkFranklinGalloperCUCV",{"PZKA_sle_lightbar","PZKA_Laser_Lightbar"})
VVA.CopyTemplateToVehicle("pzkFranklinGalloperPoliceKST","pzkFranklinGalloperPolice")
VVA.CopyTemplateToVehicle("pzkFranklinGalloperPoliceLouisvilleCounty","pzkFranklinGalloperPolice")
VVA.CopyTemplateToVehicle("pzkFranklinGalloperPoliceMuldraughPolice","pzkFranklinGalloperPolice")
VVA.CopyTemplateToVehicle("pzkFranklinGalloperPoliceBulletinSheriff","pzkFranklinGalloperPolice")

---- Intruder

VVA.ApplyTemplateToVehicle("pzkDashIntruder150short","PZKA_Vehicles_Laser_2D",{"pzka_4SeatsR","PZKA_Laser","PZKA_IntruderFill"})

-- Rookie

VVA.ApplyTemplateToVehicle("pzkChevalierRookie","PZKA_Vehicles_Rookie",{"pzka_4SeatsR","PZKA_Rookie"})

-- Marocca

VVA.ApplyTemplateToVehicle("pzkChevalierMaroca","PZKA_Vehicles_Marocca_a",{"pzka_2SeatsF","PZKA_Marocca"})
VVA.ApplyTemplateToVehicle("pzkChevalierMarocaPoliceLV","PZKA_Vehicles_Marocca_nr_a",{"pzka_2SeatsF","PZKA_Marocca_nr","PZKA_sle_lightbar","PZKA_Marocca_lightbar"})
VVA.CopyTemplateToVehicle("pzkChevalierMarocaPoliceWP","pzkChevalierMarocaPoliceLV")
VVA.CopyTemplateToVehicle("pzkChevalierMarocaPoliceMeade","pzkChevalierMarocaPoliceLV")

---- Phoenix

VVA.ApplyTemplateToVehicle("pzkDashPhoenix","PZKA_Vehicles_Phoenix_a",{"pzka_2SeatsF","PZKA_Phoenix"})
VVA.ApplyTemplateToVehicle("pzkDashPhoenixBandit","PZKA_Vehicles_Phoenix_nr_a",{"pzka_2SeatsF","PZKA_Phoenix_nr"})

---- Phoenix

VVA.ApplyTemplateToVehicle("pzkDashPhoenix","PZKA_Vehicles_Phoenix_a",{"pzka_2SeatsF","PZKA_Phoenix"})
VVA.ApplyTemplateToVehicle("pzkDashPhoenixBandit","PZKA_Vehicles_Phoenix_nr_a",{"pzka_2SeatsF","PZKA_Phoenix_nr"})


-- Cheyene

VVA.ApplyTemplateToVehicle("pzkDashCheyene","PZKA_Vehicles_Cheyene",{"pzka_4SeatsR","PZKA_Cheyene"})
VVA.ApplyTemplateToVehicle("PZKA_DashCheyene_nr","PZKA_Vehicles_Cheyene_nr",{"pzka_4SeatsR","PZKA_Cheyene_nr"})
VVA.CopyTemplateToVehicle("PZKA_DashCheyene_lightbar","PZKA_DashCheyene_nr",{"PZKA_Cheyene_Lightbar"})
VVA.CopyTemplateToVehicle("pzkDashCheyeneBFRF","PZKA_DashCheyene_lightbar",{"VVA_t_lightbar"})
VVA.CopyTemplateToVehicle("pzkDashCheyeneAirportSecurity","PZKA_DashCheyene_lightbar",{"VVA_t_lightbar"})
VVA.CopyTemplateToVehicle("pzkDashCheyeneBFRFSec","PZKA_DashCheyene_lightbar",{"VVA_t_lightbar"})
VVA.CopyTemplateToVehicle("pzkDashCheyeneMeadeSheriff","PZKA_DashCheyene_lightbar",{"PZKA_sle_lightbar"})
VVA.CopyTemplateToVehicle("pzkDashCheyenePoliceLouisvillePD","pzkDashCheyeneMeadeSheriff")
VVA.CopyTemplateToVehicle("pzkDashCheyeneWestPoint","pzkDashCheyeneMeadeSheriff")

---- Navajo

VVA.ApplyTemplateToVehicle("pzkDashNavajoP","PZKA_Vehicles_NavajoP",{"pzka_4SeatsR","PZKA_NavajoP"})
VVA.ApplyTemplateToVehicle("pzkDashNavajoW","PZKA_Vehicles_NavajoW",{"pzka_4SeatsR","PZKA_NavajoW"})


--W35

VVA.ApplyTemplateToVehicle("pzkTruckDashW35BedMil","PZKA_Vehicles_W35_nr",{"pzka_2SeatsF","PZKA_W35_nr","PZKA_W35_TarpFrame_nr"})

---- Cabrio

VVA.ApplyTemplateToVehicle("pzkTruckDashW35CabrioMil","PZKA_Vehicles_W35Cabrio_nr",{"pzka_2SeatsF","PZKA_W35Cabrio_nr","PZKA_DoorsFront75"})

---- Tanker

VVA.ApplyTemplateToVehicle("pzkTruckDashW35FuelMil","PZKA_Vehicles_W35Tanker_nr",{"pzka_2SeatsF","PZKA_W35Tanker_nr"})
VVA.CopyTemplateToVehicle("pzkTruckDashW35WaterMil","pzkTruckDashW35FuelMil")

--D70

VVA.ApplyTemplateToVehicle("pzkTruckD70Box","PZKA_Vehicles_D70_Box",{"pzka_2SeatsF","PZKA_D70","VVA_D70_Box"})
VVA.ApplyTemplateToVehicle("pzkTruckD70Box2","PZKA_Vehicles_D70_2_Box",{"pzka_2SeatsF","PZKA_D70_2","VVA_D70_Box"})

VVA.ApplyTemplateToVehicle("pzkTruckD70BFRFHazmat","PZKA_Vehicles_D70_Hazmat_nr",{"pzka_2SeatsF","PZKA_D70_nr","PZKA_D70_Hazmat_nr"})

VVA.ApplyTemplateToVehicle("pzkTruckD70Dump","PZKA_Vehicles_D70_Dump",{"pzka_2SeatsF","PZKA_D70","VVA_D70_Dump"})
VVA.ApplyTemplateToVehicle("pzkTruckD70Dump2","PZKA_Vehicles_D70_2_Dump",{"pzka_2SeatsF","PZKA_D70_2","VVA_D70_Dump"})

VVA.ApplyTemplateToVehicle("pzkTruckD70Tow","PZKA_Vehicles_D70_Tow",{"pzka_2SeatsF","PZKA_D70","VVA_D70_Tow","VVA_t_lightbar","PZKA_D70_Lightbar"})
VVA.ApplyTemplateToVehicle("pzkTruckD70Tow2","PZKA_Vehicles_D70_2_Tow",{"pzka_2SeatsF","PZKA_D70_2","VVA_D70_Tow","VVA_t_lightbar","PZKA_D70_Lightbar"})
VVA.ApplyTemplateToVehicle("pzkTruckD70Tow2Bernie","PZKA_Vehicles_D70_2_Tow_nr",{"pzka_2SeatsF","PZKA_D70_Bernie_nr","VVA_D70_Tow_nr","VVA_t_lightbar","PZKA_D70_Lightbar"})
VVA.ApplyTemplateToVehicle("pzkTruckD70Tow2Wallace","PZKA_Vehicles_D70_Tow_nr",{"pzka_2SeatsF","PZKA_D70_nr","VVA_D70_Tow_nr","VVA_t_lightbar","PZKA_D70_Lightbar"})

-- TR2
VVA.ApplyTemplateToVehicle("pzkMastersonTR2Kouki","PZKA_Vehicles_MR2",{"pzka_2SeatsF","PZKA_MR2"})
VVA.ApplyTemplateToVehicle("pzkMastersonTR2Zenki","PZKA_Vehicles_MR2",{"pzka_2SeatsF","PZKA_MR2"})



--- OLD FRAMEWORK CODE





PZKA.CreateAnimationProfile("pzkContinentalBayer3304D","PZKA_Vehicles_Bayer_a","PZKA_Bayer4D_Light","PZKA_Bayer4D_animatedDoors",{"FLW","FRW","RLW","RRW"}, "VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer3302D","PZKA_Vehicles_Bayer_2D_a","PZKA_Bayer4D_Light","PZKA_Bayer2D_animatedDoors",{"FLW","FRW","RLOW","RROW"}, "VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer330Sport","PZKA_Vehicles_Bayer_Sport_a","PZKA_Bayer4D_Light","PZKA_BayerSport_animatedDoors",{"FLW","FRW","RLOW","RROW"}, "VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkContinentalBayer330Cabrio","PZKA_Vehicles_Bayer_Cabrio_a","PZKA_Bayer4D_Light","PZKA_BayerCabrio_animatedDoors",{"FL","FR"}, "VVA_TrunkDoorVersion",{"FL","FR","RL","RR"})










PZKA.CreateAnimationProfile("pzkCarMuscle", "PZKA_Vehicles_Muscle_a","PZKA_Muscle_lights","PZKA_Muscle_animatedDoors",{"FLW","FRW"},"VVA_TrunkDoorVersion")
PZKA.CreateAnimationProfile("pzkCarMuscleCabrio", "PZKA_Vehicles_MuscleCabrio_a","PZKA_Muscle_lights","PZKA_MuscleCabrio_animatedDoors",{"FL","FR"},"VVA_TrunkDoorVersion")











PZKA.CreateAnimationProfile("pzkDashRoyal","PZKA_Vehicles_Royal_a","PZKA_Royal_Lights_Royal","PZKA_DashRoyal_sedan_Royal",{"FLW","FRW"}, "VVA_TrunkDoorVersion")
PZKA.CloneAnimationProfile("pzkDashRoyalGrand","pzkDashRoyal")
PZKA.CloneAnimationProfile("pzkDashTornado","pzkDashRoyal","PZKA_Vehicles_Tornado_a","PZKA_Royal_Lights_Tornado","PZKA_DashRoyal_sedan_Tornado")
PZKA.CloneAnimationProfile("pzkChevalierDownhill","pzkDashRoyal","PZKA_Vehicles_Downhill_a","PZKA_Royal_Lights_Downhill","PZKA_DashRoyal_sedan_Downhill")
PZKA.CreateAnimationProfile("pzkChevalierRoadrunner","PZKA_Vehicles_Roadrunner_a","PZKA_Royal_Lights_Roadrunner","PZKA_DashRoyal_roadrunner",{"FLW","FRW"}, "PZKA_OpenBedVersion")



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
PZKA.CloneAnimationProfile("pzkFranklinStallionPoliceLouisvillePD","pzkFranklinStallionPolice")
PZKA.CloneAnimationProfile("pzkFranklinStallionPoliceMeadeSheriff","pzkFranklinStallionPolice")
PZKA.CloneAnimationProfile("pzkFranklinStallionPoliceWestPoint","pzkFranklinStallionPolice")

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


PZKA.CreateAnimationProfile("pzkPickupFranklin","PZKA_Vehicles_FranklinRaider_a","pzka_FranklinRaider_Light","PZKA_FranklinRaider",{"FLW","FRW"},"PZKA_OpenBedVersion")


print("PZKA: applyAnimations loaded")