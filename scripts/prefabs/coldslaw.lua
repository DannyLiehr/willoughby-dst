local Assets =
{
	Asset("ANIM", "anim/coldslaw.zip"),
    Asset("ATLAS", "images/inventoryimages/coldslaw.xml"),
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
	
	inst.AnimState:SetBank("coldslaw")
	inst.AnimState:SetBuild("coldslaw")
	inst.AnimState:PlayAnimation("idle", false)
	
	inst:AddTag("preparedfood")
    
	if TheSim:GetGameID()=="DST" then
		if not TheWorld.ismastersim then
			return inst
		end
		
		inst.entity:SetPristine()
	end

	inst:AddComponent("edible")
	inst.components.edible.healthvalue = TUNING.HEALING_TINY
	inst.components.edible.hungervalue = TUNING.CALORIES_LARGE
	inst.components.edible.sanityvalue = TUNING.SANITY_TINY
	inst.components.edible.temperaturedelta = TUNING.COLD_FOOD_BONUS_TEMP
	inst.components.edible.temperatureduration = TUNING.FOOD_TEMP_AVERAGE
	
	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/coldslaw.xml"

	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
		
	return inst
end

STRINGS.NAMES.COLDSLAW = "Coldslaw"

STRINGS.CHARACTERS.GENERIC.DESCRIBE.COLDSLAW = {
	"Oh, gross!",
	"Did I thaw it out enough?",
	
}
STRINGS.CHARACTERS.WENDY.DESCRIBE.COLDSLAW = {
	"As cold as my heart.",
	"How sour and bitter.",
	
}

return Prefab( "common/inventory/coldslaw", fn, Assets )