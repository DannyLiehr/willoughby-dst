local assets=
{ 
    Asset("ANIM", "anim/trapper_hat.zip"),
    Asset("ANIM", "anim/trapper_hat_swap.zip"), 

    Asset("ATLAS", "images/inventoryimages/trapper_hat.xml"),
    Asset("IMAGE", "images/inventoryimages/trapper_hat.tex"),
}

local prefabs = 
{  
}



local function fn()


    local function OnEquip(inst, owner) 
        owner.AnimState:OverrideSymbol("swap_hat", "trapper_hat_swap", "swap_hat")
        owner.AnimState:Show("HAT")
        owner.AnimState:Show("HAT_HAT")
		owner.AnimState:Hide("HAIR_NOHAT")
        owner.AnimState:Hide("HAIR")
        if owner:HasTag("player") then
            owner.AnimState:Hide("HEAD")
            owner.AnimState:Show("HEAD_HAT")
        end
	        if inst.components.fueled ~= nil then
            inst.components.fueled:StartConsuming()
        end
	end
	
   

    local function OnUnequip(inst, owner) 
        owner.AnimState:Hide("HAT")
        owner.AnimState:Hide("HAT_HAT")
        owner.AnimState:Show("HAIR_NOHAT")
        owner.AnimState:Show("HAIR")
		owner.AnimState:ClearOverrideSymbol("swap_hat")

        if owner:HasTag("player") then
            owner.AnimState:Show("HEAD")
            owner.AnimState:Hide("HEAD_HAT")
        end	
			        if inst.components.fueled ~= nil then
            inst.components.fueled:StopConsuming()
			end
    end
	
    local inst = CreateEntity()
    local trans = inst.entity:AddTransform()
    local anim = inst.entity:AddAnimState()
	inst.entity:AddNetwork()
	
    MakeInventoryPhysics(inst)
    
    anim:SetBank("trapper_hat")
    anim:SetBuild("trapper_hat")
    anim:PlayAnimation("idle")
	
	 inst.entity:SetPristine()


      

        if not TheWorld.ismastersim then
            return inst
        end

		
		
        inst:AddComponent("fueled")
        inst.components.fueled.fueltype = FUELTYPE.USAGE
        inst.components.fueled:InitializeFuelLevel(TUNING.BEEFALOHAT_PERISHTIME)
        inst.components.fueled:SetDepletedFn(inst.Remove)

      

        inst:AddComponent("insulator")
        inst.components.insulator:SetInsulation(TUNING.INSULATION_LARGE)
		inst.components.insulator:SetWinter()


    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "trapper_hat"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/trapper_hat.xml"
	
 
    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)
	 inst.components.equippable.dapperness = TUNING.DAPPERNESS_SMALL
	

	
	inst:AddComponent("inspectable")
    
    inst.components.inventoryitem.cangoincontainer = true

    inst:AddComponent("waterproofer")
    inst.components.waterproofer:SetEffectiveness(0)
		
    return inst
end

--Item Information--
STRINGS.NAMES.TRAPPER_HAT = "Arctic Ushanka"
STRINGS.RECIPE_DESC.TRAPPER_HAT = "It's a little big on your head."


return  Prefab("common/inventory/trapper_hat", fn, assets, prefabs)