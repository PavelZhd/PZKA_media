local VVA = require "VVA_core"
require "PZKA_applyAnimations"
local VVA_SVU = require "SVUV_Stuffs_extras"


if VVA.CheckModEnabled("StandardizedVehicleUpgrades3V") and VVA.CheckModEnabled("VanillaVehiclesAnimated_SVU") then	

	VVA_SVU.LinkHoodOverride("VVA_PZK_Normal_hood","PU_armor_PZK_Normal_hood","VVA_SVU_Hood_PZK_Normal")
	
	VVA_SVU.LinkFixedAnimation("VVA_PZK_Normal_Rear","PU_armor_PZK_NormalF_Rear")
	VVA_SVU.LinkFixedAnimation("VVA_PZK_Normal_Nyala42_Rear","PU_armor_PZK_Normal_Rear")
	VVA_SVU.LinkFixedAnimation("VVA_Hearse_Rear_nr","PU_armor_PZK_Normal_Rear")
	VVA_SVU.LinkFixedAnimation("VVA_Limo_Rear","PU_armor_PZK_Normal_Rear")
	VVA_SVU.LinkFixedAnimation("VVA_Limo_Nyala42_Rear","PU_armor_PZK_Normal_Rear")

	VVA_SVU.LinkFixedAnimation("VVA_Hearse_Trunk","PU_armor_Hearse_hearse_trunkWindow")
	VVA_SVU.LinkFixedAnimation("VVA_Hearse_Ghoulbuster_Trunk","PU_armor_Hearse_hearse_trunkWindow")
	
	VVA_SVU.LinkFixedAnimation("VVA_PZKAWagon_Trunk","PU_armor_PZKAWagon_wagon_trunkWindow")
	VVA_SVU.LinkFixedAnimation("VVA_PZKAWagon_Mayor_Trunk","PU_armor_PZKAWagon_wagon_trunkWindow")
	
	VVA_SVU.LinkFixedAnimation("VVA_PZKAWagon_Grisworld_Trunk_nr","PU_armor_Gris_griswold_trunkWindow")

	VVA_SVU.LinkFixedAnimation("VVA_Van_Open_Rear", "PU_armor_Van_Rear")
	VVA_SVU.LinkFixedAnimation("VVA_VVan_Open_Middle", "PU_armor_Van_Middle")
	
	VVA_SVU.LinkFixedAnimation("VVA_Van_Bed_Rear", "PU_armor_Van_bed_Rear")
	
	VVA.addToProfile("PU_armor_Van_Camper_trunkWindow",{"PU_armor_Van_Camper_trunkWindow","PU_armor_Van_trunk"})
	VVA_SVU.LinkFixedAnimation("VVA_Van_Trunk_Camper", "PU_armor_Van_Camper_trunkWindow")
	VVA_SVU.LinkFixedAnimation("VVA_Van_Camper_Rear", "PU_armor_Van_Camper_Rear")

end