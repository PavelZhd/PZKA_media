require "Tuning2/ATATuning2"
		
if not ATATuning2 then ATATuning2 = {} end
if not ATATuning2.Create then ATATuning2.Create = {} end
if not ATATuning2.Init then ATATuning2.Init = {} end
if not ATATuning2.UninstallComplete then ATATuning2.UninstallComplete = {} end
if not ATATuning2.InstallComplete then ATATuning2.InstallComplete = {} end

function SetHoodScooped(hood, isScooped)
	if (not hood) then	
		return false;
	end
	if (isScooped) then
		hood:setModelVisible("Default", false);
		hood:setModelVisible("Scooped", true);
	else
		hood:setModelVisible("Scooped", false);
		hood:setModelVisible("Default", true);	
	end
end

function SetModelAnchor(part) 
	local modData = part:getModData();
	if not modData or not modData.tuning2 or not modData.tuning2.model then	
		part:setModelVisible("anchorNormal", false);
		part:setModelVisible("anchorRusted", false);
	else
		part:setModelVisible(modData.tuning2.model, false);
		if string.find(modData.tuning2.model, "Rusted") then
			part:setModelVisible("anchorNormal", false);
			part:setModelVisible("anchorRusted", true);
		else
			part:setModelVisible("anchorNormal", true);
			part:setModelVisible("anchorRusted", false);
		end
		part:setModelVisible(modData.tuning2.model, true);		
	end
end

function ATATuning2.InstallComplete.AirScoop(vehicle, part)
	ATATuning2.InstallComplete.Tuning(vehicle, part);
	local hood = vehicle:getPartById("EngineDoor");
	if hood and hood:getInventoryItem() then 
		SetHoodScooped(hood,true);
	end
end

function ATATuning2.UninstallComplete.AirScoop(vehicle, part, item)
	ATATuning2.UninstallComplete.Tuning(vehicle, part, item);
	local hood = vehicle:getPartById("EngineDoor");
	if hood and hood:getInventoryItem() then 
		SetHoodScooped(hood, false);
	end
end

function ATATuning2.Create.ScoopedHood(vehicle, part)
	Vehicles.Create.Default(vehicle, part);
	if not part or not part:getInventoryItem() then 
		return false; 
	end
	local scoop = vehicle:getPartById("ATA2AirScoop");
	SetHoodScooped(part, not(not scoop or not scoop:getInventoryItem()));
end

function ATATuning2.Init.ScoopedHood(vehicle, part)
	Vehicles.Init.Door(vehicle, part);
	if not part or not part:getInventoryItem() then 
		return false; 
	end
	local scoop = vehicle:getPartById("ATA2AirScoop");
	SetHoodScooped(part, scoop and scoop:getInventoryItem());
end

function ATATuning2.InstallComplete.ScoopedHood(vehicle, part)
	Vehicles.InstallComplete.Door(vehicle, part);
	local scoop = vehicle:getPartById("ATA2AirScoop");
	SetHoodScooped(part, not(not scoop or not scoop:getInventoryItem()));
end
function ATATuning2.UninstallComplete.ScoopedHood(vehicle, part,item)
	Vehicles.UninstallComplete.Door(vehicle, part,item);
	part:setModelVisible("Default", false);
	part:setModelVisible("Scooped", false);
end

function ATATuning2.Create.AnchorTuning(vehicle, part)
	ATATuning2.Create.Tuning(vehicle, part);
	SetModelAnchor(part);
end

function ATATuning2.Init.AnchorTuning(vehicle, part)
	ATATuning2.Init.Tuning(vehicle, part);
	SetModelAnchor(part);
end

function ATATuning2.InstallComplete.AnchorTuning(vehicle, part)
	ATATuning2.InstallComplete.Tuning(vehicle, part);
	SetModelAnchor(part);
end

function ATATuning2.UninstallComplete.AnchorTuning(vehicle, part,item)
	ATATuning2.UninstallComplete.Tuning(vehicle, part,item);
	part:setModelVisible("anchorNormal", false);
	part:setModelVisible("anchorRusted", false);
end