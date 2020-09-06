require "prefabutil"
require "tuning"

local assets =
{
	Asset("ANIM", "anim/bumpkinfarm.zip"),
	
    Asset("ATLAS", "images/inventoryimages/bumpkinfarm.xml"),
    Asset("IMAGE", "images/inventoryimages/bumpkinfarm.tex"),
}
local function WatchSeason( inst, season )
    if season == "summer" then
	inst.AnimState:PlayAnimation( "idle_summer",true )
	 elseif season == "autumn" then
	 inst.AnimState:PlayAnimation( "idle_summer",true )
	 elseif season == "winter" then
	 inst.AnimState:PlayAnimation( "idle_winter",true )
	 elseif season == "spring" then
	 inst.AnimState:PlayAnimation( "idle_winter",true )
	 end
	 end
local function onhammered(inst, worker)
	inst.components.grower:Reset()
	inst.components.lootdropper:DropLoot()
	SpawnPrefab("collapse_small").Transform:SetPosition(inst.Transform:GetWorldPosition())
	inst:Remove()
	inst.SoundEmitter:PlaySound("dontstarve/common/destroy_wood")
end

local function onhit(inst, worker)
end

local function fn(Sim)
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()

	inst.AnimState:SetBank("bumpkinfarm")
	inst.AnimState:SetBuild("bumpkinfarm")
	inst.AnimState:PlayAnimation( "idle_summer",true )

	inst:AddTag("bumpkinfarm")

	local minimap = inst.entity:AddMiniMapEntity()
	minimap:SetIcon( "bumpkinfarm.tex" )

    if not TheWorld.ismastersim then
    return inst
end

    inst.entity:SetPristine()

	inst:AddComponent("inspectable")
	inst.components.inspectable.getstatus = function(inst)
  
	if not inst.components.grower:IsFertile() then
	return "NEEDSFERTILIZER"
	elseif not inst.components.grower:IsEmpty() then
	return "GROWING"
	end
end

	inst:AddComponent("grower")
	inst.components.grower.onplantfn = function() inst.SoundEmitter:PlaySound("dontstarve/wilson/plant_seeds") end
	inst.components.grower.croppoints = { Vector3(0,0,0) }
	inst.components.grower.growrate = .2
	inst.components.grower.max_cycles_left = 30 or 6
	inst.components.grower.cycles_left = inst.components.grower.max_cycles_left
			
	inst:AddComponent("lootdropper")
	inst:AddComponent("workable")
	inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
	inst.components.workable:SetWorkLeft(4)
	inst.components.workable:SetOnFinishCallback(onhammered)
	inst.components.workable:SetOnWorkCallback(onhit)
	
		inst:WatchWorldState("season", WatchSeason )
    WatchSeason( inst, TheWorld.state.season )
	
	return inst
end    
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BUMPKINFARM = {
	"Finally, a steady food source.",
	"Too bad it won't fertilize in the winter.", 
	"Won't the tarp block the sun from it?", 
	
}
return Prefab( "common/objects/bumpkinfarm",  fn, assets),
	MakePlacer( "common/bumpkinfarm_placer", "bumpkinfarm", "bumpkinfarm", "idle_winter" ) 