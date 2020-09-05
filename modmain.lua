PrefabFiles = {
	"will",
	"will_none",
	"bumpkinfarm",
	"wilson",
	"trapper_hat",
	"mountie_hat",
	"poutine",
	"banato",
	"bakedbanato",
	"icelettuce",
	"banatobread",
	"raspberrybush",
	"dug_raspberrybush",
	"raspberries",
	"raspberrymuffin",
	"cheapberrybush",
	-- "doc",
	-- "doc_none",
	"missing_post",
	"fmbirds",
	"newfeathers",
	"dream_catcher",
	"windell",
	"windell_none",
	"sap",
	"maplesyrup",
	"maplepop",
	"popspear",
	"leaf",
	"maplelantern",
	"potions",
	"pumpkinpie",
	"deciduoustrees",
	"bbq"
}
modimport("scripts/engine/assets.lua")

STRINGS = GLOBAL.STRINGS
RECIPETABS = GLOBAL.RECIPETABS
Recipe = GLOBAL.Recipe
Ingredient = GLOBAL.Ingredient
TECH = GLOBAL.TECH
local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- Relocate to a file with all of the strings
modimport("scripts/strings.lua")
--
STRINGS.CHARACTERS.WILL = require "speech_will"
STRINGS.CHARACTERS.WINDELL = require "speech_windell"
STRINGS.CHARACTERS.DOC = require "speech_doc"

modimport("scripts/announcestrings.lua")
modimport("scripts/itemstrings.lua")

modimport("scripts/engine/recipes.lua")
modimport("scripts/engine/cookpot_recipes.lua")
modimport("scripts/engine/prefab_postinits.lua")
modimport("scripts/engine/sound_remaps.lua")

AddMinimapAtlas("images/map_icons/will.xml")
AddMinimapAtlas("images/map_icons/windell.xml")
AddMinimapAtlas("images/map_icons/doc.xml")
AddMinimapAtlas("images/minimap/bumpkinfarm.xml")

AddModCharacter("will", "MALE")
-- AddModCharacter("doc", "MALE")
-- AddModCharacter("windell", "MALE")
-- Windell will be arriving soon...

    GLOBAL.Winter_Grow = (1)
    local b_seeds = (1)
