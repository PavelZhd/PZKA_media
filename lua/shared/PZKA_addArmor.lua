local PZKA = require "PZKA_core"
require "PZKA_applyAnimations"



if PZKA.CheckModEnabled("StandardizedVehicleUpgrades3V") then
	
	local function LinkAnimationsToArmor(vehicleId, armor, module)
		local handler = PZKA.TeplateHandler(vehicleId, module)
		if armor then
			handler.plus({armor})
		end
	end
	--LinkAnimationsToArmor("pzkChevalierCerise93", 				"PZKA_SVU_Armor_Cerise93")
end