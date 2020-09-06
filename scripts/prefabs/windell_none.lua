local assets =
{
	Asset( "ANIM", "anim/windell.zip" ),
	Asset( "ANIM", "anim/ghost_windell_build.zip" ),
}

local skins =
{
	normal_skin = "windell",
	ghost_skin = "ghost_windell_build",
}

local base_prefab = "windell"

local tags = {"WINDELL", "CHARACTER"}

return CreatePrefabSkin("windell_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})