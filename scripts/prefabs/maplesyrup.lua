local Assets =
{
	Asset("ANIM", "anim/maplesyrup.zip"),
    Asset("ATLAS", "images/inventoryimages/maplesyrup.xml"),
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
	
	inst.AnimState:SetBank("maplesyrup")
	inst.AnimState:SetBuild("maplesyrup")
	inst.AnimState:PlayAnimation("maplesyrup",true)
    
	if TheSim:GetGameID()=="DST" then
		if not TheWorld.ismastersim then
			return inst
		end
		
		inst.entity:SetPristine()
	end

	inst:AddTag("preparedfood")
	inst:AddTag("maple")
	
	inst:AddComponent("edible")
	inst.components.edible.healthvalue = TUNING.HEALING_TINY
	inst.components.edible.hungervalue = TUNING.CALORIES_MED
	inst.components.edible.sanityvalue = 10

	
	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/maplesyrup.xml"

	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
		
	return inst
end
AddIngredientValues({"maplesyrup"}, {sweetener=1}, true)
return Prefab( "common/inventory/maplesyrup", fn, Assets )