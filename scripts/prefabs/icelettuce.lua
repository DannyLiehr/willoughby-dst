local assets =
{
    Asset("ANIM", "anim/icelettuce.zip"),
    Asset( "IMAGE", "images/inventoryimages/icelettuce.tex" ),
    Asset( "ATLAS", "images/inventoryimages/icelettuce.xml" ),
	
}


local function fn()
    --icelettuce you eat is defined in veggies.lua
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    MakeInventoryPhysics(inst)

    inst.AnimState:SetBuild("icelettuce")
    inst.AnimState:SetBank("icelettuce")
    inst.AnimState:PlayAnimation("idle")
	inst.entity:AddNetwork()

	inst.entity:SetPristine()
	
    if not TheWorld.ismastersim then
        return inst
    end

	inst:AddTag("frozen")
	
	inst:AddComponent("edible")
	inst.components.edible.healthvalue = 0
	inst.components.edible.hungervalue = TUNING.CALORIES_TINY*.5
	inst.components.edible.sanityvalue = 0
	inst.components.edible.foodtype = "VEGGIE"
	
	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_TWO_DAY)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:AddComponent("stackable")
	
	inst:AddComponent("inspectable")
	
	inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "icelettuce"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/icelettuce.xml"
	
	MakeSmallBurnable(inst)
	
	MakeSmallPropagator(inst)
	
	inst:AddComponent("bait")
	
	inst:AddComponent("tradable")
		
    
local function OnSpawnedFromHaunt(inst, data)
    Launch(inst, data.haunter, TUNING.LAUNCH_SPEED_SMALL)
end
	MakeHauntableLaunchAndPerish(inst)

    return inst
end

STRINGS.NAMES.ICELETTUCE = "Iceberg Lettuce"

STRINGS.CHARACTERS.GENERIC.DESCRIBE.ICELETTUCE = {
	"I don't know how to feel about this.",
	"Oh, haha... I get it.",
	"Eat your hard greens, kids!",	
}

local prefabs =
{
	"spoiled_food",	
}
	
AddIngredientValues({"icelettuce"}, {veggie=1}, true)

return Prefab( "common/inventory/icelettuce", fn, assets, prefabs)