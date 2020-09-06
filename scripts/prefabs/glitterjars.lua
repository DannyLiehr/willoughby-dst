local assets =
{
    Asset("ANIM", "anim/glitterjar.zip"),
	--Asset("IMAGE", "images/inventoryimages/potion.xml"),
}
local effecttime = 5
local effectcounter = 0

local prefabs = 
{
	"spoiled_food",
}
 
--[[ local function GlitterGlow(inst, rotrate)
    local groundglow = SpawnPrefab("hutch_music_light_fx")
    local scale = (math.random() * .2 + 1.2) * (math.random() < .5 and 1 or -1)
    groundglow.Transform:SetScale(scale, scale, scale)
    groundglow.Follower:FollowSymbol(inst.GUID, "jar", 0, 0, 0)
    groundglow:InitFX(
        inst,
        {
            rot = math.random(0, 359),
            rotrate = rotrate,
            alpha = math.random(),
            alphadir = math.random() < .5,
            alpharate = math.random() * .02 + .005,
        }
    )
	inst:AddTag("glowing")
    return groundglow
end
 
 local function togroundwilson(inst)
    GlitterGlow(inst)
end]]--
 
local function common_fn(bank, build)
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank(bank)
    inst.AnimState:SetBuild(build)
    --inst.AnimState:PlayAnimation("idle")
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
	inst:AddComponent("inventoryitem")

    inst:AddComponent("inspectable")

    MakeHauntableLaunch(inst)

    return inst
end

local function wilson()
    local inst = common_fn("glitterjar", "glitterjar")
    if not TheWorld.ismastersim then
        return inst
    end  
	inst.AnimState:PlayAnimation("idle_doc",true)
	--[[inst:ListenForEvent("onputininventory", topocketwilson)
    inst:ListenForEvent("ondropped", togroundwilson)]]--
--Stuff here

	
    return inst
end

local function basic()
    local inst = common_fn("glitterjar", "glitterjar")
    if not TheWorld.ismastersim then
        return inst
    end  
	inst.AnimState:PlayAnimation("idle_basic",true)
	
	--[[inst:ListenForEvent("onputininventory", topocketdoc)
    inst:ListenForEvent("ondropped", togrounddoc)]]--
--Stuff here

	
    return inst
end

return  Prefab("glitterjar", wilson, assets),
        Prefab("glitterjar_basic", basic, assets)