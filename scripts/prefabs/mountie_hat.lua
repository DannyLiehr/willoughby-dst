local assets=
{ 
    Asset("ANIM", "anim/mountie_hat.zip"),
    Asset("ANIM", "anim/mountie_hat_swap.zip"), 

    Asset("ATLAS", "images/inventoryimages/mountie_hat.xml"),
    Asset("IMAGE", "images/inventoryimages/mountie_hat.tex"),
}

local prefabs = 
{  
}



local function fn()


    local function OnEquip(inst, owner) 
        owner.AnimState:OverrideSymbol("swap_hat", "mountie_hat_swap", "swap_hat")
        owner.AnimState:Show("HAT")
        owner.AnimState:Show("HAT_HAT")
		owner.AnimState:Hide("HAIR_NOHAT")
        owner.AnimState:Hide("HAIR")
        if owner:HasTag("player") then
            owner.AnimState:Hide("HEAD")
            owner.AnimState:Show("HEAD_HAT")
			ThePlayer:AddTag("polite")
			ThePlayer:RemoveTag("scarytoprey")
			ThePlayer.components.talker:Say(GetString(ThePlayer, "ANNOUNCE_MOUNTIE_HAT"))
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
		if inst.components.fueled ~= nil then
            inst.components.fueled:StopConsuming()
        end

        if owner:HasTag("player") then
            owner.AnimState:Show("HEAD")
            owner.AnimState:Hide("HEAD_HAT")
		ThePlayer:RemoveTag("polite")
		ThePlayer:AddTag("scarytoprey")
        end	
		if owner:HasTag("bumpkinfarmer") then
			ThePlayer:RemoveTag("scarytoprey")
        end
    end
	
    local inst = CreateEntity()
    local trans = inst.entity:AddTransform()
    local anim = inst.entity:AddAnimState()
	inst.entity:AddNetwork()
	
    MakeInventoryPhysics(inst)
    
    anim:SetBank("mountie_hat")
    anim:SetBuild("mountie_hat")
    anim:PlayAnimation("idle")
	
	 inst.entity:SetPristine()


      

        if not TheWorld.ismastersim then
            return inst
        end

		
		
        inst:AddComponent("fueled")
        inst.components.fueled.fueltype = FUELTYPE.USAGE
        inst.components.fueled:InitializeFuelLevel(TUNING.BEEFALOHAT_PERISHTIME)
        inst.components.fueled:SetDepletedFn(--[[generic_perish]]inst.Remove)


    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "mountie_hat"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/mountie_hat.xml"
	
 
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
STRINGS.NAMES.MOUNTIE_HAT = "Mountie Hat"
STRINGS.RECIPE_DESC.MOUNTIE_HAT = "Animals seem to be drawn to it."


return  Prefab("common/inventory/mountie_hat", fn, assets, prefabs)