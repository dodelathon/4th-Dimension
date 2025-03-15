#****************************************************************************
#**
#**  File     :  /units/URL0305/URL0305_script.*
#**  Author(s):  Optimus Prime
#**
#**  Summary  :  Hellhound Script
#**
#****************************************************************************

local CWalkingLandUnit = import('/lua/cybranunits.lua').CWalkingLandUnit
local cWeapons = import('/lua/cybranweapons.lua')
local CDFLaserDisintegratorWeapon = cWeapons.CDFLaserDisintegratorWeapon01


URL0305 = Class(CWalkingLandUnit) {
    Weapons = {
        MainGun = Class(CDFLaserDisintegratorWeapon) {},
    },
	
	OnStopBeingBuilt = function(self, builder, layer)
		CWalkingLandUnit.OnStopBeingBuilt(self, builder, layer)
		self:AddCommandCap('RULEUCC_Teleport')
	end,
}

TypeClass = URL0305