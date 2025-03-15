#****************************************************************************
#**
#**  File     :  /cdimage/units/URL0205/URL0205_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  Cybran Mobile Flak Artillery Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local CLandUnit = import('/lua/cybranunits.lua').CLandUnit
local CAABurstCloudFlakArtilleryWeapon = import('/lua/cybranweapons.lua').CAABurstCloudFlakArtilleryWeapon

URL0205 = Class(CLandUnit) {
    DestructionPartsLowToss = {'Turret',},

    Weapons = {
        AAGun_STD = Class(CAABurstCloudFlakArtilleryWeapon) {},
        AAGun_Burst = Class(CAABurstCloudFlakArtilleryWeapon) {},
    },

    OnCreate = function(self)
        CLandUnit.OnCreate(self)
        self:SetWeaponEnabledByLabel('AAGun_Burst', false)
    end,

    OnScriptBitSet = function(self, bit)
        CLandUnit.OnScriptBitSet(self, bit)
        if bit == 1 then 
            self:SetWeaponEnabledByLabel('AAGun_Burst', true)
            self:SetWeaponEnabledByLabel('AAGun_STD', false)
            self:GetWeaponManipulatorByLabel('AAGun_Burst'):SetHeadingPitch( self:GetWeaponManipulatorByLabel('AAGun_STD'):GetHeadingPitch() )
        end
    end,

    OnScriptBitClear = function(self, bit)
        CLandUnit.OnScriptBitClear(self, bit)
        if bit == 1 then 
            self:SetWeaponEnabledByLabel('AAGun_Burst', false)
            self:SetWeaponEnabledByLabel('AAGun_STD', true)
            self:GetWeaponManipulatorByLabel('AAGun_STD'):SetHeadingPitch( self:GetWeaponManipulatorByLabel('AAGun_Burst'):GetHeadingPitch() )
        end
    end,
}

TypeClass = URL0205