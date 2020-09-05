
local MakePlayerCharacter = require "prefabs/player_common"


local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	Asset( "ANIM", "anim/windell.zip" ),
}
local prefabs = {}

local start_inv = {}

--------CAN FIND THINGS-----
local function FindTree(inst)
	if inst.uncovered_tree then
		return 
	end

	inst.uncovered_tree = true

	local x,y,z = inst:GetPosition():Get()
	local trees = TheSim:FindEntities(x, y, z, 10000, {"livingtree"}, {"cave_entrance"})
	if trees and type(trees) == "table" and #trees > 0 then
		for i = 1, math.ceil(#trees * 0.25) do
			trees[i]:Reveal(trees[i])
			trees[i]:RevealFog(trees[i])
		end
	end

	local landmarks = TheSim:FindEntities(x, y, z, 10000, {"statuemaxwell"}, {"dirtpile"})
	if landmarks and type(landmarks) == "table" and #landmarks > 0 then
		for i = 1, #landmarks, 1 do
			if landmarks[i].tree and landmarks[i].tree:IsRevealed() then
				local x, y, z = landmarks[i].Transform:GetWorldPosition()
				local landmark = SpawnPrefab("evergreen")
				landmark.Transform:SetPosition(x, y, z)
				landmarks[i]:Remove()
			end
		end
	end
end

---End Can find things---

local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "windell_speed_mod", 1.25)
end

local function onbecameghost(inst)
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "windell_speed_mod")
end

local function onload(inst, data)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)
	inst.uncovered_tree = (data and data.uncovered_tree) or false

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "windell.tex" )
	inst:AddTag("mountie")
end

local function CheckFood (inst, food)
 if food.components.edible ~= nil then
        if food.components.edible.foodtype == FOODTYPE.VEGGIE then
		
        elseif food.components.edible.foodtype == FOODTYPE.MEAT then
			inst.components.eater.hungerabsorption = 2
        end
    end
end

local master_postinit = function(inst)
	inst.soundsname = "woodie"

	inst.components.health:SetMaxHealth(150)
	inst.components.hunger:SetMax(150)
	inst.components.sanity:SetMax(200)

    inst.components.combat.damagemultiplier = 1.2

	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst.components.eater:SetCanEatRaw()
	inst.components.eater.strongstomach = true
	--inst.components.eater.eatwholestack = true
	inst.components.eater:SetOnEatFn(CheckFood)
	

	inst:DoTaskInTime(0.5, FindTree)
	
	inst.uncovered_tree = true
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload

	
end

return MakePlayerCharacter("windell", prefabs, assets, common_postinit, master_postinit, start_inv)
