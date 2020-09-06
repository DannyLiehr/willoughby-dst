local assets =
{
    Asset("ANIM", "anim/dream_catcher.zip"),
}
local INTENSITY = .5
local prefabs =
{
    "collapse_small",
}

local function onhammered(inst, worker)
    if inst.components.burnable ~= nil and inst.components.burnable:IsBurning() then
        inst.components.burnable:Extinguish()
    end
    inst.components.lootdropper:DropLoot()
    local fx = SpawnPrefab("collapse_small")
    fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
    fx:SetMaterial("wood")
    inst:Remove()
end

local function OnSpawnMonster(inst, fuel)
 inst.SoundEmitter:PlaySound("dontstarve/cave/nightmare_full")
end

local function onsave(inst, data)
    if inst:HasTag("burnt") or (inst.components.burnable ~= nil and inst.components.burnable:IsBurning()) then
        data.burnt = true
    end
end

local function onload(inst, data)
    if data ~= nil and data.burnt then
        inst.components.burnable.onburnt(inst)
    end
    inst.AnimState:PushAnimation("idle", true)
end

local function onbuilt(inst)
    inst.SoundEmitter:PlaySound("dontstarve/common/sign_craft")
end

local function updatestats(inst)
 
   if TheWorld.state.phase == "day" then
	inst.Light:SetIntensity(0)
	inst.SoundEmitter:KillSound("nightsound")
    inst.components.sanityaura.aura = 0
   elseif TheWorld.state.phase == "dusk" then
	inst.Light:SetIntensity(INTENSITY / 2)
	inst.SoundEmitter:KillSound("nightsound")
	inst.SoundEmitter:PlaySound("dontstarve/cave/nightmare_spawner_warning_LP", "dusksound")
    inst.components.sanityaura.aura = TUNING.SANITYAURA_SMALL
   elseif TheWorld.state.phase == "night" then
   inst.Light:SetIntensity(INTENSITY)
   inst.SoundEmitter:KillSound("dusksound")
   inst.SoundEmitter:PlaySound("dontstarve/cave/nightmare_spawner_open_LP", "nightsound")
    inst.components.sanityaura.aura = ( TUNING.SANITYAURA_SMALL * 3 )
	end
 
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()
    inst.entity:AddLight()
    inst.entity:AddDynamicShadow()

    MakeObstaclePhysics(inst, .1)
		
	inst.DynamicShadow:SetSize(1.3, .6)
	
	inst.Light:SetFalloff(1)
    --inst.Light:SetIntensity(INTENSITY)
    inst.Light:SetRadius(1)
    inst.Light:SetColour(math.random(128, 255)/255, math.random(128, 255)/255, math.random(128, 255)/255)
    inst.Light:Enable(true)
    inst.Light:EnableClientModulation(true)
	
    inst.AnimState:SetBank("dream_catcher")
    inst.AnimState:SetBuild("dream_catcher")
    inst.AnimState:PlayAnimation("idle")
	
    inst:AddTag("structure")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

	inst:AddComponent("sanityaura")
	
	inst:WatchWorldState( "startday", function(inst) updatestats(inst) end )
    inst:WatchWorldState( "startdusk", function(inst) updatestats(inst) end )
    inst:WatchWorldState( "startnight", function(inst) updatestats(inst) end ) 
	updatestats(inst)
	
    inst:AddComponent("inspectable")
    inst:AddComponent("lootdropper")
	
	inst:AddComponent("periodicspawner")
    inst.components.periodicspawner:SetOnSpawnFn(OnSpawnMonster)
    inst.components.periodicspawner.prefab = "crawlingnightmare"
    inst.components.periodicspawner.basetime = TUNING.TOTAL_DAY_TIME * 2
    inst.components.periodicspawner.randtime = TUNING.TOTAL_DAY_TIME * 2
    inst.components.periodicspawner:Start()

    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
    inst.components.workable:SetOnFinishCallback(onhammered)



    MakeSmallBurnable(inst, nil, nil, true)
    MakeSmallPropagator(inst)
    inst.OnSave = onsave
    inst.OnLoad = onload

    MakeHauntableWork(inst)
    inst:ListenForEvent("onbuilt", onbuilt)

    return inst
end


return Prefab("dream_catcher", fn, assets, prefabs),
    MakePlacer("dream_catcher_placer", "dream_catcher", "dream_catcher", "anim")