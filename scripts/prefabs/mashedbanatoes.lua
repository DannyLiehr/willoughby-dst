local Assets =
{
	Asset("ANIM", "anim/mashedbanatoes.zip"),
    Asset("ATLAS", "images/inventoryimages/mashedbanatoes.xml"),
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
	
	inst.AnimState:SetBank("mashedbanatoes")
	inst.AnimState:SetBuild("mashedbanatoes")
	inst.AnimState:PlayAnimation("idle", false)
	
	inst:AddTag("preparedfood")
    
	if TheSim:GetGameID()=="DST" then
		if not TheWorld.ismastersim then
			return inst
		end
		
		inst.entity:SetPristine()
	end

	inst:AddComponent("edible")
	inst.components.edible.healthvalue = TUNING.HEALING_SMALL
	inst.components.edible.hungervalue = TUNING.CALORIES_LARGE
	inst.components.edible.sanityvalue = TUNING.SANITY_SMALL
	
	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/mashedbanatoes.xml"

	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_FAST)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
		
	return inst
end

STRINGS.NAMES.MASHEDBANATOES = "Mashed Banatoes"

STRINGS.CHARACTERS.GENERIC.DESCRIBE.MASHEDBANATOES = "I'll pretend it's potatoes in there."
STRINGS.CHARACTERS.WENDY.DESCRIBE.MASHEDBANATOES = "This is a rather disturbing dish."

return Prefab( "common/inventory/mashedbanatoes", fn, Assets )