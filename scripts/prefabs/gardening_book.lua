local assets =
{
    Asset("ANIM", "anim/books.zip"),
    --Asset("SOUND", "sound/common.fsb"),
}

--helper function for book_gardening
local function trygrowth(inst)
    if inst:IsInLimbo()
        or (inst.components.witherable ~= nil and
            inst.components.witherable:IsWithered()) then
        return
    end

    if inst.components.pickable ~= nil then
        if inst.components.pickable:CanBePicked() and inst.components.pickable.caninteractwith then
            return
        end
        inst.components.pickable:FinishGrowing()
    end

    if inst.components.crop ~= nil then
        inst.components.crop:DoGrow(TUNING.TOTAL_DAY_TIME * 3, true)
    end

    if inst.components.growable ~= nil and
        (inst:HasTag("tree") or inst:HasTag("winter_tree")) and
        not inst:HasTag("stump") then
        inst.components.growable:DoGrowth()
    end

    if inst.components.harvestable ~= nil and inst.components.harvestable:CanBeHarvested() and inst:HasTag("mushroom_farm") then
        inst.components.harvestable:Grow()
    end
end

local book_defs =
{
    {
        name = "gardening_book",
        uses = 10,
        fn = function(inst, reader)
            reader.components.sanity:DoDelta(-5)

            local x, y, z = reader.Transform:GetWorldPosition()
            local range = 10
            local ents = TheSim:FindEntities(x, y, z, range, nil, { "pickable", "INLIMBO", "bumpkin" })
            if #ents > 0 then
                trygrowth(table.remove(ents, math.random(#ents)))
                if #ents > 0 then
                    local timevar = 1 - 1 / (#ents + 1)
                    for i, v in ipairs(ents) do
                        v:DoTaskInTime(timevar * math.random(), trygrowth)
                    end
                end
            end
            return true
        end,
    },
}

local function MakeBook(def)
    --[[local morphlist = {}
    for i, v in ipairs(book_defs) do
        if v ~= def then
            table.insert(morphlist, v.name)
        end
    end]]

    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddSoundEmitter()
        inst.entity:AddNetwork()

        MakeInventoryPhysics(inst)

        inst.AnimState:SetBank("books")
        inst.AnimState:SetBuild("books")
        inst.AnimState:PlayAnimation(def.name)

        inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end

        -----------------------------------

        inst:AddComponent("inspectable")
        inst:AddComponent("book")
        inst.components.book.onread = def.fn

        inst:AddComponent("inventoryitem")

        inst:AddComponent("finiteuses")
        inst.components.finiteuses:SetMaxUses(def.uses)
        inst.components.finiteuses:SetUses(def.uses)
        inst.components.finiteuses:SetOnFinished(inst.Remove)

        inst:AddComponent("fuel")
        inst.components.fuel.fuelvalue = TUNING.MED_FUEL

        MakeSmallBurnable(inst, TUNING.MED_BURNTIME)
        MakeSmallPropagator(inst)

        --MakeHauntableLaunchOrChangePrefab(inst, TUNING.HAUNT_CHANCE_OFTEN, TUNING.HAUNT_CHANCE_OCCASIONAL, nil, nil, morphlist)
        MakeHauntableLaunch(inst)

        return inst
    end

    return Prefab(def.name, fn, assets, prefabs)
end

local books = {}
for i, v in ipairs(book_defs) do
    table.insert(books, MakeBook(v))
end
book_defs = nil
return unpack(books)
