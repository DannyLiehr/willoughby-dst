require "prefabutil"
require "tuning"

local Assets =
{
	Asset("ANIM", "anim/missing_post.zip"),
}
local function onhammered(inst, worker)
	inst.components.lootdropper:DropLoot()
	SpawnPrefab("collapse_small").Transform:SetPosition(inst.Transform:GetWorldPosition())
	inst:Remove()
	inst.SoundEmitter:PlaySound("dontstarve/common/destroy_wood")
end
local function onhit(inst, worker)
end

local prefabs = 
{
}

local names = "wilson"
local WILL_NAME = "will"
local WILL_CHANCE = 0.5

local function GetStatus(inst)
    return inst.animname == WILL_NAME and "will" or nil
end

local function fn(Sim)
	local inst = CreateEntity()
	inst.entity:AddSoundEmitter()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	if TheSim:GetGameID() =="DST" then inst.entity:AddNetwork() end

	MakeInventoryPhysics(inst)
    MakeSmallBurnable(inst, TUNING.MED_BURNTIME)
    MakeSmallPropagator(inst)
	
	inst.AnimState:SetBank("missing_post")
	inst.AnimState:SetBuild("missing_post")
    if math.random() < WILL_CHANCE then
        inst.animname = WILL_NAME
    else
        inst.animname = "wilson"
    end
    inst.AnimState:PlayAnimation(inst.animname)
	inst.AnimState:SetRayTestOnBB(true)
	
    MakeObstaclePhysics(inst, .05)
    
	if TheSim:GetGameID()=="DST" then
		if not TheWorld.ismastersim then
			return inst
		end
		
		inst.entity:SetPristine()
	end
	
	inst:AddComponent("inspectable")
    inst.components.inspectable.getstatus = GetStatus
	
	inst:AddComponent("lootdropper")
	inst:AddComponent("workable")
	inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
	inst.components.workable:SetWorkLeft(2)
	inst.components.workable:SetOnFinishCallback(onhammered)
	inst.components.workable:SetOnWorkCallback(onhit)
		
	return inst
end

STRINGS.NAMES.MISSING_POST = "Missing Poster"

STRINGS.CHARACTERS.GENERIC.DESCRIBE.MISSING_POST = "Haven't seen him."
STRINGS.CHARACTERS.WENDY.DESCRIBE.MISSING_POST = "If I didn't know better, I'd say that's the scientist."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.MISSING_POST = "He's here! So can we burn these now?"


return Prefab( "common/inventory/missing_post", fn, Assets )