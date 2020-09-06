AddIngredientValues({"banato","bakedbanato"}, {veggie=1})
AddIngredientValues({"sap","maplesyrup","maplepop"}, {sweetener=1})
AddIngredientValues({"raspberries","cooked_raspberries"}, {fruit=0.5})
	
	
	local poutine =
	{
		name = "poutine",
		test = function(cooker, names, tags) return names.banato and names.banato > 1 and tags.meat and tags.egg and (not tags.inedible or tags.fruit) end,
		priority = 15,
		weight = 1,
		foodtype = "GENERIC",
		health = -TUNING.HEALING_TINY,
		hunger = TUNING.CALORIES_HUGE,
		perishtime = TUNING.PERISH_SLOW,
		sanity = TUNING.SANITY_MEDIUM,
		temperature = TUNING.HOT_FOOD_BONUS_TEMP,
		temperatureduration = TUNING.FOOD_TEMP_LONG,
		cooktime = 1,
	}
	AddCookerRecipe("cookpot",poutine)

	local banatobread =
	{
		name = "banatobread",
		test = function(cooker, names, tags) return names.banato and names.banato > 1 and names.corn and (not tags.inedible) end,
		priority = 15,
		weight = 1,
		foodtype = "GENERIC",
		health = TUNING.HEALING_TINY,
		hunger = TUNING.CALORIES_MEDIUM,
		perishtime = TUNING.PERISH_FAST,
		sanity = TUNING.SANITY_SMALL,
		cooktime = 1,
	}
	AddCookerRecipe("cookpot",banatobread)
		
	local raspberrymuffin =
	{
		name = "raspberrymuffin",
		test = function(cooker, names, tags) return names.raspberry and names.raspberry > 1 and names.honey and tags.fruit and (not tags.inedible or tags.meat) end,
		priority = 15,
		weight = 1,
		foodtype = "GENERIC",
		health = TUNING.HEALING_TINY,
		hunger = TUNING.CALORIES_MEDIUM,
		perishtime = TUNING.PERISH_FAST,
		sanity = TUNING.SANITY_SMALL,
		cooktime = .5,
	}
	AddCookerRecipe("cookpot",raspberrymuffin)

	local maplesyrup =
	{
		name = "maplesyrup",
		test = function(cooker, names, tags) return names.sap and names.sap and names.sap and names.sap end,
		priority = 20,
		weight = 1,
		foodtype = "GENERIC",
		health = TUNING.HEALING_TINY,
		hunger = TUNING.CALORIES_MEDIUM,
		perishtime = TUNING.PERISH_PRESERVED,
		sanity = TUNING.SANITY_MED,
		cooktime = 1,
	}
	AddCookerRecipe("cookpot",maplesyrup)

	local maplepop =
	{
		name = "maplepop",
		test = function(cooker, names, tags) return names.twigs and names.maplesyrup and names.maplesyrup and tags.fruit end,
		priority = 17,
		weight = 1,
		foodtype = "GENERIC",
		health = TUNING.HEALING_TINY,
		hunger = TUNING.CALORIES_MEDIUM,
		perishtime = TUNING.PERISH_PRESERVED,
		sanity = TUNING.SANITY_MED,
		cooktime = 1,
	}
	AddCookerRecipe("cookpot",maplepop)
	
	local popspear =
	{
		name = "popspear",
		test = function(cooker, names, tags) return names.maplepop and names.maplepop and names.maplepop and names.maplepop end,
		priority = 20,
		weight = 1,
		foodtype = "GENERIC",
		health = TUNING.HEALING_TINY,
		hunger = TUNING.CALORIES_MEDIUM,
		perishtime = TUNING.PERISH_PRESERVED,
		sanity = TUNING.SANITY_MED,
		cooktime = 1,
	}
	AddCookerRecipe("cookpot",popspear)
	
	local pumpkinpie =
	{
		name = "pumpkinpie",
		test = function(cooker, names, tags) return names.pumpkin and names.maplesyrup and tags.sweetener and tags.veggie end,
		priority = 20,
		weight = 1,
		foodtype = "GENERIC",
		health = TUNING.HEALING_TINY,
		hunger = TUNING.CALORIES_MEDIUM,
		perishtime = TUNING.PERISH_PRESERVED,
		sanity = TUNING.SANITY_MED,
		cooktime = .75,
	}
	AddCookerRecipe("cookpot",pumpkinpie)