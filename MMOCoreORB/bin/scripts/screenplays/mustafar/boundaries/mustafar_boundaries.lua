local ObjectManager = require("managers.object.object_manager")

mustafar_boundaries = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "mustafar_boundaries"
}
  
registerScreenPlay("mustafar_boundaries", true)
  
function mustafar_boundaries:start()
  if (isZoneEnabled("mustafar")) then
      --southeast
      self:spawnActiveAreaSe1()
      self:spawnActiveAreaSe2()
      self:spawnActiveAreaSe3()
      --south
      self:spawnActiveAreaSo1()
      self:spawnActiveAreaSo2()
      self:spawnActiveAreaSo3()
      self:spawnActiveAreaSo4()
      self:spawnActiveAreaSo5()
      self:spawnActiveAreaSo6()
      self:spawnActiveAreaSo7()
      self:spawnActiveAreaSo8()
      self:spawnActiveAreaSo9()
      self:spawnActiveAreaSo10()
      self:spawnActiveAreaSo11()
      self:spawnActiveAreaSo12()
      self:spawnActiveAreaSo13()
      self:spawnActiveAreaSo14()
      self:spawnActiveAreaSo15()
      self:spawnActiveAreaSo16()
      self:spawnActiveAreaSo17()
      self:spawnActiveAreaSo18()
      self:spawnActiveAreaSo19()
      self:spawnActiveAreaSo20()
      self:spawnActiveAreaSo21()
      self:spawnActiveAreaSo22()
      self:spawnActiveAreaSo23()
      self:spawnActiveAreaSo24()
      self:spawnActiveAreaSo25()
      self:spawnActiveAreaSo26()
      self:spawnActiveAreaSo27()
      --west
      
   end   
end

--southeast
  
function mustafar_boundaries:spawnActiveAreaSe1()
  local pAreaSe1 = spawnSceneObject("mustafar", "object/active_area.iff", 587, 170, -196, 0, 0, 0, 0, 0)
    
  if (pAreaSe1 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSe1)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSe", pAreaSe1)          
      end
end

function mustafar_boundaries:spawnActiveAreaSe2()
  local pAreaSe2 = spawnSceneObject("mustafar", "object/active_area.iff", 448, 226, -404, 0, 0, 0, 0, 0)
    
  if (pAreaSe2 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSe2)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(275)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSe", pAreaSe2)          
      end
end

function mustafar_boundaries:spawnActiveAreaSe3()
  local pAreaSe3 = spawnSceneObject("mustafar", "object/active_area.iff", 139, 150, -504, 0, 0, 0, 0, 0)
    
  if (pAreaSe3 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSe3)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(275)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSe", pAreaSe3)          
      end
end

-- south

function mustafar_boundaries:spawnActiveAreaSo1()
  local pAreaSo1 = spawnSceneObject("mustafar", "object/active_area.iff", -121, 240, -604, 0, 0, 0, 0, 0)
    
  if (pAreaSo1 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo1)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(260)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo1", pAreaSo1)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo2()
  local pAreaSo2 = spawnSceneObject("mustafar", "object/active_area.iff", -374, 251, -604, 0, 0, 0, 0, 0)
    
  if (pAreaSo2 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo2)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(260)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo1", pAreaSo2)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo3()
  local pAreaSo3 = spawnSceneObject("mustafar", "object/active_area.iff", -374, 251, -604, 0, 0, 0, 0, 0)
    
  if (pAreaSo3 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo3)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo2", pAreaSo3)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo4()
  local pAreaSo4 = spawnSceneObject("mustafar", "object/active_area.iff", -374, 251, -604, 0, 0, 0, 0, 0)
    
  if (pAreaSo4 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo4)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo2", pAreaSo4)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo5()
  local pAreaSo5 = spawnSceneObject("mustafar", "object/active_area.iff", -374, 251, -604, 0, 0, 0, 0, 0)
    
  if (pAreaSo5 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo5)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo3", pAreaSo5)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo6()
  local pAreaSo6 = spawnSceneObject("mustafar", "object/active_area.iff", -1396, 373, -583, 0, 0, 0, 0, 0)
    
  if (pAreaSo6 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo6)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo3", pAreaSo6)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo7()
  local pAreaSo7 = spawnSceneObject("mustafar", "object/active_area.iff", -1648, 469, -592, 0, 0, 0, 0, 0)
    
  if (pAreaSo7 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo7)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo4", pAreaSo7)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo8()
  local pAreaSo8 = spawnSceneObject("mustafar", "object/active_area.iff", -1900, 217, -616, 0, 0, 0, 0, 0)
    
  if (pAreaSo8 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo8)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo4", pAreaSo8)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo9()
  local pAreaSo9 = spawnSceneObject("mustafar", "object/active_area.iff", -2153, 324, -650, 0, 0, 0, 0, 0)
    
  if (pAreaSo9 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo9)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo5", pAreaSo9)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo10()
  local pAreaSo10 = spawnSceneObject("mustafar", "object/active_area.iff", -2394, 235, -731, 0, 0, 0, 0, 0)
    
  if (pAreaSo10 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo10)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo5", pAreaSo10)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo11()
  local pAreaSo11 = spawnSceneObject("mustafar", "object/active_area.iff", -2648, 261, -715, 0, 0, 0, 0, 0)
    
  if (pAreaSo11 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo11)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo6", pAreaSo11)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo12()
  local pAreaSo12 = spawnSceneObject("mustafar", "object/active_area.iff", -2900, 317, -731, 0, 0, 0, 0, 0)
    
  if (pAreaSo12 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo12)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo6", pAreaSo12)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo13()
  local pAreaSo13 = spawnSceneObject("mustafar", "object/active_area.iff", -3150, 311, -695, 0, 0, 0, 0, 0)
    
  if (pAreaSo13 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo13)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo7", pAreaSo13)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo14()
  local pAreaSo14 = spawnSceneObject("mustafar", "object/active_area.iff", -3397, 315, -652, 0, 0, 0, 0, 0)
    
  if (pAreaSo14 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo14)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo7", pAreaSo14)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo15()
  local pAreaSo15 = spawnSceneObject("mustafar", "object/active_area.iff", -3650, 380, -618, 0, 0, 0, 0, 0)
    
  if (pAreaSo15 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo15)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo8", pAreaSo15)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo16()
  local pAreaSo16 = spawnSceneObject("mustafar", "object/active_area.iff", -3900, 516, -582, 0, 0, 0, 0, 0)
    
  if (pAreaSo16 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo16)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo9", pAreaSo16)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo17()
  local pAreaSo17 = spawnSceneObject("mustafar", "object/active_area.iff", -4139, 845, -520, 0, 0, 0, 0, 0)
    
  if (pAreaSo17 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo17)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo9", pAreaSo17)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo18()
  local pAreaSo18 = spawnSceneObject("mustafar", "object/active_area.iff", -4391, 601, -564, 0, 0, 0, 0, 0)
    
  if (pAreaSo18 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo18)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo10", pAreaSo18)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo19()
  local pAreaSo19 = spawnSceneObject("mustafar", "object/active_area.iff", -4644, 262, -567, 0, 0, 0, 0, 0)
    
  if (pAreaSo19 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo19)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo10", pAreaSo19)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo20()
  local pAreaSo20 = spawnSceneObject("mustafar", "object/active_area.iff", -4887, 211, -595, 0, 0, 0, 0, 0)
    
  if (pAreaSo20 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo20)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo11", pAreaSo20)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo21()
  local pAreaSo21 = spawnSceneObject("mustafar", "object/active_area.iff", -5139, 296, -577, 0, 0, 0, 0, 0)
    
  if (pAreaSo21 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo21)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo11", pAreaSo21)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo22()
  local pAreaSo22 = spawnSceneObject("mustafar", "object/active_area.iff", -5393, 321, -606, 0, 0, 0, 0, 0)
    
  if (pAreaSo22 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo22)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo12", pAreaSo22)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo23()
  local pAreaSo23 = spawnSceneObject("mustafar", "object/active_area.iff", -5645, 323, -640, 0, 0, 0, 0, 0)
    
  if (pAreaSo23 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo23)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo12", pAreaSo23)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo24()
  local pAreaSo24 = spawnSceneObject("mustafar", "object/active_area.iff", -5894, 309, -682, 0, 0, 0, 0, 0)
    
  if (pAreaSo24 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo24)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo13", pAreaSo24)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo25()
  local pAreaSo25 = spawnSceneObject("mustafar", "object/active_area.iff", -6148, 290, -697, 0, 0, 0, 0, 0)
    
  if (pAreaSo25 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo25)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo13", pAreaSo25)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo26()
  local pAreaSo26 = spawnSceneObject("mustafar", "object/active_area.iff", -6402, 623, -688, 0, 0, 0, 0, 0)
    
  if (pAreaSo26 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo26)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo13", pAreaSo26)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo27()
  local pAreaSo27 = spawnSceneObject("mustafar", "object/active_area.iff", -6643, 751, -678, 0, 0, 0, 0, 0)
    
  if (pAreaSo27 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo27)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo13", pAreaSo27)          
      end
end

-- west



----------------------------------------------------------------------------------------------------------------------------------------
--  ---------------------- EXFIL Points ------------------------------------------------------------------------------------------------
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
-- south 1
function mustafar_boundaries:notifySpawnAreaSo1(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-133, 175, -272, 0)
      end
    return 0    
  end)
end
-- south2
function mustafar_boundaries:notifySpawnAreaSo2(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-658, 104, -268, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo3(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-1117, 102, -199, 0)
      end
    return 0    
  end)
end
--
function mustafar_boundaries:notifySpawnAreaSo4(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-1678, 101, -87, 0)
      end
    return 0    
  end)
end
--
function mustafar_boundaries:notifySpawnAreaSo5(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-2258, 103, -276, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo6(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-2694, 103, -291, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo7(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-3099, 103, -335, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo8(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-3593, 116, -129, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo9(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-3918, 3, -188, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo10(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-4409, 3, -50, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo11(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-4943, 3, -134, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo12(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-5436, 4, -130, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo13(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-5826, 25, -100, 0)
      end
    return 0    
  end)
end
