#****************************************************************************
#**
#**  File     :  /cdimage/units/UAA0310/UAA0310_script.lua
#**  Author(s):  John Comes
#**
#**  Summary  :  Aeon CZAR Script
#**
#**  Copyright � 2006 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local AAirUnit = import('/lua/aeonunits.lua').AAirUnit
local aWeapons = import('/lua/aeonweapons.lua')
local AQuantumBeamGenerator = aWeapons.AQuantumBeamGenerator
local AAAZealotMissileWeapon = aWeapons.AAAZealotMissileWeapon
local AANDepthChargeBombWeapon = aWeapons.AANDepthChargeBombWeapon
local AAATemporalFizzWeapon = aWeapons.AAATemporalFizzWeapon
local explosion = import('/lua/defaultexplosions.lua')

UAA0310 = Class(AAirUnit) {
   DestroyNoFallRandomChance = 1.1,
   Weapons = {

       QuantumBeamGeneratorWeapon = Class(AQuantumBeamGenerator){},
       SonicPulseBattery1 = Class(AAAZealotMissileWeapon) {},
       SonicPulseBattery2 = Class(AAAZealotMissileWeapon) {},
       SonicPulseBattery3 = Class(AAAZealotMissileWeapon) {},
       SonicPulseBattery4 = Class(AAAZealotMissileWeapon) {},
       DepthCharge01 = Class(AANDepthChargeBombWeapon) {},
       DepthCharge02 = Class(AANDepthChargeBombWeapon) {},
       AAFizz01 = Class(AAATemporalFizzWeapon) {},
       AAFizz02 = Class(AAATemporalFizzWeapon) {},
   },

   OnKilled = function(self, instigator, type, overkillRatio)
       local wep = self:GetWeaponByLabel('QuantumBeamGeneratorWeapon')
       for k, v in wep.Beams do
           v.Beam:Disable()
       end
       if self.Rotator1 then
           self.Rotator1:SetTargetSpeed(0)
       end
       self.detector = CreateCollisionDetector(self)
       self.Trash:Add(self.detector)
       self.detector:WatchBone('Left_Turret01_Muzzle')
       self.detector:WatchBone('Right_Turret01_Muzzle')
       self.detector:WatchBone('Left_Turret02_WepFocus')
       self.detector:WatchBone('Right_Turret02_WepFocus')
       self.detector:WatchBone('Left_Turret03_Muzzle')
       self.detector:WatchBone('Right_Turret03_Muzzle')
       self.detector:WatchBone('Attachpoint01')
       self.detector:WatchBone('Attachpoint02')
       self.detector:EnableTerrainCheck(true)
       self.detector:Enable()


       AAirUnit.OnKilled(self, instigator, type, overkillRatio)
   end,

   OnAnimTerrainCollision = function(self, bone,x,y,z)
       DamageArea(self, {x,y,z}, 5, 1000, 'Default', true, false)
       explosion.CreateDefaultHitExplosionAtBone( self, bone, 5.0 )
       explosion.CreateDebrisProjectiles(self, explosion.GetAverageBoundingXYZRadius(self), {self:GetUnitSizes()})
   end,

   BuildAttachBone = 'UAA0310',

   OnStopBeingBuilt = function(self,builder,layer)
       AAirUnit.OnStopBeingBuilt(self,builder,layer)
       self.Rotator1 = CreateRotator(self, 'UAA0310', 'y', nil, 0, 2, 4)
       ChangeState(self, self.IdleState)
   end,

   OnFailedToBuild = function(self)
       AAirUnit.OnFailedToBuild(self)
       ChangeState(self, self.IdleState)
   end,

   IdleState = State {
       Main = function(self)
           self:DetachAll(self.BuildAttachBone)
           self:SetBusy(false)
       end,

       OnStartBuild = function(self, unitBuilding, order)
           AAirUnit.OnStartBuild(self, unitBuilding, order)
           self.UnitBeingBuilt = unitBuilding
           ChangeState(self, self.BuildingState)
       end,
   },

   BuildingState = State {
       Main = function(self)
           local unitBuilding = self.UnitBeingBuilt
           self:SetBusy(true)
           local bone = self.BuildAttachBone
           self:DetachAll(bone)
           unitBuilding:HideBone(0, true)
           self.UnitDoneBeingBuilt = false
       end,

       OnStopBuild = function(self, unitBeingBuilt)
           AAirUnit.OnStopBuild(self, unitBeingBuilt)
           ChangeState(self, self.FinishedBuildingState)
       end,
   },

   FinishedBuildingState = State {
       Main = function(self)
           self:SetBusy(true)
           local unitBuilding = self.UnitBeingBuilt
           unitBuilding:DetachFrom(true)
           self:DetachAll(self.BuildAttachBone)
           if self:TransportHasAvailableStorage() then
               self:AddUnitToStorage(unitBuilding)
           else
               local worldPos = self:CalculateWorldPositionFromRelative({0, 0, -20})
               IssueMoveOffFactory({unitBuilding}, worldPos)
               IssueGuard({unitBuilding}, self)
               unitBuilding:ShowBone(0,true)
           end
           self:SetBusy(false)
           ChangeState(self, self.IdleState)
       end,
   },

}

TypeClass = UAA0310
