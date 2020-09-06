local assets=
{
	Asset("ANIM", "anim/mapletree.zip"),
	Asset("ATLAS", "images/inventoryimages/maple_nut.xml"),  
	Asset("IMAGE", "images/inventoryimages/maple_nut.tex"),
	
}


local function growtree(inst)
	--print ("GROWTREE")
    inst.growtask = nil
    inst.growtime = nil
    inst.issapling:set(false)
	local tree = SpawnPrefab("mapletree") 
    if tree then 
        --tree.Transform:SetScale(1,1,1)        
		tree.Transform:SetPosition(inst.Transform:GetWorldPosition() ) 
        tree:growfromseed()--PushEvent("growfromseed")
        inst:Remove()
	end
end

local function plant(inst, growtime)
    inst:RemoveComponent("inventoryitem")
    MakeHauntableIgnite(inst)
    RemovePhysicsColliders(inst)
    inst.AnimState:PlayAnimation("idle_planted")
    --inst.Transform:SetScale(2.5,2.5,2.5)
    inst.SoundEmitter:PlaySound("dontstarve/wilson/plant_tree")
    inst.growtime = GetTime() + growtime
    inst.issapling:set(true)
    --print ("PLANT", growtime)
    inst.growtask = inst:DoTaskInTime(growtime, growtree)


end

local function ondeploy(inst, pt)
    inst = inst.components.stackable:Get()
    inst.Physics:Teleport(pt:Get())
    local timeToGrow = GetRandomWithVariance(TUNING.PINECONE_GROWTIME.base, TUNING.PINECONE_GROWTIME.random)
    plant(inst, timeToGrow)
end

local function stopgrowing(inst)
    if inst.growtask then
        inst.growtask:Cancel()
        inst.growtask = nil
    end
    inst.growtime = nil
    inst.issapling:set(false)
end

local function restartgrowing(inst)
    if inst and not inst.growtask then
        local growtime = GetRandomWithVariance(TUNING.PINECONE_GROWTIME.base, TUNING.PINECONE_GROWTIME.random)
        inst.growtime = GetTime() + growtime
        inst.growtask = inst:DoTaskInTime(growtime, growtree)
    end
end

local function describe(inst)
    if inst.growtime then
        return "PLANTED"
    end
end

local function OnSave(inst, data)
    if inst.growtime then
        data.growtime = inst.growtime - GetTime()
    end
end

local function OnLoad(inst, data)
    if data and data.growtime then
        plant(inst, data.growtime)
    end

end

local function MakeMaplenut()
	local inst = CreateEntity()
	inst.entity:AddTransform()
	local s  = 1.2
    inst.Transform:SetScale(s,s,s)
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	MakeInventoryPhysics(inst)
    inst.entity:AddNetwork()
	inst.AnimState:SetBank("mapletree")
    inst.AnimState:SetBuild("mapletree")
	
	
	inst.AnimState:PlayAnimation("seed")

    inst.issapling = net_bool(inst.GUID, "issapling")
    inst.issapling:set(false)
	
	inst:AddTag("apple")
	inst:AddTag("cattoy")

    inst.entity:SetPristine()

	if not TheWorld.ismastersim then
        return inst
    end

	
	inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_MEDITEM

	--[[inst:AddComponent("perishable")
    inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
    inst.components.perishable:StartPerishing()
    inst.components.perishable.onperishreplacement = "spoiled_food"]]--

	inst:AddComponent("inspectable")
	inst:AddComponent("inventoryitem")	
	inst.components.inventoryitem.imagename = "maple_nut"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/maple_nut.xml"
	MakeHauntableLaunchAndIgnite(inst)

    inst:AddComponent("deployable")
    inst.components.deployable:SetDeployMode(DEPLOYMODE.PLANT)

    inst.components.deployable.ondeploy = ondeploy



    inst.OnSave = OnSave
    inst.OnLoad = OnLoad
	return inst
end
return Prefab( "common/inventory/maplenut", MakeMaplenut, assets),
		MakePlacer("common/maplenut_placer", "maple_nut", "maple_nut", "placer")