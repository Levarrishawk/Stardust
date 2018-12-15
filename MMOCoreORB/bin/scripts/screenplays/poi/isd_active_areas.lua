local ObjectManager = require("managers.object.object_manager")

isd_active_areas = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "isd_active_areas"
}

registerScreenPlay("isd_active_areas", true)

function isd_active_areas:start()
  if (isZoneEnabled("dungeon2")) then
    self:spawnSceneObjects()
    self:spawnActiveArea1()
  end
end

function isd_active_areas:spawnSceneObjects()

--  spawnSceneObject("chandrila", "object/tangible/terminal/terminal_elevator_up.iff", 75.49, -50, 59.1604, 35792158, math.rad(-90) )
  
end


function isd_active_areas:spawnActiveArea1()
  local pSpawnArea1 = spawnSceneObject("dungeon2", "object/active_area.iff", -2999, 173, -2946, 0, 480000038)
    
  if (pSpawnArea1 ~= nil) then
    local activeArea1 = LuaActiveArea(pSpawnArea1)
          activeArea1:setCellObjectID(480000038)
          activeArea1:setRadius(512)
          createObserver(ENTEREDAREA, "isd_active_areas", "notifySpawnArea1", pSpawnArea1)          
      end
end

function isd_active_areas:notifySpawnArea1(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then   
      player:playMusicMessage("sound/mus_isd_hangar.snd")
      
      end
    return 0    
  end)
end

