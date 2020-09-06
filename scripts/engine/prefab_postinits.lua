	AddPrefabPostInit("forest", function(inst)
          if GLOBAL.TheWorld.ismastersim then
            inst:AddComponent("fmbirdspawner")
          end
        end)
	AddPrefabPostInit("wilson", function(inst)
		inst:AddTag("gentlemanscientist")

	inst:AddComponent("sanityaura")
	inst.components.sanityaura.aurafn = function(inst, observer)
	if observer.prefab == "will" then
		return TUNING.SANITYAURA_SMALL
			else
		return 0
	end
		return 0
	end
        end)

	AddPrefabPostInit("woodie", function(inst)

	inst:AddComponent("sanityaura")
	inst.components.sanityaura.aurafn = function(inst, observer)
	if observer.prefab == "will" then
		return TUNING.SANITYAURA_SMALL
			else
		return 0
	end
		return 0
	end
        end)

	AddPrefabPostInit("rabbit", function(inst)

	inst:AddComponent("sanityaura")
	inst.components.sanityaura.aurafn = function(inst, observer)
	if observer.prefab == "will" then
		return TUNING.SANITYAURA_SMALL
			else
		return 0
	end
		return 0
	end
        end)
