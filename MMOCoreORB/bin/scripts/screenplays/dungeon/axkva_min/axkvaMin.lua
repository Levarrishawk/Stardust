-- Axkva Instanced Dungeon: by Levarris for use with Stardust.
local ObjectManager = require("managers.object.object_manager")

axkvaMin = ScreenPlay:new {
	

}

registerScreenPlay("axkvaMin", true)

function axkvaMin:start()
	if (isZoneEnabled("dathomir")) then
    self:spawnBossRoomOneActiveArea()
    writeData("axkvaMin:trashSpawnState", 0)
    writeData("axkvaMin:bossOneSpawnState", 0)
    writeData("axkvaMin:bossOneTrashState", 0)
    writeData("axkvaMin:bossOneDead", 0)
    writeData("axkvaMin:bossTwoDead", 0) 
    writeData("axkvaMin:bossThreeDead", 0) 
    writeData("axkvaMin:bossFourDead", 0) 
    writeData("axkvaMin:bossFiveDead", 0)   
	end
end


function axkvaMin:activate(pPlayer)
	if (not isZoneEnabled("dathomir")) then
		CreatureObject(pPlayer):sendSystemMessage("That area is currently unavailable. Please try again later.") 
		return false
	end
	
	if (readData("axkvaMin:occupiedState") == 1) then
	   CreatureObject(pPlayer):sendSystemMessage("That instance is currently occupied, please try a different instance.")
	   return false
	end   
	   
  
  local paxkvaMin = self:getBuildingObject()
  
  writeData("axkvaMinStartTime", os.time()) 
  
  CreatureObject(pPlayer):sendSystemMessage("Instance Started: You have 60 minutes remaining to complete the instance.") 
  createEvent(1000, "axkvaMin", "transportPlayer", pPlayer, "")
     
  createObserver(EXITEDBUILDING, "axkvaMin", "resetInstanceA", paxkvaMin, "")
  
	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 50) and not SceneObject(pMember):isAiAgent() then
				self:sendAuthorizationSui(pMember, pPlayer)
			end
		end
	end
	
	createEvent(100, "axkvaMin", "spawnCheck", pPlayer, "")
	createEvent(100, "axkvaMin", "spawnBossOneCheck", pPlayer, "")
	
	writeData("axkvaMin:occupiedState", 1)  -- TO DO: Need to create the timer and conditions to reset the state of the instance.
	createEvent(1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")

	return true
end



function axkvaMin:sendAuthorizationSui(pPlayer, pLeader)
	if (pPlayer == nil) then
		return
	end	

	local sui = SuiMessageBox.new("axkvaMin", "authorizationSuiCallback")
    
	sui.setTitle("The Chamber of Banishment")
	sui.setPrompt(CreatureObject(pLeader):getFirstName() .. " has granted you authorization to travel to The Chamber of Banishment.  Do you accept this travel offer?")
	sui.setOkButtonText("Yes")
	sui.setCancelButtonText("No")

	local pageId = sui.sendTo(pPlayer)

	createEvent(30 * 1000, "axkvaMin", "closeAuthorizationSui", pPlayer, pageId)
	
end


function axkvaMin:authorizationSuiCallback(pPlayer, pSui, eventIndex, args, ...)
  local cancelPressed = (eventIndex == 1)
  local args = {...}
 
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("You decline to enter the instance.")   
    return 
  elseif (eventIndex == 0) then -- Teleport 
	 createEvent(1000, "axkvaMin", "transportPlayer", pPlayer, "")
	end 
end


function axkvaMin:closeAuthorizationSui(pPlayer, pageId)
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	PlayerObject(pGhost):removeSuiBox(pageId)

end




function axkvaMin:transportPlayer(pPlayer)
	if pPlayer == nil then
		return
	end

	SceneObject(pPlayer):switchZone("yavin4", -11.8, 0.2, -121.8, 480000293)
end



function axkvaMin:handleTimer(pPlayer)  
  local startTime = readData("axkvaMinStartTime")
  local timeLeftSecs = 3600 - (os.time() - startTime)
  local timeLeft = math.floor(timeLeftSecs / 60)
  
  if (timeLeft > 10) then    
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(5 * 60 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")   
  elseif (timeLeft >= 3) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(60 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeft >= 2) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 90) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 60) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 30) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(20 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 10) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(10 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  else
    self:checkIfActive(pPlayer)   
  end
end

function axkvaMin:checkIfActiveForTimer(pPlayer)
  if (readData("axkvaMin:occupiedState") == 1) then
    createEvent(1, "axkvaMin", "handleTimer", pPlayer, "")
  else
    --self:ejectAllGroupMembers(pPlayer)
    self:resetInstance(pPlayer)    
  end      
end

function axkvaMin:spawnCheck()
  if (readData("axkvaMin:trashSpawnState") == 1) then
    return
  else
    self:spawnTrashMobs()
    writeData("axkvaMin:trashSpawnState", 1)       
  end 
end



function axkvaMin:spawnTrashMobs()  -- Each instance script needs assigned cells.
  -- Trash pack 1: Hallway 1
  --local mob1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 43.3, 0, -48.1, 116, 480000295)
   
end

function axkvaMin:spawnBossOneCheck()
  if (readData("axkvaMin:bossOneSpawnState") == 1) then
    return
  else
    self:spawnBossRoomOne()
    writeData("axkvaMin:bossOneSpawnState", 1)       
  end 
end

function axkvaMin:spawnBossRoomOne()
  local boss1 = spawnMobile("yavin4", "exar_kun_open_hand", 0, -12.2, -0.1, -47.9, 171, 480000294)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossOneKilled", boss1) 
end

function axkvaMin:spawnBossRoomOneActiveArea()  -- Active areas use world coords.   Set to actual world coord in each instance manually.
  local pActiveArea1 = spawnSceneObject("yavin4", "object/active_area.iff", -4423.0, 880, 7410.5, 0, 0, 0, 0, 0)
  if (pActiveArea1 ~= nil) then
    local activeArea = LuaActiveArea(pActiveArea1)
          activeArea:setCellObjectID(480000294)
          activeArea:setRadius(15)
          createObserver(ENTEREDAREA, "axkvaMin", "notifyBossRoomOneActiveArea", pActiveArea1)
                  
      end
end

function axkvaMin:notifyBossRoomOneActiveArea(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      self:spawnBossRoomOneTrash()
      
      end
    return 0    
  end)
end

function axkvaMin:spawnBossRoomOneTrash()
  if (readData("axkvaMin:bossOneTrashState") == 1) then
    return
  else
  --[[
    local add1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 5.3, -0.1, -46.5, -147, 480000294)
    local add2 = spawnMobile("yavin4", "exar_kun_cultist", 0, -28.4, -0.1, -46.4, 130, 480000294)
    local add3 = spawnMobile("yavin4", "exar_kun_cultist", 0, -32.2, -0.1, -51.9, 109, 480000294)
    local add4 = spawnMobile("yavin4", "exar_kun_cultist", 0, 9.2, -0.1, -51.8, -121, 480000294)
    local add5 = spawnMobile("yavin4", "exar_kun_cultist", 0, 9.1, -0.1, -77.7, -55, 480000294)
    local add6 = spawnMobile("yavin4", "exar_kun_cultist", 0, 5.3, -0.1, -82.3, -37, 480000294)
    local add7 = spawnMobile("yavin4", "exar_kun_cultist", 0, -28.4, -0.1, -82.7, 40, 480000294)
    local add8 = spawnMobile("yavin4", "exar_kun_cultist", 0, -32.3, -0.1, -77.2, 59, 480000294) 
    --]]   
  end 
  writeData("axkvaMin:bossOneTrashState", 1) 
end

function axkvaMin:bossOneKilled(boss1) 
  writeData("axkvaMin:bossOneDead", 1) 
  self:spawnBossRoomTwo()
  return 0
end

function axkvaMin:spawnBossRoomTwo()
  local boss2 = spawnMobile("yavin4", "exar_kun_minder", 0, -1.9, 0.1, -2.7, 85, 480000296)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossTwoKilled", boss2) 
end

function axkvaMin:bossTwoKilled(boss2)
  writeData("axkvaMin:bossTwoDead", 1) 
  self:spawnBossRoomThree()
  return 0
end

function axkvaMin:spawnBossRoomThree()  -- Adds for this phase:   exar_kun_warrior (A Caretaker Protector) , exar_kun_warrior_f (The Executioner)
  local boss3 = spawnMobile("yavin4", "exar_kun_caretaker", 0, 18.1, 0.1, -2.0, -90, 480000296)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossThreeKilled", boss3) 
end

function axkvaMin:bossThreeKilled(boss3)
  writeData("axkvaMin:bossThreeDead", 1) 
  self:spawnBossRoomFour()
  return 0
end

function axkvaMin:spawnBossRoomFour()
  local boss4 = spawnMobile("yavin4", "exar_kun_fist_of_hate", 0, 15.6, 0.0, 92.8, 178, 480000299)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossFourKilled", boss4) 
end

function axkvaMin:bossFourKilled(boss4)
  writeData("axkvaMin:bossFourDead", 1) 
  self:spawnBossRoomFive()
  return 0
end

function axkvaMin:spawnBossRoomFive()
  local boss5 = spawnMobile("yavin4", "exar_kun", 0, 15.8, 4.7, 106.9, 179, 480000299)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossFiveKilled", boss5) 
end

function axkvaMin:bossFiveKilled(boss5, pPlayer)  -- TODO Use this function to reset the instance on success.   Delay by 30 seconds to allow looting time.
    writeData("axkvaMin:bossFiveDead", 1) 
    CreatureObject(pPlayer):sendSystemMessage("You and your group have defeated Exar Kun!  You will be removed from the instance in 60 seconds.")  
    createEvent(1000, "axkvaMin", "awardBadgeToAll", pPlayer, "")
    createEvent(60000, "axkvaMin", "handleVictory", pPlayer, "")
  return 0
end

function axkvaMin:resetTrashMobs(mob1, mob2, mob3, mob4, mob5, mob6, mob7, mob8, mob9, mob10, mob11, mob12, mob13, mob14, mob15, mob16, mob17, mob18)
  if (mob1 == nil) then
    return
  else
    SceneObject(mob1):destroyObjectFromWorld()
  end
  if (mob2 == nil) then
    return
  else    
    SceneObject(mob2):destroyObjectFromWorld()
  end
  if (mob3 == nil) then
    return
  else    
    SceneObject(mob3):destroyObjectFromWorld()
  end
  if (mob4 == nil) then
    return
  else   
    SceneObject(mob4):destroyObjectFromWorld()
  end
  if (mob5 == nil) then
    return
  else   
    SceneObject(mob5):destroyObjectFromWorld()
  end
  if (mob6 == nil) then
    return
  else   
    SceneObject(mob6):destroyObjectFromWorld()
  end
  if (mob7 == nil) then
    return
  else   
    SceneObject(mob7):destroyObjectFromWorld()
  end
  if (mob8 == nil) then
    return
  else   
    SceneObject(mob8):destroyObjectFromWorld()
  end
  if (mob9 == nil) then
    return
  else   
    SceneObject(mob9):destroyObjectFromWorld()
  end
  if (mob10 == nil) then
    return
  else   
    SceneObject(mob10):destroyObjectFromWorld()
  end
  if (mob11 == nil) then
    return
  else   
    SceneObject(mob11):destroyObjectFromWorld()
  end
  if (mob12 == nil) then
    return
  else   
    SceneObject(mob12):destroyObjectFromWorld()
  end
  if (mob13 == nil) then
    return
  else   
    SceneObject(mob13):destroyObjectFromWorld()
  end
  if (mob14 == nil) then
    return
  else   
    SceneObject(mob14):destroyObjectFromWorld()
  end
  if (mob15 == nil) then
    return
  else   
    SceneObject(mob15):destroyObjectFromWorld()
  end
  if (mob16 == nil) then
    return
  else   
    SceneObject(mob16):destroyObjectFromWorld()
  end
  if (mob17 == nil) then
    return
  else   
    SceneObject(mob17):destroyObjectFromWorld()
  end
  if (mob18 == nil) then
    return
  else   
    SceneObject(mob18):destroyObjectFromWorld()
  end
end

function axkvaMin:getBuildingObject()
  return getSceneObject(480000292)  -- Different parent for each instance script
end

function axkvaMin:getCell(cellName)
  local paxkvaMin = self:getBuildingObject()
  
  if (paxkvaMin == nil) then
    printLuaError("unable to get building object.")
    return nil
  end
  
  return BuildingObject(paxkvaMin):getNamedCell(cellName)  
end

function axkvaMin:checkIfActive(pPlayer)
  if (readData("axkvaMin:occupiedState") == 1) then
    writeData("axkvaMin:trashSpawnState", 0)
    self:ejectAllPlayers(pPlayer)
    self:resetInstance(pPlayer)
    return true
  end
end

function axkvaMin:ejectAllPlayers(pPlayer)

  createEvent(1000, "axkvaMin", "ejectPlayer", pPlayer, "")
  
  if (CreatureObject(pPlayer):isGrouped()) then
    local groupSize = CreatureObject(pPlayer):getGroupSize()

    for i = 0, groupSize - 1, 1 do
      local pMember = CreatureObject(pPlayer):getGroupMember(i)
      if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 300) and not SceneObject(pMember):isAiAgent() then
        self:ejectPlayer(pMember, pPlayer)
      end
    end
  end
end

function axkvaMin:ejectAllGroupMembers(pPlayer)

  if (CreatureObject(pPlayer):isGrouped()) then
    local groupSize = CreatureObject(pPlayer):getGroupSize()

    for i = 0, groupSize - 1, 1 do
      local pMember = CreatureObject(pPlayer):getGroupMember(i)
      if pMember ~= nil and pMember ~= pPlayer and not SceneObject(pMember):isAiAgent() then
        self:ejectPlayer(pMember, pPlayer)
      end
    end
  end
end

function axkvaMin:ejectPlayer(pPlayer)
  if pPlayer == nil then
    return
  end
  CreatureObject(pPlayer):sendSystemMessage("You are now being removed from the instance.")
  SceneObject(pPlayer):switchZone("yavin4", 5024.1, 73.2, 5585.1, 0)
end



function axkvaMin:resetInstanceA(paxkvaMin, pPlayer)
  if not SceneObject(pPlayer):isPlayerCreature() then
    return 0
  end
  writeData("axkvaMin:occupiedState", 0)
  
  CreatureObject(pPlayer):sendSystemMessage("One or more group members have left the dungeon.")
  self:resetInstance(pPlayer)
  self:ejectAllGroupMembers(pPlayer)  
  return 0
end

function axkvaMin:resetInstance(pPlayer)
  CreatureObject(pPlayer):sendSystemMessage("The instance has been reset.")
  writeData("axkvaMin:occupiedState", 0)
end

function axkvaMin:awardBadge(pPlayer)
  local pGhost = CreatureObject(pPlayer):getPlayerObject()
  
  if (pGhost ~= nil and not PlayerObject(pGhost):hasBadge(152)) then
        PlayerObject(pGhost):awardBadge(152)
  end          
end

function axkvaMin:awardBadgeToAll(pPlayer)

  createEvent(1000, "axkvaMin", "awardBadge", pPlayer, "")
  
  if (CreatureObject(pPlayer):isGrouped()) then
    local groupSize = CreatureObject(pPlayer):getGroupSize()

    for i = 0, groupSize - 1, 1 do
      local pMember = CreatureObject(pPlayer):getGroupMember(i)
      if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 300) and not SceneObject(pMember):isAiAgent() then
        self:awardBadge(pMember, pPlayer)
      end
    end
  end
end

function axkvaMin:handleVictory(pPlayer) 
  self:resetInstance(pPlayer)
  self:ejectAllPlayers(pPlayer)
   writeData("axkvaMin:bossOneDead", 0)
   writeData("axkvaMin:bossTwoDead", 0) 
   writeData("axkvaMin:bossThreeDead", 0) 
   writeData("axkvaMin:bossFourDead", 0) 
   writeData("axkvaMin:bossFiveDead", 0)  
   writeData("axkvaMin:trashSpawnState", 0)
   writeData("axkvaMin:bossOneSpawnState", 0)
   writeData("axkvaMin:bossOneTrashState", 0) 
end
