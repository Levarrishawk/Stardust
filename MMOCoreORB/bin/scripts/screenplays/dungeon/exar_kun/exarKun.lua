local ObjectManager = require("managers.object.object_manager")

exarKun = ScreenPlay:new {
	

}

registerScreenPlay("exarKun", true)

function exarKun:start()
	if (isZoneEnabled("yavin4")) then
    --self:spawnMobs()
	end
end


function exarKun:activate(pPlayer)
	if (not isZoneEnabled("yavin4")) then
		CreatureObject(pPlayer):sendSystemMessage("That area is currently unavailable. Please try again later.") 
		return false
	end
	
	if (readData("exarKun:occupiedState") == 1) then
	   CreatureObject(pPlayer):sendSystemMessage("That instance is currently occupied, please try a different instance.")
	   return false
	end   
	   
  
  local pExarKun = self:getBuildingObject()
  
  writeData("exarKunStartTime", os.time()) 
  
  CreatureObject(pPlayer):sendSystemMessage("Instance Started: You have 60 minutes remaining to complete the instance.") 
  createEvent(1000, "exarKun", "transportPlayer", pPlayer, "")
  
  createObserver(EXITEDBUILDING, "exarKun", "resetInstanceA", pExarKun, "")
  
	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 50) and not SceneObject(pMember):isAiAgent() then
				self:sendAuthorizationSui(pMember, pPlayer)
			end
		end
	end
	
	writeData("exarKun:occupiedState", 1)  -- TO DO: Need to create the timer and conditions to reset the state of the instance.
	createEvent(5 * 60 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")

	return true
end



function exarKun:sendAuthorizationSui(pPlayer, pLeader)
	if (pPlayer == nil) then
		return
	end	

	local sui = SuiMessageBox.new("exarKun", "authorizationSuiCallback")
  
  
	sui.setTitle("Exar Kun Catcombs")
	sui.setPrompt(CreatureObject(pLeader):getFirstName() .. " has granted you authorization to travel to the Exar Kun Catacombs.  Do you accept this travel offer?")
	sui.setOkButtonText("Yes")
	sui.setCancelButtonText("No")

	local pageId = sui.sendTo(pPlayer)

	createEvent(30 * 1000, "exarKun", "closeAuthorizationSui", pPlayer, pageId)
	
end

function exarKun:authorizationSuiCallback(pPlayer, pSui, eventIndex, args, ...)
  local cancelPressed = (eventIndex == 1)
  local args = {...}
 
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("You decline to enter the instance.")   
    return 
  elseif (eventIndex == 0) then -- Teleport 
	 createEvent(1000, "exarKun", "transportPlayer", pPlayer, "")
	end 
end

function exarKun:closeAuthorizationSui(pPlayer, pageId)
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	PlayerObject(pGhost):removeSuiBox(pageId)

end




function exarKun:transportPlayer(pPlayer)
	if pPlayer == nil then
		return
	end

	SceneObject(pPlayer):switchZone("yavin4", -11.8, 0.2, -121.8, 480000293)
end

function exarKun:handleTimer(pPlayer)  
  local startTime = readData("exarKunStartTime")
  local timeLeftSecs = 3600 - (os.time() - startTime)
  local timeLeft = math.floor(timeLeftSecs / 60)
  
  if (timeLeft > 10) then    
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(5 * 60 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")   
  elseif (timeLeft >= 3) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(60 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeft >= 2) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 90) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 60) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 30) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(20 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 10) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(10 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  else
    self:checkIfActive(pPlayer)   
  end
end

function exarKun:checkIfActiveForTimer(pPlayer)
  if (readData("exarKun:occupiedState") == 1) then
    createEvent(1, "exarKun", "handleTimer", pPlayer, "")
  else
    self:ejectAllGroupMembers(pPlayer)
    self:resetInstance(pPlayer)
  end      
end

function exarKun:spawnTrashMobs()  -- Each instance script needs assigned cells.
  -- Trash pack 1: Hallway 1
   local mob1 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 43.3, 0, -48.1, 116, 480000295)
   local mob2 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 51.5, 0, -53.8, -37, 480000295)
   local mob3 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 50.7, 0, -46.1, -140, 480000295)
  -- Trash pack 2: Hallway 1
   local mob4 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 59.1, 0, -20.4, -174, 480000295)
   local mob5 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 56.7, 0, -20.2, -171, 480000295)
   local mob6 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 52.2, 0, -21.0, 176, 480000295)
  -- Trash pack 3: hallway 1
   local mob7 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 38.6, -0.1, -1.4, 101, 480000295)
   local mob8 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 41.1, -0.2, 1.9, 117, 480000295)
   local mob9 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 44.6, -0.4, 4.5, 150, 480000295)
   -- Trash pack 4: hallway 2
   local mob10 = spawnMobile("yavin4", "exar_kun_cultist", 3600, -38.1, 0, 11.1, -172, 480000297)
   local mob11 = spawnMobile("yavin4", "exar_kun_cultist", 3600, -31.9, 0, 11.8, -174, 480000297)
   local mob12 = spawnMobile("yavin4", "exar_kun_cultist", 3600, -34.7, 0, 12.5, -179, 480000297)
   -- Trash pack 5: hallway 2
   local mob13 = spawnMobile("yavin4", "exar_kun_cultist", 3600, -22.4, -0.2, 40.9, 144, 480000297)
   local mob14 = spawnMobile("yavin4", "exar_kun_cultist", 3600, -16.3, 0, 39.7, -125, 480000297)
   local mob15 = spawnMobile("yavin4", "exar_kun_cultist", 3600, -15.5, 0, 35.3, -51, 480000297)
   -- Trash pack 6: hallway 2 cell 2
   local mob16 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 7.7, 0.3, 50, 141, 480000298)
   local mob17 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 23.3, 0.3, 49.7, -113, 480000298)
   local mob18 = spawnMobile("yavin4", "exar_kun_cultist", 3600, 16.7, 0.3, 39.9, -4, 480000298)
end

function exarKun:getBuildingObject()
  return getSceneObject(480000292)  -- Different parent for each instance script
end

function exarKun:getCell(cellName)
  local pExarKun = self:getBuildingObject()
  
  if (pExarKun == nil) then
    printLuaError("unable to get building object.")
    return nil
  end
  
  return BuildingObject(pExarKun):getNamedCell(cellName)  
end

function exarKun:checkIfActive(pPlayer)
  if (readData("exarKun:occupiedState") == 1) then
    
    self:ejectAllPlayers(pPlayer)
    self:resetInstance(pPlayer)
    return true
  end
end

function exarKun:ejectAllPlayers(pPlayer)

  createEvent(1000, "exarKun", "ejectPlayer", pPlayer, "")
  
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

function exarKun:ejectAllGroupMembers(pPlayer)

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

function exarKun:ejectPlayer(pPlayer)
  if pPlayer == nil then
    return
  end
  CreatureObject(pPlayer):sendSystemMessage("You are now being removed from the instance.")
  SceneObject(pPlayer):switchZone("yavin4", 5024.1, 73.2, 5585.1, 0)
end

function exarKun:resetInstanceA(pExarKun, pPlayer)
  if not SceneObject(pPlayer):isPlayerCreature() then
    return 0
  end
  writeData("exarKun:occupiedState", 0)
  
  CreatureObject(pPlayer):sendSystemMessage("One or more group members have left the dungeon.")
  self:checkIfActiveForTimer(pPlayer)  
  return 0
end

function exarKun:resetInstance()
  
  writeData("exarKun:occupiedState", 0)
end

