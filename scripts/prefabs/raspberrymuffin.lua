local Assets =
{
	Asset("ANIM", "anim/raspberrymuffin.zip"),
    Asset("ATLAS", "images/inventoryimages/raspberrymuffin.xml"),
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
	
	inst.AnimState:SetBank("raspberrymuffin")
	inst.AnimState:SetBuild("raspberrymuffin")
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
	inst.components.edible.sanityvalue = 5

	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/raspberrymuffin.xml"

	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
		
	return inst
end

STRINGS.NAMES.RASPBERRYMUFFIN = "Raspberry Cupcake"

STRINGS.CHARACTERS.GENERIC.DESCRIBE.RASPBERRYMUFFIN = {
	"Very sweet!",	
}

return Prefab( "common/inventory/raspberrymuffin", fn, Assets )