
local MakePlayerCharacter = require "prefabs/player_common"


local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	Asset("ANIM", "anim/doc_beard.zip"),
	Asset( "ANIM", "anim/doc.zip" ),
}
local prefabs = {"beardhair"}

-- Custom starting items
local start_inv = {
"lifeinjector",
}



-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when reviving from ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "doc_speed_mod", 1)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "doc_speed_mod")
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
	inst.MiniMapEntity:SetIcon( "doc.tex" )
	inst:AddTag("gentlemanscientist")
	
	--bearded (from beard component) added to pristine state for optimization
    inst:AddTag("bearded")
end
local function OnResetBeard(inst)
    inst.AnimState:ClearOverrideSymbol("beard")
end

--tune the beard economy...
local BEARD_DAYS = { 4, 8, 16 }
local BEARD_BITS = { 1, 3, 9 }

local function OnGrowShortBeard(inst)
    inst.AnimState:OverrideSymbol("beard", "beard", "beard_short")
    inst.components.beard.bits = BEARD_BITS[1]
end

local function OnGrowMediumBeard(inst)
    inst.AnimState:OverrideSymbol("beard", "beard", "beard_medium")
    inst.components.beard.bits = BEARD_BITS[2]
end

local function OnGrowLongBeard(inst)
    inst.AnimState:OverrideSymbol("beard", "beard", "beard_long")
    inst.components.beard.bits = BEARD_BITS[3]
end


-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- choose which sounds this character will play
	inst.soundsname = "wilson"
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	-- Stats	
	inst.components.health:SetMaxHealth(150)
	inst.components.hunger:SetMax(150)
	inst.components.sanity:SetMax(200)
	
	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = 1
	

	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	
	inst:AddComponent("playervoter")
	inst:AddComponent("sanityaura")
	
    inst:AddComponent("beard")
    inst.components.beard.onreset = OnResetBeard
    inst.components.beard.prize = "beardhair"
    inst.components.beard:AddCallback(BEARD_DAYS[1], OnGrowShortBeard)
    inst.components.beard:AddCallback(BEARD_DAYS[2], OnGrowMediumBeard)
    inst.components.beard:AddCallback(BEARD_DAYS[3], OnGrowLongBeard)

inst.components.sanityaura.aurafn = function(inst, observer)

if observer.prefab == "will" then

return TUNING.SANITYAURA_LARGE
 else
 return 0

end

return 0

end

	
end

return MakePlayerCharacter("doc", prefabs, assets, common_postinit, master_postinit, start_inv)
