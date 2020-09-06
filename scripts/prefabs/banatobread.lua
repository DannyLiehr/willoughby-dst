local Assets =
{
	Asset("ANIM", "anim/banatobread.zip"),
    Asset("ATLAS", "images/inventoryimages/banatobread.xml"),
}

local prefabs = 
{
	"spoiled_food",
}

local function fn(Sim)
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	if TheSim:GetGameID() =="DST" then inst.entity:AddNetwork() end

	MakeInventoryPhysics(inst)
	MakeSmallBurnable(inst)
	MakeSmallPropagator(inst)
	
	inst.AnimState:SetBank("banatobread")
	inst.AnimState:SetBuild("banatobread")
	inst.AnimState:PlayAnimation("idle", false)
	
	inst:AddTag("preparedfood")
    
	if TheSim:GetGameID()=="DST" then
		if not TheWorld.ismastersim then
			return inst
		end
		
		inst.entity:SetPristine()
	end

	inst:AddComponent("edible")
	inst.components.edible.foodtype = "GENERIC"
	inst.components.edible.healthvalue = TUNING.HEALING_SMALL
	inst.components.edible.hungervalue = TUNING.CALORIES_HUGE
	inst.components.edible.sanityvalue = TUNING.SANITY_SMALL

	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/banatobread.xml"

	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
		
	return inst
end

STRINGS.NAMES.BANATOBREAD = "Banato Bread"

STRINGS.CHARACTERS.GENERIC.DESCRIBE.BANATOBREAD = {
	"A hearty, heart stopping meal!",
	"It's very warm.",
	
}


return Prefab( "common/inventory/banatobread", fn, Assets )