-------------------------------------------------------
--Custom recipes
	local CHARACTER_INGREDIENT = GLOBAL.CHARACTER_INGREDIENT
	local AllRecipes = GLOBAL.AllRecipes
	local Ingredient = GLOBAL.Ingredient
	local RECIPETABS = GLOBAL.RECIPETABS
	local TECH = GLOBAL.TECH
	local STRINGS = GLOBAL.STRINGS
	local wilsondoctor_tab = AddRecipeTab("Medicine", 1, GLOBAL.resolvefilepath("images/hud/wilsontab.xml"), "wilsontab.tex", "gentlemanscientist")
	local bunny_tab = AddRecipeTab("Bumpkin", 1, GLOBAL.resolvefilepath("images/hud/bunnytab.xml"), "bunnytab.tex", "bumpkinfarmer")
	
--WILLOUGHBY SPECIFIC RECIPES--
AddRecipe("bumpkinfarm", {Ingredient("cutstone", 2),Ingredient("poop", 8),Ingredient("cutgrass", 12)},bunny_tab, TECH.SCIENCE_ONE, "bumpkinfarm_placer", 
nil, nil, nil,"bumpkinfarmer","images/inventoryimages/bumpkinfarm.xml", "bumpkinfarm.tex")

AddRecipe("cheapberrybush", {Ingredient("twigs", 2),Ingredient("poop", 1),Ingredient("berries", 12)},bunny_tab, TECH.SCIENCE_TWO, 
nil, nil, nil, nil, "bumpkinfarmer", "images/inventoryimages/raspberrybushrecipe.xml", "raspberrybushrecipe.tex")
--ALL CHARACTER RECIPES--
--[[AddRecipe("trapper_hat", {Ingredient("pigskin", 3),Ingredient("beefalowool", 4),feather_loonhat},RECIPETABS.DRESS, TECH.SCIENCE_ONE, 
nil, nil, nil, nil,nil, "images/inventoryimages/trapper_hat.xml", "trapper_hat.tex")]]--
AddRecipe("trapper_hat", {Ingredient("pigskin", 3),Ingredient("beefalowool", 4),Ingredient("feather_loon", 2,"images/inventoryimages/feather_loon.xml")},RECIPETABS.DRESS, TECH.SCIENCE_ONE, 
nil, nil, nil, nil,nil, "images/inventoryimages/trapper_hat.xml", "trapper_hat.tex")

AddRecipe("maplelantern", {Ingredient("twigs", 6),Ingredient("torch", 1),Ingredient("leaf", 4,"images/inventoryimages/leaf.xml")},RECIPETABS.TOWN, TECH.SCIENCE_ONE, "maplelantern_placer", nil, nil, nil, nil, "images/inventoryimages/leaf.xml", "leaf.tex")

AddRecipe("bbq", {Ingredient("charcoal", 3),Ingredient("cutstone", 3),Ingredient("heatrock", 1)},RECIPETABS.FARM, TECH.SCIENCE_ONE, "bbq_placer", nil, nil, nil,nil, "images/inventoryimages/bbq.xml", "bbq.tex")

--LOST RECIPES--
AddRecipe("missing_post", {Ingredient("papyrus", 2),Ingredient("twigs", 4)}, nil, TECH.LOST, nil, nil, nil, nil, nil, nil, nil)

--WILSON SPECIFIC RECIPES--
AddRecipe("green_potion", {Ingredient("petals", 6),Ingredient("cutgrass", 6),Ingredient(CHARACTER_INGREDIENT.SANITY, 20)}, 
wilsondoctor_tab, TECH.SCIENCE_ONE, nil, nil, nil, nil, "gentlemanscientist", "images/inventoryimages/green_potion.xml")
AddRecipe("elixir",{Ingredient("raspberry", 8,"images/inventoryimages/raspberries.xml"),Ingredient("honey", 4),Ingredient ("spidergland", 1)},
wilsondoctor_tab, TECH.SCIENCE_ONE, nil, nil, nil, nil, "gentlemanscientist",
"images/inventoryimages/elixir.xml")
AddRecipe("ice_potion",{Ingredient("ice", 8),Ingredient("petals", 1)},
wilsondoctor_tab, TECH.SCIENCE_ONE, nil, nil, nil, nil, "gentlemanscientist",
"images/inventoryimages/ice_potion.xml")
AddRecipe("yellow_potion", {Ingredient("maplesyrup", 1,"images/inventoryimages/maplesyrup.xml"),Ingredient("carrot", 2)}, 
wilsondoctor_tab, TECH.SCIENCE_ONE, nil, nil, nil, nil, "gentlemanscientist", "images/inventoryimages/yellow_potion.xml")
AddRecipe("orange_potion", {Ingredient("goldnugget",4),Ingredient("flint", 2)}, 
wilsondoctor_tab, TECH.SCIENCE_ONE, nil, nil, nil, nil, "gentlemanscientist", "images/inventoryimages/orange_potion.xml")
AddRecipe("fire_potion", {Ingredient("torch",1),Ingredient("cutgrass", 2), Ingredient("twigs",2)}, 
wilsondoctor_tab, TECH.SCIENCE_ONE, nil, nil, nil, nil, "gentlemanscientist", "images/inventoryimages/fire_potion.xml")

--WINDELL SPECIFIC RECIPES--
AddRecipe("dream_catcher", {Ingredient("twigs", 10),Ingredient("silk", 1),Ingredient("feather_loon", 4,"images/inventoryimages/feather_loon.xml")},RECIPETABS.TOWN, TECH.SCIENCE_ONE, "dream_catcher_placer", 
nil, nil, nil,"mountie","images/inventoryimages/dream_catcher.xml", "dream_catcher.tex")
--[[AddRecipe("inuksuk", {Ingredient("rocks", 8)},RECIPETABS.TOWN, TECH.NONE, "inuksuk_placer", 
nil, nil, nil,"mountie","images/inventoryimages/inuksuk.xml", "inuksuk.tex")]]