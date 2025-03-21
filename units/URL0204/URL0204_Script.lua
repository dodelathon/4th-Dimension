#****************************************************************************
#**
#**  File     :  /units/URL0204/URL0204_script.*
#**  Author(s):  Optimus Prime
#**
#**  Summary  :  Cybran Stealthed Insectoid
#**
#****************************************************************************

local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon
local CWalkingLandUnit = import('/lua/cybranunits.lua').CWalkingLandUnit

URL0204 = Class(CWalkingLandUnit) {
    Weapons = {
        MainGun = Class(CDFLaserHeavyWeapon) {},
    },
	
	OnStopBeingBuilt = function(self,builder,layer)
        CWalkingLandUnit.OnStopBeingBuilt(self,builder,layer)
        self:SetScriptBit('RULEUTC_StealthToggle', true)
    end,
}

TypeClass = URL0204