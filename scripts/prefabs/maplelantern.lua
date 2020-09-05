local assets =
{
    Asset("ANIM", "anim/maplelantern.zip"),
    Asset("MINIMAP_IMAGE", "maplelantern"),
}
local INTENSITY = .75
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

local function onhit(inst, worker)
    if not inst:HasTag("burnt") then
        inst.AnimState:PlayAnimation("hit")
        inst.AnimState:PushAnimation("idle")
    end
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
end

local function onbuilt(inst)
	inst.AnimState:PlayAnimation("built")
	inst.AnimState:PushAnimation("idle", true)
    inst.SoundEmitter:PlaySound("dontstarve/common/sign_craft")
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
	inst.entity:AddLight()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()
    inst.entity:AddDynamicShadow()

    MakeObstaclePhysics(inst, .2)
	
	inst.Light:SetFalloff(1)
    inst.Light:SetIntensity(INTENSITY)
    inst.Light:SetRadius(3)
    inst.Light:SetColour(math.random(128, 255)/255, math.random(128, 255)/255, 0)
    inst.Light:Enable(true)
    inst.Light:EnableClientModulation(true)
	
	inst.DynamicShadow:SetSize(1.3, .6)
	
    inst.MiniMapEntity:SetIcon("maplelantern.png")

    inst.AnimState:SetBank("maplelantern")
    inst.AnimState:SetBuild("maplelantern")
    inst.AnimState:PlayAnimation("idle", true)

    inst:AddTag("structure")


    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

	inst:AddComponent("propagator")
	
    inst:AddComponent("inspectable")
	
    inst:AddComponent("lootdropper")

    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
    inst.components.workable:SetOnFinishCallback(onhammered)
    inst.components.workable:SetOnWorkCallback(onhit)
	
	inst:AddComponent("hauntable")
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_SMALL)
    inst.components.hauntable.cooldown = TUNING.HAUNT_COOLDOWN_HUGE


    --MakeSmallBurnable(inst, nil, nil, true)
    --MakeSmallPropagator(inst)
    inst.OnSave = onsave
    inst.OnLoad = onload

	
    inst:ListenForEvent("onbuilt", onbuilt)

    return inst
end

return Prefab("maplelantern", fn, assets, prefabs),
    MakePlacer("maplelantern_placer", "maplelantern", "maplelantern", "idle")
