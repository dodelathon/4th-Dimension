#****************************************************************************
#**  File     :  UAB2204_script.lua
#**
#**  Author(s):  Resin_Smoker & Optimus Prime
#**
#**  Summary  :  Aeon Heavy POP-Up Flak Tower Script
#**
#**  Copyright © 16 AUG 2008
#****************************************************************************

local AStructureUnit = import('/lua/aeonunits.lua').AStructureUnit
local AAATemporalFizzWeapon = import('/lua/aeonweapons.lua').AAATemporalFizzWeapon

UAB2204 = Class(AStructureUnit) {
    Weapons = {
        AAFizz = Class(AAATemporalFizzWeapon) {
            ChargeEffectMuzzles = {'Turret_Right_Muzzle', 'Turret_Left_Muzzle'},
           
            PlayFxRackSalvoChargeSequence = function(self)
                AAATemporalFizzWeapon.PlayFxRackSalvoChargeSequence(self)
                CreateAttachedEmitter( self.unit, 'Turret_Right_Muzzle', self.unit:GetArmy(), '/effects/emitters/temporal_fizz_muzzle_charge_02_emit.bp')
                CreateAttachedEmitter( self.unit, 'Turret_Left_Muzzle', self.unit:GetArmy(), '/effects/emitters/temporal_fizz_muzzle_charge_03_emit.bp')
            end,
        },
    },

    OnCreate = function(self,builder,layer)
        AStructureUnit.OnCreate(self)
        ### Global variable setup
        self.MyWeapon = self:GetWeaponByLabel('AAFizz')

        ### Disables weapons so damage limitation can be active while unit is being built even if there is a target within range
        self:SetWeaponEnabledByLabel('AAFizz', false)
    end,

    OnStopBeingBuilt = function(self,builder,layer)
        AStructureUnit.OnStopBeingBuilt(self)

        ### Enables weapons after being built
        self:SetWeaponEnabledByLabel('AAFizz', true)
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
        self:SetWeaponEnabledByLabel('AAFizz', false)

        ### Final command to finish off the death event
        AStructureUnit.OnKilled(self, instigator, type, overkillRatio)
    end,

}

TypeClass = UAB2204