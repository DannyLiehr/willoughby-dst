-- By making new prefabs that are exactly the same as their counterparts, we can make new unique recipes that return the same thing
-- We will copy the basics, change the science requirements, and add builder tags so only wanda has these

local mycharacterprefab = "will"

local AllRecipes = 	GLOBAL.AllRecipes
local RECIPETABS = GLOBAL.RECIPETABS
local STRINGS = GLOBAL.STRINGS
local TECH = GLOBAL.TECH


-- We give the attributes to our character
AddPrefabPostInit(mycharacterprefab, function(inst)
	-- Adding the new
	inst:AddTag("bumpkinfarmer")
	-- Removing the old
	inst:DoTaskInTime(0, forgetOldRecipes)
end)