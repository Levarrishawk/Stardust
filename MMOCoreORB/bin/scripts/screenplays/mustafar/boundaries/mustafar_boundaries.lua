local ObjectManager = require("managers.object.object_manager")

mustafar_boundaries = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "mustafar_boundaries"
}
  
registerScreenPlay("mustafar_boundaries", true)
  
function mustafar_boundaries:start()
  if (isZoneEnabled("mustafar")) then
      self:spawnActiveAreaSe1()
      self:spawnActiveAreaSe2()
   end   
end


  
function mustafar_boundaries:spawnActiveAreaSe1()
  local pSpawnArea = spawnSceneObject("mustafar", "object/active_area.iff", 587, 170, -196, 0, 0, 0, 0, 0)
    
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSe", pSpawnArea)          
      end
end

function mustafar_boundaries:spawnActiveAreaSe2()
  local pSpawnArea = spawnSceneObject("mustafar", "object/active_area.iff", 448, 226, -404, 0, 0, 0, 0, 0)
    
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSe", pSpawnArea)          
      end
end
 
--Southeast Exfiltration Teleport.
function mustafar_boundaries:notifySpawnAreaSe(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(197, 121, -214, 0)
      end
    return 0    
  end)
end





