local assets =
{
    Asset("ANIM", "anim/banato.zip"),
    Asset( "IMAGE", "images/inventoryimages/banato.tex" ),
    Asset( "ATLAS", "images/inventoryimages/banato.xml" ),
	
}

local function MakeVegStats(seedweight, hunger, health, perish_time, sanity, cooked_hunger, cooked_health, cooked_perish_time, cooked_sanity)
	return {
		health = health,
		hunger = hunger,
		cooked_health = cooked_health,
		cooked_hunger = cooked_hunger,
		seed_weight = seedweight,
		perishtime = perish_time,
		cooked_perishtime = cooked_perish_time,
		sanity = sanity,
		cooked_sanity = cooked_sanity
		
	}
end

local banato = MakeVegStats(3, TUNING.CALORIES_SMALL, TUNING.HEALING_TINY, TUNING.PERISH_MED, 0,       
                                    TUNING.CALORIES_MEDSMALL,  TUNING.HEALING_SMALL,   TUNING.PERISH_FAST, 0)

VEGGIES['banato'] = banato

local function fn(Sim)
    --banato you eat is defined in veggies.lua
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    MakeInventoryPhysics(inst)

    inst.AnimState:SetBuild("banato")
    inst.AnimState:SetBank("banato")
	--inst.AnimState:PlayAnimation("OnGround", true)
	inst.AnimState:PlayAnimation("idle", true)
	inst.AnimState:OverrideSymbol("swap_grown", "banato", "banato01")
	inst.entity:AddNetwork()

	inst.entity:SetPristine()
	
    if not TheWorld.ismastersim then
        return inst
    end

	inst:AddComponent("edible")
	inst.components.edible.healthvalue = TUNING.HEALING_TINY
	inst.components.edible.hungervalue = TUNING.CALORIES_SMALL
	inst.components.edible.sanityvalue = 0
	inst.components.edible.foodtype = "VEGGIE"
	
	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_MED)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:AddComponent("stackable")
	
	inst:AddComponent("inspectable")
	
	inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "banato"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/banato.xml"
	
	MakeSmallBurnable(inst)
	
	MakeSmallPropagator(inst)
	
	inst:AddComponent("bait")
	
	inst:AddComponent("tradable")
	
	inst:AddComponent("cookable")
    inst.components.cookable.product = "bakedbanato"
		
    
local function OnSpawnedFromHaunt(inst, data)
    Launch(inst, data.haunter, TUNING.LAUNCH_SPEED_SMALL)
end
	MakeHauntableLaunchAndPerish(inst)

    return inst
end

local prefabs =
{
	"poutine",
	"banato_seeds",
	"bakedbanato", 
	"banatobbread",
	"spoiled_food",
	
}
	
AddIngredientValues({"banato"}, {veggie=1}, true)

return Prefab( "common/inventory/banato", fn, assets, prefabs)