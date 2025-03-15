local oldModBP = ModBlueprints 
function ModBlueprints(all_bps) 
   oldModBP(all_bps) 

		for id,bp in pairs(all_bps.Prop) do
        	if bp.ScriptClass == 'Tree' then
            	bp.Display.UniformScale = bp.Display.UniformScale * 2.0
        	    bp.SizeX = bp.SizeX * 2 
        	    bp.SizeY = bp.SizeY * 2
        	    bp.SizeZ = bp.SizeZ * 2     	    
        	end
        	 if bp.ScriptClass == 'TreeGroup' then
        	    bp.Display.UniformScale = bp.Display.UniformScale * 1.5
        	    bp.SizeX = bp.SizeX * 1.3 
        	    bp.SizeY = bp.SizeY * 1.3
        	    bp.SizeZ = bp.SizeZ * 1.3
        	end
        end
   
	    for id,bp in all_bps.Unit do      	

      
  			if bp.Wreckage then
        		bp.Wreckage.MassMult = 0.3
        		bp.Wreckage.ReclaimTimeMultiplier = 8
        	end
			
			if bp.Buffs.Regen then 
 	           for i,v in pairs(bp.Categories) do 
 	           		if v == 'AIR' then 
						bp.Buffs.Regen.Level1 = 0.5
						bp.Buffs.Regen.Level2 =	1
						bp.Buffs.Regen.Level3 = 1.5
						bp.Buffs.Regen.Level4 = 2
						bp.Buffs.Regen.Level5 = 2.5
					end
 	           	end	
			end			
        	if bp.Veteran then
        		bp.Veteran.Level1 = math.ceil ( math.pow ( ( bp.Economy.BuildCostMass + ( bp.Economy.BuildCostEnergy / 100 ) ) / 50, 0.6 ) )
				bp.Veteran.Level2 = math.ceil ( math.pow ( ( bp.Economy.BuildCostMass + ( bp.Economy.BuildCostEnergy / 100 ) ) / 50, 0.6 ) ) * 2
				bp.Veteran.Level3 = math.ceil ( math.pow ( ( bp.Economy.BuildCostMass + ( bp.Economy.BuildCostEnergy / 100 ) ) / 50, 0.6 ) ) * 3
				bp.Veteran.Level4 = math.ceil ( math.pow ( ( bp.Economy.BuildCostMass + ( bp.Economy.BuildCostEnergy / 100 ) ) / 50, 0.6 ) ) * 4
				bp.Veteran.Level5 = math.ceil ( math.pow ( ( bp.Economy.BuildCostMass + ( bp.Economy.BuildCostEnergy / 100 ) ) / 50, 0.6 ) ) * 5
        	end
			local civilian = 0
			if bp.Display.Tarmacs then 
 	           for i,v in pairs(bp.Categories) do 
 	           		if v == 'CIVILIAN' then 
 	           			civilian = 1
 	           		end
 	           	end
 	           	
 	           		for i,v in pairs(bp.Categories) do 
 	               		if v == 'UEF' and civilian == 0 then 
	                  			bp.Display.Tarmacs[1].Length = bp.Display.Tarmacs[1].Length * 2
	                    		bp.Display.Tarmacs[1].Width = bp.Display.Tarmacs[1].Width * 2
 	                   			bp.Display.Tarmacs[1].FadeOut = 900
	                		end 
	                	if v == 'CYBRAN' and civilian == 0 then
 	               			if bp.Display.Tarmacs[1].Albedo == 'Tarmacs/Tar12x_cybran_01_albedo'
                				then bp.Display.Tarmacs[1].Albedo = '/mods/4th_Dimension_212/hook/env/Common/decals/Tarmacs/Tar12x_01_albedo_cybran.dds'
                					bp.Display.Tarmacs[1].Normal = 'Tarmacs/Tar12x_01_normals'
                				end
                			if bp.Display.Tarmacs[1].Albedo == 'Tarmacs/Tar6x_cybran_01_albedo'
                				then bp.Display.Tarmacs[1].Albedo = '/mods/4th_Dimension_212/hook/env/Common/decals/Tarmacs/Tar6x_01_albedo_cybran.dds'
                					bp.Display.Tarmacs[1].Normal = 'Tarmacs/Tar6x_01_normals'
                			end
                			if bp.Display.Tarmacs[1].Albedo == 'Tarmacs/Tar8x_cybran_01_albedo'
                				then bp.Display.Tarmacs[1].Albedo = '/mods/4th_Dimension_212/hook/env/Common/decals/Tarmacs/Tar8x_01_albedo_cybran.dds'
                					bp.Display.Tarmacs[1].Normal = 'Tarmacs/Tar8x_01_normals'
                			end
                			if bp.Display.Tarmacs[1].Albedo == 'Tarmacs/Tar10x_cybran_01_albedo'
                				then bp.Display.Tarmacs[1].Albedo = '/mods/4th_Dimension_212/hook/env/Common/decals/Tarmacs/Tar10x_01_albedo_cybran.dds'
                					bp.Display.Tarmacs[1].Normal = 'Tarmacs/Tar10x_01_normals'
                			end
                    		bp.Display.Tarmacs[1].Length = bp.Display.Tarmacs[1].Length * 2.0
                    		bp.Display.Tarmacs[1].Width = bp.Display.Tarmacs[1].Width * 2.0
                    		bp.Display.Tarmacs[1].FadeOut = 900    
                		end
                		if v == 'AEON' and civilian == 0 then
                			if bp.Display.Tarmacs[1].Albedo == 'Tarmacs/Tar12x_aeon_01_albedo'
                				then bp.Display.Tarmacs[1].Albedo = '/mods/4th_Dimension_212/hook/env/Common/decals/Tarmacs/Tar12x_01_albedo_aeon.dds'
                					bp.Display.Tarmacs[1].Normal = ''
                			end
                			if bp.Display.Tarmacs[1].Albedo == 'Tarmacs/Tar6x_aeon_01_albedo'
                				then bp.Display.Tarmacs[1].Albedo = '/mods/4th_Dimension_212/hook/env/Common/decals/Tarmacs/Tar6x_01_albedo_aeon.dds'
                					bp.Display.Tarmacs[1].Normal = ''
                			end
                			if bp.Display.Tarmacs[1].Albedo == 'Tarmacs/Tar8x_aeon_01_albedo'
                				then bp.Display.Tarmacs[1].Albedo = '/mods/4th_Dimension_212/hook/env/Common/decals/Tarmacs/Tar8x_01_albedo_aeon.dds'
                					bp.Display.Tarmacs[1].Normal = ''
                			end
                			if bp.Display.Tarmacs[1].Albedo == 'Tarmacs/Tar10x_aeon_01_albedo'
                				then bp.Display.Tarmacs[1].Albedo = '/mods/4th_Dimension_212/hook/env/Common/decals/Tarmacs/Tar10x_01_albedo_aeon.dds'
                					bp.Display.Tarmacs[1].Normal = ''
                			end
                    		bp.Display.Tarmacs[1].Length = bp.Display.Tarmacs[1].Length * 1.6
                    		bp.Display.Tarmacs[1].Width = bp.Display.Tarmacs[1].Width * 1.6
                    		bp.Display.Tarmacs[1].FadeOut = 900    
                		end 
                	end
            	end 

        if bp.Defense then 
            for i,v in pairs(bp.Categories) do 
                if v == 'CYBRAN' then 
                	for i,v in pairs(bp.Categories) do
                		if v == 'TECH1' then 
                			for i,v in pairs(bp.Categories) do
                				if v == 'AIR' then 
                					if bp.Defense.RegenRate == 0 then
                						bp.Defense.RegenRate = 0.25
                					end
                				end
                			end
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 1
							end
						end	
						if v == 'TECH2' then 
						    for i,v in pairs(bp.Categories) do
                				if v == 'AIR' then 
                					if bp.Defense.RegenRate == 0 then
                						bp.Defense.RegenRate = 0.5
                					end
                				end
                			end
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 2
							end
						end
                		if v == 'TECH3' then 
                			for i,v in pairs(bp.Categories) do
                				if v == 'AIR' then 
                					if bp.Defense.RegenRate == 0 then
                						bp.Defense.RegenRate = 1
                					end
                				end
                			end		
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 4
							end
						end	
                		if v == 'EXPERIMENTAL' then 
							for i,v in pairs(bp.Categories) do
                				if v == 'AIR' then 
                					if bp.Defense.RegenRate == 0 then
                						bp.Defense.RegenRate = 5
                					end
                				end
                			end		
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 10
							end
						end												
					end	
                end 
				if v == 'AEON' or v == 'SERAPHIM' then 
                	for i,v in pairs(bp.Categories) do
                		if v == 'TECH1' then
                		    for i,v in pairs(bp.Categories) do
                				if v == 'AIR' then 
                					if bp.Defense.RegenRate == 0 then
                						bp.Defense.RegenRate = 0.0625
                					end
                				end
                			end
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 0.25
							end
						end	
						if v == 'TECH2' then 
                			for i,v in pairs(bp.Categories) do
                				if v == 'AIR' then 
                					if bp.Defense.RegenRate == 0 then
                						bp.Defense.RegenRate = 0.125
                					end
                				end
                			end						
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 0.5
							end
						end
                		if v == 'TECH3' then 
                			for i,v in pairs(bp.Categories) do
                				if v == 'AIR' then 
                					if bp.Defense.RegenRate == 0 then
                						bp.Defense.RegenRate = 0.25
                					end
                				end
                			end                		
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 1
							end
						end	
                		if v == 'EXPERIMENTAL' then 
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 2
							end
						end														
					end	
                end
                if v == 'UEF' then 
                	for i,v in pairs(bp.Categories) do
                		if v == 'TECH1' then 
                		    for i,v in pairs(bp.Categories) do
                				if v == 'AIR' then 
                					if bp.Defense.RegenRate == 0 then
                						bp.Defense.RegenRate = 0.0625
                					end
                				end
                			end                		
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 0.25
							end
						end	
						if v == 'TECH2' then
                		    for i,v in pairs(bp.Categories) do
                				if v == 'AIR' then 
                					if bp.Defense.RegenRate == 0 then
                						bp.Defense.RegenRate = 0.125
                					end
                				end
                			end						 
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 0.5
							end
						end
                		if v == 'TECH3' then 
                		    for i,v in pairs(bp.Categories) do
                				if v == 'AIR' then 
                					if bp.Defense.RegenRate == 0 then
                						bp.Defense.RegenRate = 0.25
                					end
                				end
                			end                		
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 1
							end
						end	
                		if v == 'EXPERIMENTAL' then 
							if bp.Defense.RegenRate == 0 then
								bp.Defense.RegenRate = 2.5
							end
						end														
					end	
                end                 
            end 
        end 
	end
	#OptimusMod(all_bps.Unit)
end

	function OptimusMod(unitBPs)
    	local bp = unitBPs['xel0209']
    	local newCategories = {}
    	#local filterOutCategory= 'BUILTBYTIER2ENGINEER DEFENSE UEF'
    	for k,v in bp.Economy.BuildableCategory do
        	#if  not string.find(v, filterOutCategory) then
            	table.insert(newCategories, v)
        	#end
    	end
    	bp.Economy.BuildableCategory = newCategories
	end	