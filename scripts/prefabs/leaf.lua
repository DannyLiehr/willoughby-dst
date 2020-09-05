local assets =
{
    Asset("ANIM", "anim/leaf.zip"),
	Asset( "IMAGE", "images/inventoryimages/leaf.tex" ),
    Asset( "ATLAS", "images/inventoryimages/leaf.xml" ),
}

local names = {"l1","l2","l3"}

local function OnPickup(inst)
    inst.components.disappears:StopDisappear()
end

local function OnDropped(inst)
    inst.components.disappears:PrepareDisappear()
end

local function OnHaunt(inst)
    inst.components.disappears:Disappear()
    return true
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()

    MakeInventoryPhysics(inst)

	inst.entity:AddAnimState()
    inst.AnimState:SetBank("leaf")
    inst.animname = names[math.random(#names)]
    inst.AnimState:SetBuild("leaf")
    inst.AnimState:PlayAnimation(inst.animname)

    inst:AddTag("cattoy")
    inst:AddTag("renewable")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

	
	inst:AddComponent("disappears")
    inst.components.disappears.sound = "dontstarve/common/dust_blowaway"
    inst.components.disappears.anim = "disappear"
	
    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "leaf"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/leaf.xml"
	inst.components.inventoryitem:SetOnPutInInventoryFn(OnPickup)
	
    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.ROUGHAGE
    inst.components.edible.woodiness = 2
    inst.components.edible.healthvalue = TUNING.HEALING_TINY
    inst.components.edible.hungervalue = TUNING.CALORIES_TINY/2

    inst:AddComponent("inspectable")
    inst:AddComponent("tradable")

    inst:AddComponent("fuel")
    inst.components.fuel.fuelvalue = TUNING.SMALL_FUEL

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_FAST)
	inst.components.perishable:StartPerishing()
	inst.components.perishable:SetOnPerishFn(inst.Remove)
	
	inst:AddComponent("hauntable")
    inst.components.hauntable.cooldown_on_successful_haunt = false
    inst.components.hauntable.usefx = false
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)
    inst.components.hauntable:SetOnHauntFn(OnHaunt)
	
    MakeSmallBurnable(inst, TUNING.SMALL_BURNTIME)
    MakeSmallPropagator(inst)

	
	inst:ListenForEvent("ondropped", OnDropped)
    inst.components.disappears:PrepareDisappear()
	

    return inst
end

return Prefab("leaf", fn, assets)
