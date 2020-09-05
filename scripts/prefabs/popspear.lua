local Assets =
{
	Asset("ANIM", "anim/popspear.zip"),
	Asset("ANIM", "anim/swap_popspear.zip"),
    Asset("ATLAS", "images/inventoryimages/maplepop.xml"),
}

local prefabs = 
{
	"spoiled_food",
}
local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_popspear", "swap_popspear")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function UpdateDamage(inst)
    if inst.components.perishable and inst.components.weapon then
        local dmg = TUNING.HAMBAT_DAMAGE * inst.components.perishable:GetPercent()
        dmg = Remap(dmg, 0, TUNING.HAMBAT_DAMAGE, TUNING.HAMBAT_MIN_DAMAGE_MODIFIER*TUNING.HAMBAT_DAMAGE, TUNING.HAMBAT_DAMAGE)
        inst.components.weapon:SetDamage(dmg)
    end
end

local function normspeed(inst, victim)
	local victim = data.target
	  victim.Light:SetColour(255 / 255, 255 / 255, 255 / 255)
  	  victim.components.locomotor.runspeed = victim.components.locomotor.runspeed - 5  
end

local function IsValidVictim(victim)
    return victim ~= nil
        and victim.components.pinnable ~= nil
end

local function onattack(inst, data, victim)
    local victim = data.target
    if not inst.components.health:IsDead() and IsValidVictim(victim) then
	  victim.Light:SetColour(128 / 255, 128 / 255, 65 / 255)
      victim.components.locomotor.runspeed = victim.components.locomotor.runspeed + 5
	  victim:DoTaskInTime(5, normspeed)      
    end
end

local function fn(Sim)
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	if TheSim:GetGameID() =="DST" then inst.entity:AddNetwork() end

	MakeInventoryPhysics(inst)
	MakeSmallBurnable(inst)
	MakeSmallPropagator(inst)
	
	inst.AnimState:SetBank("popspear")
	inst.AnimState:SetBuild("popspear")
	inst.AnimState:PlayAnimation("idle", false)
	
	inst:AddTag("preparedfood")
	inst:AddTag("maple")
    inst:AddTag("show_spoilage")
    inst:AddTag("icebox_valid")
	
	 inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.HAMBAT_DAMAGE *.2)
	inst.components.weapon:SetOnAttack(UpdateDamage)
	
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
    
	if TheSim:GetGameID()=="DST" then
		if not TheWorld.ismastersim then
			return inst
		end
		
		inst.entity:SetPristine()
	end

	inst:AddComponent("edible")
	inst.components.edible.healthvalue = 0
	inst.components.edible.hungervalue = TUNING.CALORIES_SMALL * 4
	inst.components.edible.sanityvalue = 20 * 4
	
	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "maplepop"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/maplepop.xml"

	--[[inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM]]--

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:ListenForEvent("onattackother", onattack)
		
	return inst
end
return Prefab( "common/inventory/popspear", fn, Assets )