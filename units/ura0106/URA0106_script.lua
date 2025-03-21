#****************************************************************************
#**
#**  File     :  URA0106_script.lua
#**  Author(s):  Resin_Smoker, Optimus Prime
#**
#**  Summary  :  Cybran Mosquito, Drone Gunship Script
#**
#**  Special Thanks to :  ChirmayaWrongEmail, Eni, Neruz, Goom, Gilbot-X, Sorian
#**
#**  Copyright � 2009, 4th Dimension
#****************************************************************************

#### Localy imported files ####
local CAirUnit = import('/lua/cybranunits.lua').CAirUnit
local EffectUtil = import('/lua/EffectUtilities.lua')
local util = import('/lua/utilities.lua')
local Buff = import('/lua/sim/buff.lua')
local baseUnit = import('/lua/sim/unit.lua').Unit

#### Weapon local files ####
local CAAAutocannon = import('/lua/cybranweapons.lua').CAAAutocannon

URA0106 = Class(CAirUnit) { 
    Weapons = { 
        MainGun = Class(CAAAutocannon) {        
            CreateProjectileAtMuzzle = function(self, muzzle)
                if not self.unit:IsDead() and self.unit:GetWeaponByLabel('MainGun'):GetCurrentTarget() then
                    local myWeapon = self.unit:GetWeaponByLabel('MainGun')
                    local myTarget = myWeapon:GetCurrentTarget()
                end
                local proj = CAAAutocannon.CreateProjectileAtMuzzle(self, muzzle)
            end,
        }, 
    }, 
    
### File pathing and special paramiters called ########################### 

    ### Setsup parent call backs between drone and parent
    Parent = nil,

    SetParent = function(self, parent, droneName)
        self.Parent = parent
        self.Drone = droneName
    end,

    ### Afterburner and exhaust effect pathing 

    BeamAfterBurner = '/effects/emitters/aeon_nuke_exhaust_beam_01_emit.bp', 
    BeamCruise = '/effects/emitters/aeon_nuke_exhaust_beam_02_emit.bp',
    ExhaustSmoke = '/effects/emitters/missile_smoke_exhaust_02_emit.bp', 
    
########################################################################## 

    OnCreate = function(self, builder, layer)
		CAirUnit.OnCreate(self,builder,layer) 
        if not self:IsDead() then 
            self:SetScriptBit('RULEUCC_RetaliateToggle', false) 
               
            ### Global Varibles 
            self.BeamExhaustEffectsBag = {} 

            ### Global booleans            
            self.BurnerActive = false
            self.Evade = false
            self.MoveToParent = false
            self.DmgMod = false
            self.Launch = true    
       
            ### Global varibles            
            self.Duration = 1
            self.MyWeapon = self:GetWeaponByLabel('MainGun')
            self.MyMaxSpeed = self:GetBlueprint().Air.MaxAirspeed
            self.WepRng = self.MyWeapon:GetBlueprint().MaxRadius
                                                         
            ### Start of launch special effects
            self:ForkThread(self.LaunchEffects)
        end 
    end, 

    LaunchEffects = function(self)
        ### Are we dead?
        if not self:IsDead() and not self.Parent:IsDead() then
        
			### Set flag to true 
            self.BurnerActive = true
             
            ### Issues the move command to simulate a launch
            IssueClearCommands({self})
            local destination = self:CalculateWorldPositionFromRelative({0,0,30})
            IssueMove({self}, destination)
                  
            ### Kick off Afterburner multi and effects 
            self:ForkThread(self.Afterburner)
                          
            ### Duration of launch
            WaitSeconds(self.Duration)
            
            if not self:IsDead() and not self.Parent:IsDead() then
            
                ### This global uses the carriers intel radius as the drones max range
                self.MyMaxRange = self.Parent:GetBlueprint().Intel.VisionRadius 
            
                ### Tells the drone to guard the carrier
                self:ForkThread(self.GuardCarrier) 
                              
                ### Enables weapons
                self:SetWeaponEnabledByLabel('MainGun', true)
                self:SetScriptBit('RULEUCC_RetaliateToggle', true)
                
                ### Heartbeat event to monitor the drones distance from the carrier, if the drone gets too far away it is recalled to the carrier
                self:HeartBeatDroneCheck()
            end
        end
    end,
   
    HeartBeatDroneCheck = function(self)
        while self and not self:IsDead() do        
            ### Verify that we have fuel and get distance from parent carrier 
            local myFuel = self:GetFuelRatio()
            local dronePos = self:GetPosition()
            
            ### using a reference point 25 ahead of the carriers known position to keep the drones from falling behind
            local parentPos = self.Parent:CalculateWorldPositionFromRelative({0, 0, 25}) 
            local parentDist = VDist2(dronePos[1], dronePos[3], parentPos[1], parentPos[3])
            
            if myFuel <= 0 then
                ### Kill drone if no fuel avalible
                self:Kill(self,'Normal',0)  
                              
            elseif parentDist >= self.MyMaxRange and self.Evade == false and self.MoveToParent == false then
                ### Set flag to true      
                self.MoveToParent = true
                
                ### Disables weapons and attempts to move drone back to parent
                           
                self:SetScriptBit('RULEUCC_RetaliateToggle', false)
                IssueClearCommands({self})
                IssueMove({self}, parentPos) 
                     
            elseif parentDist <= self.MyMaxRange then
                ### Set flag to false
                self.MoveToParent = false
                
                self:SetScriptBit('RULEUCC_RetaliateToggle', true)                   
                if self.MyWeapon:GetCurrentTarget() then
                    local myTarget = self.MyWeapon:GetCurrentTarget()
                                       
                    ### Verify that our current target is a valid air target
                    if table.find(myTarget:GetBlueprint().Categories,'HIGHALTAIR') and not table.find(myTarget:GetBlueprint().Categories,'EXPERIMENTAL') then              
                        
                        ### Get the distance to our target
                        local tarPos = myTarget:GetPosition()
                        local distance = VDist2(dronePos[1], dronePos[3], tarPos[1], tarPos[3])
                        local myTargetSpeed = myTarget:GetBlueprint().Air.MaxAirspeed  
                                            
                        ### Sets the fighter max speed to that of the target to help prevent overshoot.
                        if distance <= self.WepRng and self.Evade == false then                                                                                         
                            ### Compute the speed of the target and match it
                            self:SetSpeedMult(myTargetSpeed / self.MyMaxSpeed)
                            self:SetAccMult(1.0)
                            self:SetTurnMult(1.5)
                                                       
                        ### If our target is out of weapons range then engage afterburner                                          
                        elseif distance > self.WepRng and self.BurnerActive == false then  
                                                  
                            ### Set flag to true 
                            self.BurnerActive = true   
                                                   
                            ### Kick off Afterburner multi and effects 
                            self:ForkThread(self.Afterburner)      
                        end
                    end
                else
                    ### Tells the drone to guard the carrier
                    self:ForkThread(self.GuardCarrier) 
                end
            end         
            ### Delay between checks
            WaitSeconds(1)
        end
    end,
    
	OnKilledUnit = function(self, unitKilled, massKilled)
		CAirUnit.OnKilledUnit(self, unitKilled, massKilled)
		if not self:IsDead() and not self.Parent:IsDead() then
            self:ForkThread(self.UpdateCarrierKills(self, unitKilled, massKilled)) 
        end
	end,    
    
    UpdateCarrierKills = function(self, unitKilled, massKilled)
        ### Updates the carrier veterancy to match that of the drone
        self.Parent.ReceiveKills(self.Parent, unitKilled, massKilled/8)  
    end,
              
    OnMotionHorzEventChange = function(self, new, old) 
        ### Should the drone stop flying it will automaticly be re-assigned to guard the carrier 
        if not self:IsDead() and not self.Parent:IsDead() then 
            if new == 'Stopped' or new == 'Stopping' and not self.MyWeapon:GetCurrentTarget() then 
                ### Clears the current drone commands if any and forces the drone to guard the carrier          
                self:ForkThread(self.GuardCarrier) 
            end 
        end                
        CAirUnit.OnMotionHorzEventChange(self, new, old) 
    end, 
        
    GuardCarrier = function(self)
        if not self:IsDead() and not self.Parent:IsDead() then
            ### Tells the drone to guard the carrier
            IssueClearCommands(self)
            IssueGuard({self}, self.Parent)
        end
    end,
    
    OnDamage = function(self, instigator, amount, vector, damagetype) 
        CAirUnit.OnDamage(self, instigator, amount, vector, damagetype) 
        if self:IsDead() == false and instigator and IsUnit(instigator) then 
            if self.BurnerActive == false and self:GetFuelRatio() > 0 then                
                ### Set flags to true 
                self.BurnerActive = true 
                self.Evade = true 
                             
                ### Kick off Afterburner multi and effects 
                self:ForkThread(self.Afterburner)                            
            end    
        end 
    end, 

    Afterburner = function(self) 
        if not self:IsDead() then 
            if self.BeamExhaustEffectsBag then 
                ### Engine effects clean up 
                EffectUtil.CleanupEffectBag(self,'BeamExhaustEffectsBag') 
            end 
            
            ### Engage Afterburn speed and turn rates 
            if self.Launch == true then
                self:SetSpeedMult(2.0) 
                self:SetAccMult(10.0) 
                self:SetTurnMult(0.1)
                self.Launch = false
            else
                self:SetSpeedMult(1.5) 
                self:SetAccMult(2.0) 
                self:SetTurnMult(0.5)
            end 
            
            ### Afterburner sound effects
            self:PlayUnitSound('Launch')
            
            ### Afterburn effects and smoke 
            table.insert(self.BeamExhaustEffectsBag, CreateAttachedEmitter(self, 'contrail', self:GetArmy(), self.ExhaustSmoke):ScaleEmitter(0.25))
            table.insert(self.BeamExhaustEffectsBag, CreateBeamEmitterOnEntity(self, 'exhaust', self:GetArmy(), self.BeamAfterBurner):ScaleEmitter(0.1))
            
            ### Play Afterburner sound effects 
            self:PlayUnitSound('Afterburn') 
            
            ### Get current fuel levels
            local preBurnFuel = self:GetFuelRatio()
            
            ### Duration of Afterburn
            WaitSeconds(self.Duration)
            
            ### Get the fuel levels post Afterburner
            local postBurnFuel = self:GetFuelRatio()

            ### Fuel calculations and Afterburn effect clean up
            if not self:IsDead() then
      
                ### Calculate new fuel levels as per *** BIGOs New ASF MOD ***
                local newFuelLvl = preBurnFuel - (5 *(preBurnFuel - postBurnFuel))
                
                if newFuelLvl > 0 then
                    self:SetFuelRatio(newFuelLvl)
                end
            
                if self.BeamExhaustEffectsBag then 
                    ### Engine effects clean up 
                    EffectUtil.CleanupEffectBag(self,'BeamExhaustEffectsBag') 
                end 
                
                ### Resets the speed and turn rates 
                self:SetSpeedMult(1.0) 
                self:SetAccMult(1.0) 
                self:SetTurnMult(1.0) 
                
                ### Short cool down between Afterburns 
                WaitSeconds(self.Duration) 
                
                ### Resets Afterburn and Evade triggers      
                if not self:IsDead() then 
                    self.BurnerActive = false
                    self.Evade = false
                end 
            end 
        end 
    end, 
    
    OnKilled = function(self, instigator, type, overkillRatio)
        ### Disables weapons
        self:SetWeaponEnabledByLabel('MainGun', false)

        if self.BeamExhaustEffectsBag then 
            ### Engine effects clean up 
            EffectUtil.CleanupEffectBag(self,'BeamExhaustEffectsBag') 
        end 

        ### Clears the current drone commands if any
        IssueClearCommands(self)

        ### Clears the offending drone from the parents table 
        if not self.Parent:IsDead() then 
            table.removeByValue(self.Parent.DroneTable, self) 
            self.Parent = nil 
        end 
        
        ### Final command to finish off the fighters death event 
        CAirUnit.OnKilled(self, instigator, type, overkillRatio) 
    end, 

	AddKills = function(self, numKills)
        #Add the kills, then check veterancy junk.
        local unitKills = self:GetStat('KILLS', 0).Value + numKills
        self:SetStat('KILLS', unitKills)
    end,

} 
TypeClass = URA0106 