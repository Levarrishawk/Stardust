local ObjectManager = require("managers.object.object_manager")

republic_corvette = ScreenPlay:new {
	numberOfActs = 1;	
}

registerScreenPlay("republic_corvette", true)

function republic_corvette:start()
	 self:spawnMobiles()
	 self:spawnSceneObjects()
	 self:spawnActiveArea1()
	 self:spawnActiveArea2()
	 self:spawnActiveArea3()
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
 
 --spawnSceneObject("dungeon2", "object/soundobject/soundobject_isd_hangar.iff", -0.0, 173.8, 53.7, 480000038, math.rad(-90) )
 
  
end

function republic_corvette:spawnMobiles()

-- ISD Mobiles

	spawnMobile("dungeon2", "imperial_isd_teleporter", 200, 9.5, 173.8, 38.6, -95, 480000038)
	--hallway11
	spawnMobile("dungeon2", "stormtrooper", 200, -6.0, 175.3, -22, -90, 480000034)
	spawnMobile("dungeon2", "imperial_private", 200, 0.0, 175.3, -12.9, 180, 480000032)
	-- Tractorbeam
	spawnMobile("dungeon2", "imperial_sergeant", 200, 0.0, 177.5, -60.1, 174, 480000033)
	spawnMobile("dungeon2", "imperial_private", 200, 7.2, 175.3, -48.3, 13, 480000033)
	spawnMobile("dungeon2", "imperial_corporal", 200, -6.2, 177.3, -51.0, 74, 480000033)
	
	local pNpc = spawnMobile("dungeon2", "imperial_major", 60, 9.0, 175.3, -34.6, 0, 480000031)
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
	
  pNpc = spawnMobile("dungeon2", "special_missions_engineer", 60, 66.6, 177.6, 75.3, -15, 480000028)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile("dungeon2", "special_missions_engineer", 60, 51.2, 173.8, 75.0, -101, 480000026)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  spawnMobile("dungeon2", "r5", 200, 58.7, 173.8, 94.5, -140, 480000024)
  spawnMobile("dungeon2", "r5", 200, 68.0, 173.8, 100, -94, 480000024)
  
  spawnMobile("dungeon2", "dark_trooper", 200, 51.1, 173.8, 114.6, 34, 480000023)
  
  pNpc = spawnMobile("dungeon2", "special_missions_engineer", 60, 50.4, 173.8, 137.8, -96, 480000022)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  spawnMobile("dungeon2", "special_missions_engineer", 60, 55.1, 173.8, 134.7, 113, 480000022)
  
  pNpc = spawnMobile("dungeon2", "imperial_cadet", 60, 77.1, 173.8, 63.9, -95, 480000021)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  spawnMobile("dungeon2", "dark_trooper", 200, 77.5, 173.8, 96.7, 90, 480000017) 
  spawnMobile("dungeon2", "specialist_noncom", 200, 88.1, 173.8, 113.6, 131, 480000019)
  spawnMobile("dungeon2", "comm_operator", 200, 79.7, 173.8, 147.0, -14, 480000018)
  
  spawnMobile("dungeon2", "stormtrooper", 200, 67.3, 173.8, 134.1, -57, 480000015)
  spawnMobile("dungeon2", "stormtrooper", 200, 62.7, 173.8, 134.1, 55, 480000015)
  spawnMobile("dungeon2", "r5", 200, 66.4, 173.8, 153.6, 84, 480000015)
  
  spawnMobile("dungeon2", "imperial_officer", 200, 61.6, 173.8, 181.7, 52, 480000015)
  
  pNpc = spawnMobile("dungeon2", "imperial_major", 60, 63.5, 173.8, 201.7, 38, 480000015)
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile("dungeon2", "imperial_colonel", 60, 66.8, 173.8, 206.0, -146, 480000015)
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile("dungeon2", "imperial_cadet", 60, 59.7, 173.8, 208.7, -47, 480000015)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_first_lieutenant", 60, 60.7, 173.8, 209.4, -82, 480000015)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  spawnMobile("dungeon2", "stormtrooper", 200, 38.2, 173.8, 198.5, 85, 480000015)
  -- docking bay control undercarriage
  spawnMobile("dungeon2", "imperial_officer", 200, -6.8, 192.8, 197.2, -178, 480000016)
  
  pNpc = spawnMobile("dungeon2", "imperial_corporal", 60, -7.6, 192.3, 206.9, -5, 480000016)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 2.0, 192.3, 206.8, -2, 480000016)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_sergeant", 60, 11.5, 192.3, 206.9, -6, 480000016)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  spawnMobile("dungeon2", "r5", 200, 24.1, 192.3, 203.9, 175, 480000016)
  
  spawnMobile("dungeon2", "master_prophet_of_the_dark_side", 200, -75.9, 172.3, 245.0, 92, 480000012)
  spawnMobile("dungeon2", "imperial_officer", 200, -63.7, 172.3, 243.4, -43, 480000012)
  --Pilot briefing room
  spawnMobile("dungeon2", "imperial_officer", 200, -72.6, 172.3, 253.8, 89, 480000013)
  
  pNpc = spawnMobile("dungeon2", "imperial_general", 60, -86.4, 172.1, 266.3, 180, 480000013)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -88.7, 172.1, 264.0, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -84.8, 172.1, 264.0, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -83.5, 172.1, 264.0, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -87.6, 172.1, 261.9, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -84.8, 172.1, 261.9, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -83.5, 172.1, 261.9, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -87.6, 172.1, 259.9, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -88.7, 172.1, 259.9, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -84.8, 172.1, 259.9, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -83.5, 172.1, 259.9, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("dungeon2", "imperial_pilot", 60, -84.8, 172.1, 257.9, 0, 480000013)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("dungeon2", "imperial_officer", 60, -80.5, 172.3, 259.9, 0, 480000013)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  -- Detention
  pNpc = spawnMobile("dungeon2", "imperial_sergeant", 60, -78.7, 172.3, 321.3, 90, 480000011)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  spawnMobile("dungeon2", "stormtrooper", 60, -72.7, 172.3, 332.4, 90, 480000009)
  spawnMobile("dungeon2", "stormtrooper", 60, -55.9, 172.1, 330.9, -5, 480000008)
  -- Hyperdrive control
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 92.9, 172.8, 365.1, 90, 480000005)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 92.9, 172.8, 361.6, 90, 480000005)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 92.9, 172.8, 358.1, 90, 480000005)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 92.9, 172.8, 354.5, 90, 480000005)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 92.9, 172.8, 350.7, 90, 480000005)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("dungeon2", "imperial_major", 60, 84.6, 171.8, 355.4, -90, 480000005)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  -- mainengineering
  spawnMobile("dungeon2", "special_missions_engineer", 60, 19.9, 170.8, 364.2, -6, 480000006)
  
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 26.9, 170.6, 355.9, 90, 480000006)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  spawnMobile("dungeon2", "stormtrooper", 60, 23.4, 170.6, 389.6, -90, 480000007)
  spawnMobile("dungeon2", "stormtrooper", 60, 16.5, 170.6, 389.8, 90, 480000007)
  spawnMobile("dungeon2", "stormtrooper", 60, 18.5, 170.6, 423.2, 179, 480000007)
  
  --command deck
  spawnMobile("dungeon2", "stormtrooper", 60, 22.6, 453.6, 411.7, -85, 480000051)
  spawnMobile("dungeon2", "stormtrooper", 60, -1.9, 453.6, 412.2, 90, 480000051)
  spawnMobile("dungeon2", "stormtrooper", 60, 0.2, 453.6, 400.6, -2, 480000051)
  
  pNpc = spawnMobile("dungeon2", "imperial_officer", 60, -10.6, 453.6, 394.6, 175, 480000051)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  pNpc = spawnMobile("dungeon2", "imperial_officer", 60, 11.8, 453.6, 394.6, 175, 480000051)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  spawnMobile("dungeon2", "stormtrooper", 60, -1.7, 453.6, 369.3, 89, 480000053)
  
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 8.4, 453.6, 375.1, -176, 480000053)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 8.4, 453.6, 369.6, 0, 480000053)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 8.4, 453.6, 367.6, -176, 480000053)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "imperial_private", 60, 8.4, 453.6, 362.6, 0, 480000053)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("dungeon2", "imperial_officer", 60, -3.1, 453.6, 354.5, 175, 480000054)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  spawnMobile("dungeon2", "comm_operator", 200, -17.1, 453.7, 372.1, 94, 480000054)
  spawnMobile("dungeon2", "comm_operator", 200, -14.2, 453.7, 372.1, -94, 480000054)
  
  pNpc = spawnMobile("dungeon2", "comm_operator", 60, -21.1, 453.6, 357.6, -95, 480000054)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "comm_operator", 60, -12.0, 453.6, 360.6, 95, 480000054)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("dungeon2", "comm_operator", 60, -12.0, 453.6, 354.9, 95, 480000054)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("dungeon2", "comm_operator", 60, -11.4, 453.6, 346.6, 175, 480000054)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  spawnMobile("dungeon2", "imperial_major", 200, 9.4, 453.6, 355.6, 1, 480000055)
  spawnMobile("dungeon2", "imperial_first_lieutenant", 200, -0.1, 453.6, 339.2, 176, 480000055)
  spawnMobile("dungeon2", "stormtrooper", 200, -9.8, 453.6, 343.1, 175, 480000055)
  spawnMobile("dungeon2", "stormtrooper", 200, 9.6, 453.6, 343.1, 175, 480000055)
  
  spawnMobile("dungeon2", "imperial_officer", 200, 3.5, 451.4, 329.5, -7, 480000055)
  spawnMobile("dungeon2", "imperial_corporal", 200, 3.5, 451.4, 328.4, -178, 480000055)
  spawnMobile("dungeon2", "imperial_sergeant", 200, 3.5, 451.4, 325.8, -7, 480000055)
  
  spawnMobile("dungeon2", "imperial_private", 200, 5.8, 451.4, 326.3, 125, 480000055)
  spawnMobile("dungeon2", "imperial_officer", 200, 6.5, 451.4, 328.3, 103, 480000055)
  
  spawnMobile("dungeon2", "imperial_officer", 200, -3.5, 451.4, 329.5, -7, 480000055)
  spawnMobile("dungeon2", "imperial_corporal", 200, -3.5, 451.4, 328.4, -178, 480000055)
  spawnMobile("dungeon2", "imperial_sergeant", 200, -3.5, 451.4, 325.8, -7, 480000055)
  
  spawnMobile("dungeon2", "imperial_officer", 200, -6.8, 451.4, 331.1, -96, 480000055)
  spawnMobile("dungeon2", "imperial_officer", 200, -5.9, 451.4, 326.4, -141, 480000055)
  
end

function republic_corvette:spawnActiveArea1()
  local pSpawnArea1 = spawnSceneObject("dungeon2", "object/active_area.iff", -2999, 173, -2946, 0, 480000038)
    
  if (pSpawnArea1 ~= nil) then
    local activeArea1 = LuaActiveArea(pSpawnArea1)
          activeArea1:setCellObjectID(480000038)
          activeArea1:setRadius(512)
          createObserver(ENTEREDAREA, "republic_corvette", "notifySpawnArea1", pSpawnArea1)
          --createObserver(EXITEDAREA, "ChandrilTechScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function republic_corvette:notifySpawnArea1(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      --player:sendSystemMessage("ATTENTION: Worker Revolt in Progress on Level Three.  Security to Level Three.")
      player:playMusicMessage("sound/mus_isd_hangar.snd")
      
      end
    return 0    
  end)
end

function republic_corvette:spawnActiveArea2()
  local pSpawnArea2 = spawnSceneObject("dungeon2", "object/active_area.iff", -3086, 173, -2738, 0, 480000013)
    
  if (pSpawnArea2 ~= nil) then
    local activeArea2 = LuaActiveArea(pSpawnArea1)
          activeArea2:setCellObjectID(480000013)
          activeArea2:setRadius(512)
          createObserver(ENTEREDAREA, "republic_corvette", "notifySpawnArea2", pSpawnArea2)
          --createObserver(EXITEDAREA, "ChandrilTechScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function republic_corvette:notifySpawnArea2(pActiveArea2, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      --player:sendSystemMessage("ATTENTION: Worker Revolt in Progress on Level Three.  Security to Level Three.")
      player:playMusicMessage("sound/mus_isd_briefing.snd")
      
      end
    return 0    
  end)
end

function republic_corvette:spawnActiveArea3()
  local pSpawnArea3 = spawnSceneObject("dungeon2", "object/active_area.iff", -3000, 453, -2672, 0, 480000055)
    
  if (pSpawnArea3 ~= nil) then
    local activeArea3 = LuaActiveArea(pSpawnArea1)
          activeArea3:setCellObjectID(480000055)
          activeArea3:setRadius(512)
          createObserver(ENTEREDAREA, "republic_corvette", "notifySpawnArea3", pSpawnArea3)
          --createObserver(EXITEDAREA, "ChandrilTechScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function republic_corvette:notifySpawnArea3(pActiveArea3, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      --player:sendSystemMessage("ATTENTION: Worker Revolt in Progress on Level Three.  Security to Level Three.")
      player:playMusicMessage("sound/mus_isd_hangar2.snd")
      
      end
    return 0    
  end)
end


