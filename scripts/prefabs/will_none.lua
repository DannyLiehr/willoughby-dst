local assets =
{
	Asset( "ANIM", "anim/will.zip" ),
	Asset( "ANIM", "anim/ghost_will_build.zip" ),
}

local skins =
{
	normal_skin = "will",
	ghost_skin = "ghost_will_build",
	werebunny_skin = "werebunny_build",
}

local base_prefab = "will"

local tags = {"WILLOUGHBY", "CHARACTER"}

return CreatePrefabSkin("will_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})