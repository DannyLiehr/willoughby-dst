
local MakePlayerCharacter = require "prefabs/player_common"


local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	Asset( "SOUND", "sound/will.fsb" ),
	Asset( "ANIM", "anim/will.zip" ),
}
local prefabs = {}

-- Custom starting items
local start_inv = {
	"poop","poop","poop","poop","poop","poop","poop","poop","seeds","seeds","seeds","carrot","carrot","carrot"
}

local function food(inst, food)
  if inst.components.eater and food:HasTag("rawmeat") then   
	inst.components.sanity:DoDelta(-20)
	inst.components.talker:Say(GetString(inst, "ANNOUNCE_EATRAWMEAT"))  
  end 
    if inst.components.eater and food:HasTag("meat") then   
  inst.components.sanity:DoDelta(-10)  
  inst.components.talker:Say(GetString(inst, "ANNOUNCE_EATMEAT"))
  end 
  end
-- Change at low sanity
local function OnHungerDelta(inst, data)
    if data.newpercent <= .40 then 
	inst.components.eater:SetDiet( { FOODGROUP.OMNI }--[[, { FOODTYPE.VEGGIE, FOODTYPE.SEEDS, FOODTYPE.GENERIC, FOODTYPE.FAT }]] )
	inst.components.eater:SetCanEatRaw()
	inst.components.eater:SetOnEatFn(food)
   
	elseif data.newpercent >= .40 then
	inst.components.eater:SetDiet( { FOODGROUP.OMNI }, { FOODTYPE.VEGGIE, FOODTYPE.SEEDS, FOODTYPE.GENERIC, FOODTYPE.FAT } )
			inst.components.eater:SetCanEatRaw(false)
   inst:RemoveComponent(food)
        end
    end


-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when reviving from ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "will_speed_mod", 1.25)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "will_speed_mod")
end

-- When loading or spawning the character
local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end



-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "will.tex" )
	inst:AddTag("bumpkinfarmer")

end



-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- choose which sounds this character will play
	inst.soundsname = "will"

	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	inst:RemoveTag("scarytoprey")
	
	-- Stats	
	inst.components.health:SetMaxHealth(110)
	inst.components.hunger:SetMax(100)
	inst.components.sanity:SetMax(200)
	inst.components.eater:SetDiet( { FOODGROUP.OMNI }, { FOODTYPE.VEGGIE, FOODTYPE.SEEDS, FOODTYPE.GENERIC, FOODTYPE.FAT } )
	inst:AddComponent("sanityaura")
    inst.components.sanityaura.aura = TUNING.SANITYAURA_SMALL
	
	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = .85
	
	inst:ListenForEvent("hungerdelta", OnHungerDelta)
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = .7 * TUNING.WILSON_HUNGER_RATE
	
	-- Sanity drain (optional)
	inst.components.sanity.night_drain_mult = 2
	
	inst:AddComponent("reader")
	
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload

	
end

return MakePlayerCharacter("will", prefabs, assets, common_postinit, master_postinit, start_inv)
