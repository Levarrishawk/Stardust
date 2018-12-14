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

 -- Star Destroyer Objects
 spawnSceneObject("dungeon2", "object/static/vehicle/static_lambda_shuttle.iff", 21.5, 173.8, 44.5, 480000038, math.rad(-90) )
 spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_event_buffs.iff", -11.8, 175, -33.0, 480000035, math.rad(90) )
 
  
end

function republic_corvette:spawnMobiles()

-- ISD Mobiles

	spawnMobile("dungeon2", "imperial_isd_teleporter", 200, 9.5, 173.8, 38.6, -95, 480000038)
	--hallway11
	spawnMobile("dungeon2", "stormtrooper", 200, -6.0, 175.3, -22, -90, 480000034)
	spawnMobile("dungeon2", "protocol_droid_3p0_silver", 200, 0.0, 175.3, -12.9, 180, 480000032)
	-- Tractorbeam
	spawnMobile("dungeon2", "imperial_lieutenant", 200, 0.0, 177.5, -60.1, 174, 480000033)
	spawnMobile("dungeon2", "imperial_private", 200, 7.2, 175.3, -48.3, 13, 480000033)
	spawnMobile("dungeon2", "imperial_sergeant", 200, -6.2, 177.3, -51.0, 74, 480000033)
	
	local pNpc = spawnMobile("dungeon2", "imperial_captain", 60, 9.0, 175.3, -34.6, 0, 480000031)
  self:setMoodString(pNpc, "npc_sitting_chair")
  -- Hallway09
  spawnMobile("dungeon2", "stormtrooper", 200, 6.3, 175.3, -22.8, 90, 480000030)
  --hallway13
  spawnMobile("dungeon2", "stormtrooper", 200, -69.3, 173.8, 31.6, 90, 480000037)
  -- hallway06
  spawnMobile("dungeon2", "stormtrooper", 200, 69.3, 173.8, 31.6, -90, 480000027)
  --secondaryhangar
  spawnMobile("dungeon2", "stormtrooper", 200, -23.4, 173.8, 3.2, 45, 480000038)
  spawnMobile("dungeon2", "stormtrooper", 200, 23.4, 173.8, 3.2, -45, 480000038)
	

end
