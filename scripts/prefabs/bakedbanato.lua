local assets=
{
    Asset("ANIM", "anim/bakedbanato.zip"),								
    Asset( "IMAGE", "images/inventoryimages/bakedbanato.tex"),	
    Asset( "ATLAS", "images/inventoryimages/bakedbanato.xml"),
	
}

local prefabs = 
{
	"flies",
}

local function OnBurn(inst)
	DefaultBurnFn(inst)
	if inst.flies then
		inst.flies:Remove()
		inst.flies = nil
	end
end

local function OnDropped(inst)
	if inst.flies == nil then
		inst.flies = inst:SpawnChild("flies")
	end
end

local function OnPickup(inst)
	if inst.flies ~= nil then
		inst.flies:Remove()
		inst.flies = nil
	end
end


local function fn_cooked(Sim)
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	MakeInventoryPhysics(inst)
	
	inst.AnimState:SetBank("bakedbanato")
	inst.AnimState:SetBuild("bakedbanato")
	inst.AnimState:PlayAnimation("idle")
	inst.entity:AddNetwork()	
	
	inst.entity:SetPristine()
	
	if not TheWorld.ismastersim then
        return inst
    end
	
	inst:AddComponent("edible")
	inst.components.edible.healthvalue = TUNING.HEALING_SMALL
	inst.components.edible.hungervalue = TUNING.CALORIES_MEDSMALL
	inst.components.edible.sanityvalue = 0
	inst.components.edible.foodtype = "VEGGIE"
	
	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_FAST)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM
	
	inst:AddComponent("inspectable")
	
	inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "bakedbanato"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/bakedbanato.xml"

	MakeSmallBurnable(inst)
	
	MakeSmallPropagator(inst)
	
	inst:AddComponent("bait")
	
	inst:AddComponent("tradable")
	
	inst.flies = inst:SpawnChild("flies")

	return inst
end

STRINGS.NAMES.BAKEDBANATO = "Baked Banato"

return Prefab( "common/inventory/bakedbanato", fn_cooked, assets)