republic_corvette = ScreenPlay:new {
	numberOfActs = 1;	
}

registerScreenPlay("republic_corvette", true)

function republic_corvette:start()
	 self:spawnMobiles()
	 self:spawnSceneObjects()
end

function republic_corvette:spawnSceneObjects()

 spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 5, 0, -13.4, 480000176, math.rad(180) )
 spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 5, 12, -13.4, 480000176, math.rad(180) )
 spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 0, -12, 37.67, 480000177, math.rad(180) )
 spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 0, 0, 37.67, 480000177, math.rad(180) )
 spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 18, -24, 120.6, 480000214, math.rad(180) )
 spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 18, -12, 120.6, 480000214, math.rad(180) )
 spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", -18, -12, 120.67, 480000215, math.rad(180) )
 spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", -18, 0, 120.67, 480000215, math.rad(180) )

end

function republic_corvette:spawnMobiles()

-- Mobiles

	--spawnMobile("kaas", "rodian_thug", 200, 2866.6, 124, 3874.7, 121, 0)
	
	

end
