#****************************************************************************
#**  File     :  UAB2303_script.lua
#**
#**  Author(s):  Resin_Smoker & Optimus Prime
#**
#**  Summary  :  Aeon Heavy POP-Up Artillery Tower Script
#**
#**  Copyright © 16 AUG 2008
#****************************************************************************

local AStructureUnit = import('/lua/aeonunits.lua').AStructureUnit
local AIFArtilleryMiasmaShellWeapon = import('/lua/aeonweapons.lua').AIFArtilleryMiasmaShellWeapon

UAB2303 = Class(AStructureUnit) {

    Weapons = {
        MainGun = Class(AIFArtilleryMiasmaShellWeapon) {},
            OnGotTarget = function(self)
               if self.unit:IsDead() == false then
                   self.unit.HaveTarget = true
               end
               AIFArtilleryMiasmaShellWeapon.OnGotTarget(self)
            end,

            OnLostTarget = function(self)
               if self.unit:IsDead() == false then
                   self.unit.HaveTarget = false
               end
               AIFArtilleryMiasmaShellWeapon.OnLostTarget(self)
            end, 
    },

    OnCreate = function(self,builder,layer)
        AStructureUnit.OnCreate(self)
        ### Global variable setup
        self.MyWeapon = self:GetWeaponByLabel('MainGun')

        ### Disables weapons so damage limitation can be active while unit is being built even if there is a target within range
        self:SetWeaponEnabledByLabel('MainGun', false)
    end,

    OnStopBeingBuilt = function(self,builder,layer)
        AStructureUnit.OnStopBeingBuilt(self)

        ### Enables weapons after being built
        self:SetWeaponEnabledByLabel('MainGun', true)
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
        self:SetWeaponEnabledByLabel('MainGun', false)

        ### Final command to finish off the death event
        AStructureUnit.OnKilled(self, instigator, type, overkillRatio)
    end,
}

TypeClass = UAB2303
