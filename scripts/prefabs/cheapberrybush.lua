local function fn()
	local inst = SpawnPrefab("dug_raspberrybush")
	return inst
end

return Prefab("common/objects/cheapberrybush", fn)
