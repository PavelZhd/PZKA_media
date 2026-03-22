local PZKA = require "PZKA_core"
require "PZKA_applyAnimations"



if PZKA.CheckModEnabled("StandardizedVehicleUpgrades3V") then
	
	local function LinkAnimationsToArmor(vehicleId, armor, module)
		local handler = PZKA.TeplateHandler(vehicleId, module)
		if armor then
			handler.plus({armor})
		end
	end
	LinkAnimationsToArmor("pzkChevalierCerise93", 				"PZKA_SVU_Armor_Cerise93")
	LinkAnimationsToArmor("pzkChevalierCerise93Service", 		"PZKA_SVU_Armor_Cerise93_nr")
	LinkAnimationsToArmor("pzkChevalierCerise93Taxi", 		    "PZKA_SVU_Armor_Cerise93_nr")
	LinkAnimationsToArmor("pzkChevalierCerise93PoliceK9", 		"PZKA_SVU_Armor_Cerise93_nr")

    LinkAnimationsToArmor("pzkFranklinTriumph", 				"PZKA_SVU_Armor_Cerise93")
	LinkAnimationsToArmor("pzkFranklinTriumphService", 		    "PZKA_SVU_Armor_Cerise93_nr")
	LinkAnimationsToArmor("pzkFranklinTriumphTaxi", 		    "PZKA_SVU_Armor_Cerise93_nr")
	LinkAnimationsToArmor("pzkChevalierTriumph3PoliceK9", 		"PZKA_SVU_Armor_Cerise93_nr")

end