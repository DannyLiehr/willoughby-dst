--[[
birds.lua

Different birds are just reskins of crow without any special powers at the moment.
To make a new bird add it at the bottom of the file as a 'makebird(name)' call

This assumes the bird already has a build, inventory icon, sounds and a feather_name prefab exists

]]--

-- local brain = require "brains/birdbrain"
local brain = require "brains/loonbrain"

local function ShouldSleep(inst)
    return DefaultSleepTest(inst) and not inst.sg:HasStateTag("flying")
end



local function OnAttacked(inst, data)
    local x,y,z = inst.Transform:GetWorldPosition()
    local ents = TheSim:FindEntities(x,y,z, 30, {'bird'})

    local num_friends = 0
    local maxnum = 5
    for k,v in pairs(ents) do
        if v ~= inst then
            v:PushEvent("gohome")
            num_friends = num_friends + 1
        end

        if num_friends > maxnum then

			return
        end

    end
end

local function OnTrapped(inst, data)

    if data and data.trapper and data.trapper.settrapsymbols then
        data.trapper.settrapsymbols(inst.trappedbuild)
    end
end

local function OnDropped(inst)
    inst.sg:GoToState("stunned")
end

local function SeedSpawnTest()
    return not TheWorld.state.iswinter
end

local function makebird(name, soundname)
    local assets=
    {
	    Asset("ANIM", "anim/crow.zip"),
	    Asset("ANIM", "anim/"..name.."_build.zip"),
	    Asset("SOUND", "sound/birds.fsb"),
    }

    local prefabs =
    {
        "seeds",
        "smallmeat",
        "cookedsmallmeat",
        "feather_"..name,
		"fish",
    }

    local function fn()
        local inst = CreateEntity()

        --Core components
        inst.entity:AddTransform()



        inst.entity:AddPhysics()

        inst.entity:AddAnimState()
        inst.entity:AddDynamicShadow()


        inst.entity:AddSoundEmitter()
        inst.entity:AddNetwork()

        --Initialize physics
        inst.Physics:SetCollisionGroup(COLLISION.CHARACTERS)
        inst.Physics:ClearCollisionMask()
        inst.Physics:CollidesWith(COLLISION.WORLD)
        inst.Physics:SetSphere(1)
        inst.Physics:SetMass(1)


        inst:AddTag("bird")
        inst:AddTag(name)
        inst:AddTag("smallcreature")

		inst.color = .5 + math.random() * .5
        inst.AnimState:SetMultColour(inst.color, inst.color, inst.color, 1)

        inst.Transform:SetTwoFaced()
        inst.AnimState:SetBank("crow")
        inst.AnimState:SetBuild(name.."_build")
        inst.AnimState:PlayAnimation("idle")
		inst.DynamicShadow:SetSize(1, .75)
        inst.DynamicShadow:Enable(false)
        MakeFeedablePetPristine(inst)

        if not TheWorld.ismastersim then
            return inst
        end

        inst.entity:SetPristine()

        inst.sounds =
        {
            takeoff = "fmbirds/birds/takeoff_"..soundname,
            chirp = "fmbirds/birds/chirp_"..soundname,
            flyin = "dontstarve/birds/flyin",
        }
        inst.trappedbuild = name.."_build"

        inst:AddComponent("locomotor")
        inst.components.locomotor:EnableGroundSpeedMultiplier(false)
	    inst.components.locomotor:SetTriggersCreep(false)
        inst:SetStateGraph("SGbird")

        inst:AddComponent("lootdropper")
        inst.components.lootdropper:AddRandomLoot("feather_"..name, 1)
        inst.components.lootdropper:AddRandomLoot("smallmeat", 1)
        inst.components.lootdropper.numrandomloot = 1

        inst:AddComponent("occupier")

        inst:AddComponent("eater")
		inst.components.eater:SetDiet( { FOODGROUP.OMNI }, {FOODGROUP.OMNI } )

        inst:AddComponent("sleeper")
        inst.components.sleeper:SetSleepTest(ShouldSleep)

        inst:AddComponent("inventoryitem")
        inst.components.inventoryitem.nobounce = true
        inst.components.inventoryitem.canbepickedup = false

        inst.components.inventoryitem.imagename = name
        inst.components.inventoryitem.atlasname = "images/inventoryimages/"..name..".xml"

        inst:AddComponent("cookable")
        inst.components.cookable.product = "cookedsmallmeat"


        inst:AddComponent("combat")
        inst.components.combat.hiteffectsymbol = "crow_body"
        --inst.components.combat.canbeattackedfn = canbeattacked
        inst:AddComponent("health")
        inst.components.health:SetMaxHealth(TUNING.BIRD_HEALTH)
        inst.components.health.murdersound = "dontstarve/wilson/hit_animal"

        inst:AddComponent("inspectable")


        inst:SetBrain(brain)

        MakeSmallBurnableCharacter(inst, "crow_body")
        MakeTinyFreezableCharacter(inst, "crow_body")

		inst:AddComponent("hauntable")
        inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)
        inst:AddComponent("periodicspawner")
        inst.components.periodicspawner:SetPrefab("fish")
        inst.components.periodicspawner:SetDensityInRange(100, 50)
        inst.components.periodicspawner:SetMinimumSpacing(8)
		inst.components.periodicspawner:SetSpawnTestFn( SeedSpawnTest )



        inst:ListenForEvent("ontrapped", OnTrapped)


        inst:ListenForEvent("attacked", OnAttacked)

local birdspawner = TheWorld.components.birdspawner
        if birdspawner ~= nil then
            inst:ListenForEvent("onremove", birdspawner.StopTrackingFn)
            inst:ListenForEvent("enterlimbo", birdspawner.StopTrackingFn)
            -- inst:ListenForEvent("exitlimbo", birdspawner.StartTrackingFn)
            birdspawner:StartTracking(inst)
        end

        MakeFeedablePet(inst, TUNING.BIRD_PERISH_TIME, nil, OnDropped)
        return inst
    end

    return Prefab("forest/animals/"..name, fn, assets, prefabs)
end

return makebird("loon", "loon")
