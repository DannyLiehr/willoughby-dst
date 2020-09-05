local require = GLOBAL.require
local StaticLayout = GLOBAL.require("map/static_layout")
require("map/level")
require("map/tasks")
GLOBAL.require("map/terrain")


AddRoomPreInit("Clearing", function(room) 
room.contents.distributeprefabs.raspberrybush = 0.5
 end)

AddRoomPreInit("DeepDeciduous", function(room) 
--room.contents.distributeprefabs.raspberrybush = .14/2
 end)

AddRoomPreInit("BGDeciduous", function(room) 
--room.contents.distributeprefabs.raspberrybush = .12/2
 end)

AddRoomPreInit("DeciduousMole", function(room) 
room.contents.distributeprefabs.raspberrybush = .02/2
end)

AddRoomPreInit("MolesvilleDeciduous", function(room) 
--room.contents.distributeprefabs.raspberrybush = .01/2
end)

AddRoomPreInit("DeciduousClearing", function(room) 
--room.contents.distributeprefabs.raspberrybush = .05/2
end)

AddRoomPreInit("MagicalDeciduous", function(room) 
--room.contents.distributeprefabs.raspberrybush = .08/2
end)

AddRoomPreInit("PondyGrass", function(room) 
room.contents.distributeprefabs.raspberrybush = .06/2
end)

AddRoomPreInit("BGDeepForest", function(room) 
--room.contents.distributeprefabs.raspberrybush = .12/2
end)

AddRoomPreInit("BGForest", function(room) 
--room.contents.distributeprefabs.raspberrybush = .08/2
end)

AddRoomPreInit("BGGrass", function(room) 
--room.contents.distributeprefabs.raspberrybush = .08/2
end)

AddRoomPreInit("BGGrassBurnt", function(room) 
end)

AddRoomPreInit("BGBadlands", function(room)
end)

AddRoomPreInit("Lightning", function(room)
end)

AddRoomPreInit("Badlands", function(room)
end)

AddRoomPreInit("HoundyBadlands", function(room)
end)

AddRoomPreInit("BuzzardyBadlands", function(room)
end)
GLOBAL.terrain.filter.raspberrybush = {GLOBAL.GROUND.ROAD, GLOBAL.GROUND.WOODFLOOR, GLOBAL.GROUND.CARPET, GLOBAL.GROUND.CHECKER, GLOBAL.GROUND.ROCKY, GLOBAL.GROUND.MARSH}