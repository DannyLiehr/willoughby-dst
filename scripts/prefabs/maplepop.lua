local Assets =
{
	Asset("ANIM", "anim/maplepop.zip"),
    Asset("ATLAS", "images/inventoryimages/maplepop.xml"),
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
	
	inst.AnimState:SetBank("maplepop")
	inst.AnimState:SetBuild("maplepop")
	inst.AnimState:PlayAnimation("maplepop", false)
	
	inst:AddTag("preparedfood")
	inst:AddTag("maple")
    
	if TheSim:GetGameID()=="DST" then
		if not TheWorld.ismastersim then
			return inst
		end
		
		inst.entity:SetPristine()
	end

	inst:AddComponent("edible")
	inst.components.edible.healthvalue = 0
	inst.components.edible.hungervalue = TUNING.CALORIES_SMALL
	inst.components.edible.sanityvalue = 20
	
	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/maplepop.xml"

	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
		
	return inst
end
return Prefab( "common/inventory/maplepop", fn, Assets )