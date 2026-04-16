local PZKA = require "PZKA_core"
require "PZKA_applyAnimations"



if PZKA.CheckModEnabled("StandardizedVehicleUpgrades3V") then
	
	local function LinkAnimationsToArmor(vehicleId, armor, module)
		local handler = PZKA.TeplateHandler(vehicleId, module)
		if armor then
			handler.plus({armor})
		end
	end

	-- BEGIN: VVA-related
	LinkAnimationsToArmor("PZKA_Normal_Sedan_F", 				"PZKA_SVU_Armor_Normal")
	--LinkAnimationsToArmor("PZKA_Normal_Sedan_F_nr", 			"PZKA_SVU_Armor_Normal_nr")	
	LinkAnimationsToArmor("PZKA_Normal_Sedan_V", 				"PZKA_SVU_Armor_Normal")
	LinkAnimationsToArmor("PZKA_Normal_Sedan_V_nr", 			"PZKA_SVU_Armor_Normal_nr")	
	-- END: VVA-related

	LinkAnimationsToArmor("pzkChevalierCerise93", 				"PZKA_SVU_Armor_Cerise93")
	LinkAnimationsToArmor("pzkChevalierCerise93Service", 		"PZKA_SVU_Armor_Cerise93_nr")
	LinkAnimationsToArmor("pzkChevalierCerise93Taxi", 		    "PZKA_SVU_Armor_Cerise93_nr")
	LinkAnimationsToArmor("pzkChevalierCerise93PoliceK9", 		"PZKA_SVU_Armor_Cerise93_nr")

	LinkAnimationsToArmor("pzkChevalierCerise93Wagon", 		    "PZKA_SVU_Armor_Cerise93Wagon")
	LinkAnimationsToArmor("pzkChevalierCerise93WagonFire", 		"PZKA_SVU_Armor_Cerise93Wagon_nr")


    LinkAnimationsToArmor("pzkFranklinTriumph", 				"PZKA_SVU_Armor_Cerise93_Tri")
	LinkAnimationsToArmor("pzkFranklinTriumphService", 		    "PZKA_SVU_Armor_Cerise93_Tri_nr")
	LinkAnimationsToArmor("pzkFranklinTriumphTaxi", 		    "PZKA_SVU_Armor_Cerise93_Tri_nr")
	LinkAnimationsToArmor("pzkChevalierTriumph3PoliceK9", 		"PZKA_SVU_Armor_Cerise93_Tri_nr")

    LinkAnimationsToArmor("pzkFranklinTriumphWagon", 		    "PZKA_SVU_Armor_Cerise93Wagon_Tri")
	LinkAnimationsToArmor("pzkFranklinTriumphWagonLSU", 		"PZKA_SVU_Armor_Cerise93Wagon_Tri_nr")

end