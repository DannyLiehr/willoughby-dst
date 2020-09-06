local assets =
{
	Asset( "ANIM", "anim/doc.zip" ),
	Asset( "ANIM", "anim/ghost_doc_build.zip" ),
}

local skins =
{
	normal_skin = "doc",
	ghost_skin = "ghost_doc_build",
}

local base_prefab = "doc"

local tags = {"DR.HIGGSBURY", "CHARACTER"}

return CreatePrefabSkin("doc_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})