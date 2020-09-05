local Assets =
{
	Asset("ANIM", "anim/sap.zip"),
    Asset("ATLAS", "images/inventoryimages/sap.xml"),
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
	
	inst.AnimState:SetBank("sap")
	inst.AnimState:SetBuild("sap")
	inst.AnimState:PlayAnimation("idle", false)
	
	inst:AddTag("preparedfood")
	inst:AddTag("maple")
    
	if TheSim:GetGameID()=="DST" then
		if not TheWorld.ismastersim then
			return inst
		end
		
		inst.entity:SetPristine()
	end

	inst:AddComponent("edible")
	inst.components.edible.hungervalue = 4.7
	
	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/sap.xml"

	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
		
	return inst
end
return Prefab( "common/inventory/sap", fn, Assets )