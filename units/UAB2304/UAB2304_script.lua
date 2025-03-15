#****************************************************************************
#**  File     :  UAB2304_script.lua
#**
#**  Author(s):  Resin_Smoker & Optimus Prime
#**
#**  Summary  :  Aeon Heavy POP-Up SAM Tower Script
#**
#**  Copyright © 16 AUG 2008
#****************************************************************************

local AStructureUnit = import('/lua/aeonunits.lua').AStructureUnit
local AAAZealotMissileWeapon = import('/lua/aeonweapons.lua').AAAZealotMissileWeapon

UAB2304 = Class(AStructureUnit) {
    Weapons = {
        AntiAirMissiles = Class(AAAZealotMissileWeapon) {},
    },

    OnCreate = function(self,builder,layer)
        AStructureUnit.OnCreate(self)
        ### Global variable setup
        self.MyWeapon = self:GetWeaponByLabel('AntiAirMissiles')

        ### Disables weapons so damage limitation can be active while unit is being built even if there is a target within range
        self:SetWeaponEnabledByLabel('AntiAirMissiles', false)
    end,

    OnStopBeingBuilt = function(self,builder,layer)
        AStructureUnit.OnStopBeingBuilt(self)

        ### Enables weapons after being built
        self:SetWeaponEnabledByLabel('AntiAirMissiles', true)
    end,

    OnDamage = function(self, instigator, amount, vector, damagetype)
        if not self:IsDead() and not self.MyWeapon:GetCurrentTarget() then
            ### 50% reduction while not attacking
            local damageReduction = 0.5
            amount = math.ceil(amount * damageReduction)
        else
            ### 0% reduction while attacking
            local damageReduction = 1.0
            amount = math.ceil(amount * damageReduction)
        end
        AStructureUnit.OnDamage(self, instigator, amount, vector, damagetype)
    end,

    OnKilled = function(self, instigator, type, overkillRatio)
        ### Disables weapons
        self:SetWeaponEnabledByLabel('AntiAirMissiles', false)

        ### Final command to finish off the death event
        AStructureUnit.OnKilled(self, instigator, type, overkillRatio)
    end,
}

TypeClass = UAB2304