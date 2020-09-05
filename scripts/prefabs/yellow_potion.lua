assets =
{
	Asset("ANIM", "anim/red_potion.zip"),
		Asset("IMAGE", "images/inventoryimages/red_potion.tex"),
    	Asset("ATLAS", "images/inventoryimages/red_potion.xml"),
}


local function fn(Sim)
	local inst = CreateEntity()
	local trans = inst.entity:AddTransform()
	local anim = inst.entity:AddAnimState()
     MakeInventoryPhysics(inst)	
	
	inst.AnimState:SetBank("red_potion")
     inst.AnimState:SetBuild("red_potion")
     inst.AnimState:PlayAnimation("idle")
	 inst.entity:AddNetwork()
	
	inst.entity:SetPristine()
	
	if not TheWorld.ismastersim then
     return inst
  end	
		

     inst:AddComponent("inspectable")
     inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/red_potion.xml",

     inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

     inst:AddComponent("edible")
     inst.components.edible.healthvalue = 0
     inst.components.edible.hungervalue = 0
	 inst.components.edible.sanityvalue = 0
	 inst.components.edible.foodtype = "GENERIC"

	MakeHauntableLaunchAndPerish(inst)

		
   return inst
end

STRINGS.NAMES.RED_POTION = "Red Medicine"

-- Randomizes the inspection line upon inspection.
STRINGS.CHARACTERS.GENERIC.DESCRIBE.RED_POTION = {	
	"This won't be painful.", 
	"Looks sweet.", 
	"Pain killers usually aren't in syrup form!", 
	 
}
STRINGS.CHARACTERS.WILL.DESCRIBE.RED_POTION = {	
	"Yum!", 
	"It's berry flavor!", 
	"It looks so sweet!", 
	 
}
STRINGS.CHARACTERS.WOODIE.DESCRIBE.RED_POTION = {	
	"That's sweet.", 
	"Not really one to take medicine, yanno?", 
	"Are you sure this will work, bud?", 
	 
}

return Prefab( "common/inventory/red_potion", fn, assets )