local Assets =
{
	Asset("ANIM", "anim/bbq.zip"),
    Asset("ATLAS", "images/inventoryimages/bbq.xml"),
}

local prefabs = 
{
}

local function OnFuelEmpty(inst)
    inst.components.machine:TurnOff()
end

local function OnAddFuel(inst)
    if inst.on == false then
        inst.components.machine:TurnOn()
    end
end

local function OnFuelSectionChange(new, old, inst)
    if inst._fuellevel ~= new then
        inst._fuellevel = new
        inst.AnimState:OverrideSymbol("swap_meter", "firefighter_meter", new)
    end
end

local function CanInteract(inst)
    return not inst.components.fueled:IsEmpty()
end

local function onhammered(inst, worker)
	inst.components.lootdropper:DropLoot()
	SpawnPrefab("collapse_small").Transform:SetPosition(inst.Transform:GetWorldPosition())
	inst:Remove()
	inst.SoundEmitter:PlaySound("dontstarve/common/destroy_metal")
end

local function onhit(inst, worker)
end

local function getstatus(inst, viewer)
    return (inst:HasTag("burnt") and "BURNT")
           or (inst:HasTag("cooker") and "ON")
		   or (inst.components.fueled ~= nil
            and inst.components.fueled.currentfuel / inst.components.fueled.maxfuel <= .25
            and "LOWFUEL")
           or "OFF"
end


local function TurnOff(inst, instant)
    inst.on = false
	inst.Light:Enable(false)
	inst:RemoveTag("cooker")
    inst.components.fueled:StopConsuming()
	inst.AnimState:PlayAnimation("idle_off", true)
end

local function TurnOn(inst, instant)
    inst.on = true
	inst.Light:Enable(true)
	inst:AddTag("cooker")
    inst.components.fueled:StartConsuming()
	inst.AnimState:PlayAnimation("idle_on", true)
end

local function onsave(inst, data)
    if inst:HasTag("burnt") or (inst.components.burnable ~= nil and inst.components.burnable:IsBurning()) then
        data.burnt = true
    end
end

local function onload(inst, data)
    if data ~= nil and data.burnt and inst.components.burnable ~= nil and inst.components.burnable.onburnt ~= nil then
        inst.components.burnable.onburnt(inst)
    end
end

local function fn(Sim)
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddLight()
	if TheSim:GetGameID() =="DST" then inst.entity:AddNetwork() end

	MakeInventoryPhysics(inst)
    MakeLargeBurnable(inst, nil, nil, true)
    MakeMediumPropagator(inst)
	
	MakeObstaclePhysics(inst, 1)
	
	inst:AddTag("structure")
	
    inst.Light:SetRadius(.6)
    inst.Light:SetFalloff(1)
    inst.Light:SetIntensity(.5)
    inst.Light:SetColour( 255/ 255, math.random(128,255)/ 255, math.random(0,64)/ 255)
	
	inst.color = .5 + math.random() * .5
    inst.AnimState:SetMultColour(inst.color, inst.color, inst.color, 1)

	
	inst.AnimState:SetBank("bbq")
	inst.AnimState:SetBuild("bbq")
	
	
	if TheSim:GetGameID()=="DST" then
		if not TheWorld.ismastersim then
			return inst
		end
		
		inst.entity:SetPristine()
	end
--Components Down here!
	
	inst:AddComponent("cooker")
    inst:AddComponent("inspectable")
	inst.components.inspectable.getstatus = getstatus
	
	inst:AddComponent("hauntable")
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)
	
    inst:AddComponent("machine")
    inst.components.machine.turnonfn = TurnOn
    inst.components.machine.turnofffn = TurnOff
    inst.components.machine.caninteractfn = CanInteract
    inst.components.machine.cooldowntime = 0.5
	
	inst:AddComponent("workable")
	inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
	inst.components.workable:SetWorkLeft(4)
	inst.components.workable:SetOnFinishCallback(onhammered)
	inst.components.workable:SetOnWorkCallback(onhit)

    inst:AddComponent("fueled")
    inst.components.fueled:SetDepletedFn(OnFuelEmpty)
    inst.components.fueled:SetTakeFuelFn(OnAddFuel)
    inst.components.fueled.accepting = true
    inst.components.fueled:SetSections(10)
    inst.components.fueled:SetSectionCallback(OnFuelSectionChange)
    inst.components.fueled:InitializeFuelLevel(TUNING.FIRESUPPRESSOR_MAX_FUEL_TIME)
    inst.components.fueled.bonusmult = 5
    inst.components.fueled.secondaryfueltype = FUELTYPE.CHEMICAL
	
	inst:AddComponent("lootdropper")
	
    inst.OnSave = onsave 
    inst.OnLoad = onload

    inst.components.machine:TurnOff()
		
	return inst
end
return Prefab( "common/inventory/bbq", fn, Assets ),
MakePlacer( "common/bbq_placer", "bbq", "bbq", "idle_off" )