local assets =
{
    Asset("ANIM", "anim/potion.zip"),
	--Asset("IMAGE", "images/inventoryimages/potion.xml"),
}
local effecttime = 5
local effectcounter = 0

local prefabs =
{
	"spoiled_food",
}
local function normspeed(eater)
	  eater.components.talker:Say(GetString(eater, "ANNOUNCE_SPEEDDOWN"))
	  eater:RemoveTag("spedup")
  	  eater.components.locomotor.runspeed = eater.components.locomotor.runspeed - 5

end
local function oneatenyellow(inst, eater)
	if not eater:HasTag("player") then
		return
	end

	if eater:HasTag("spedup") then
	  eater.components.talker:Say(GetString(eater, "ANNOUNCE_TOPSPEED"))
	else
	  eater.components.locomotor.runspeed = eater.components.locomotor.runspeed + 5
	  eater:DoTaskInTime(effecttime, normspeed)
	  eater.components.talker:Say(GetString(eater, "ANNOUNCE_SPEED"))
	  eater:AddTag("spedup")
	end

end

local function oneatenmystery(inst, eater)
	if not eater:HasTag("player") then
		return
	end
	--Let's roll a dice.
	local randomizer = math.floor(math.random()*3)
	if (randomizer == 1) then
		--Just a healing potion. (:
		inst.components.edible.hungervalue = 10
	elseif (randomizer == 2) then
		--Just a sanity potion. :)
		inst.components.edible.sanityvalue = 20
	elseif (randomizer == 3) then
        -- Health potion why not
		inst.components.edible.healthvalue = 7

	end

end
local function oneatenorange(inst,eater)
local pt = eater:GetPosition()
local num_strikes = 3
eater:StartThread(function()
	for k = 0, num_strikes do
	local rad = math.random(3, 15)
	local angle = k * 4 * PI / num_strikes
	local pos = pt + Vector3(rad * math.cos(angle), 0, rad * math.sin(angle))
	TheWorld:PushEvent("ms_sendlightningstrike", pos)
 end
 end)
end

local function common_fn(bank, build)
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank(bank)
    inst.AnimState:SetBuild(build)
    --inst.AnimState:PlayAnimation("idle")

	inst:AddComponent("edible")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
	inst:AddComponent("inventoryitem")

	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"

    inst:AddComponent("inspectable")

    MakeHauntableLaunch(inst)

    return inst
end

local function green()
    local inst = common_fn("potion", "potion")
    if not TheWorld.ismastersim then
        return inst
    end
	inst.AnimState:PlayAnimation("green",true)
	inst.components.inventoryitem.imagename = "green_potion"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/green_potion.xml"
	inst.components.edible.healthvalue = 0
	inst.components.edible.hungervalue = 0
	inst.components.edible.sanityvalue = 50
	inst.components.edible.woodiness = 100
	--inst.components.edible.temperaturedelta = TUNING.HOT_FOOD_BONUS_TEMP / 2
	--inst.components.edible.temperatureduration = TUNING.FOOD_TEMP_LONG * 2

    return inst
end

local function yellow()
    local inst = common_fn("potion", "potion")

    if not TheWorld.ismastersim then
        return inst
    end
	inst.AnimState:PlayAnimation("yellow",true)
	inst.components.inventoryitem.imagename = "yellow_potion"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/yellow_potion.xml"
	inst.components.edible.healthvalue = 0
	inst.components.edible.hungervalue = 0
	inst.components.edible.sanityvalue = 0
	--inst.components.edible.temperaturedelta = TUNING.HOT_FOOD_BONUS_TEMP / 2
	--inst.components.edible.temperatureduration = TUNING.FOOD_TEMP_LONG * 2
	inst.components.edible:SetOnEatenFn(oneatenyellow)

    return inst
end

local function health()
    local inst = common_fn("potion", "potion")

    if not TheWorld.ismastersim then
        return inst
    end
	inst.AnimState:PlayAnimation("blue",true)
	inst.components.inventoryitem.imagename = "elixir"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/elixir.xml"
	inst.components.edible.healthvalue = 50
	inst.components.edible.hungervalue = 0
	inst.components.edible.sanityvalue = 0
	--inst.components.edible.temperaturedelta = TUNING.HOT_FOOD_BONUS_TEMP / 2
	--inst.components.edible.temperatureduration = TUNING.FOOD_TEMP_LONG * 2

    return inst
end

local function orange()
    local inst = common_fn("potion", "potion")

    if not TheWorld.ismastersim then
        return inst
    end
	inst.AnimState:PlayAnimation("orange",true)
	inst.components.inventoryitem.imagename = "orange_potion"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/orange_potion.xml"
	inst.components.edible.healthvalue = 0
	inst.components.edible.hungervalue = 0
	inst.components.edible.sanityvalue = 0
	inst.components.edible:SetOnEatenFn(oneatenorange)
	--inst.components.edible.temperaturedelta = TUNING.HOT_FOOD_BONUS_TEMP / 2
	--inst.components.edible.temperatureduration = TUNING.FOOD_TEMP_LONG * 2

    return inst
end

local function ice()
    local inst = common_fn("potion", "potion")

    if not TheWorld.ismastersim then
        return inst
    end
	inst.AnimState:PlayAnimation("ice",true)
	inst.components.inventoryitem.imagename = "ice_potion"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/ice_potion.xml"
	inst.components.edible.healthvalue = 5
	inst.components.edible.hungervalue = 0
	inst.components.edible.sanityvalue = 0
	inst.components.edible.temperaturedelta = TUNING.COLD_FOOD_BONUS_TEMP * 2
	inst.components.edible.temperatureduration = TUNING.FOOD_TEMP_LONG * 2
    return inst
end

local function fire()
    local inst = common_fn("potion", "potion")

    if not TheWorld.ismastersim then
        return inst
    end
	inst.AnimState:PlayAnimation("fire",true)
	inst.components.inventoryitem.imagename = "fire_potion"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/fire_potion.xml"
	inst.components.edible.healthvalue = 5
	inst.components.edible.hungervalue = 0
	inst.components.edible.sanityvalue = 0
	inst.components.edible.temperaturedelta = TUNING.HOT_FOOD_BONUS_TEMP * 2
	inst.components.edible.temperatureduration = TUNING.FOOD_TEMP_LONG * 2

    return inst
end

local function mystery()
    local inst = common_fn("potion", "potion")

    if not TheWorld.ismastersim then
        return inst
    end


	inst.AnimState:PlayAnimation("mystery",true)
	inst.components.inventoryitem.imagename = "yellow_potion"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/yellow_potion.xml"
	inst.components.edible.healthvalue = 0
	inst.components.edible:SetOnEatenFn(oneatenmystery)

    return inst
end

return  Prefab("green_potion", green, assets),
        Prefab("orange_potion", orange, assets),
        Prefab("ice_potion", ice, assets),
        Prefab("mystery_potion", mystery, assets),
        Prefab("yellow_potion", yellow, assets),
        Prefab("elixir", health, assets),
        Prefab("fire_potion", fire, assets)
