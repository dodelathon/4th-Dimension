#****************************************************************************
#**
#**  File     :  /data/units/XAL0305/XAL0305_script.lua
#**  Author(s):  Jessica St. Croix
#**
#**  Summary  :  Aeon Sniper Bot Script
#**
#**  Copyright © 2007 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local AWalkingLandUnit = import('/lua/aeonunits.lua').AWalkingLandUnit
local ADFHeavyDisruptorCannonWeapon = import('/lua/aeonweapons.lua').ADFHeavyDisruptorCannonWeapon

XAL0305 = Class(AWalkingLandUnit) {
    Weapons = {
        MainGun = Class(ADFHeavyDisruptorCannonWeapon) {}
    },
	
	OnStopBeingBuilt = function(self, builder, layer)
		AWalkingLandUnit.OnStopBeingBuilt(self, builder, layer)
		self:AddCommandCap('RULEUCC_Teleport')
	end,
}

TypeClass = XAL0305