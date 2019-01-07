local ObjectManager = require("managers.object.object_manager")

exarKun = ScreenPlay:new {
	

}

registerScreenPlay("exarKun", true)

function exarKun:start()
	if (isZoneEnabled("yavin4")) then
    --self:spawnMobs()
	end
end


function exarKun:activate(pPlayer, faction, questType)
	if (not isZoneEnabled("yavin4")) then
		CreatureObject(pPlayer):sendSystemMessage("That area is currently unavailable. Please try again later.") 
		return false
	end
	
	if (readData("exarKun:occupiedState") == 1) then
	   CreatureObject(pPlayer):sendSystemMessage("That instance is currently occupied, please try a different instance.")
	   return false
	end   
	
	
	createEvent(1000, "exarKun", "transportPlayer", pPlayer, "")
  
  writeData("exarKunStartTime:", os.time())
  writeData("exarKun:occupiedState", 1)  -- TO DO: Need to create the timer and conditions to reset the state of the instance.
  
  local pExarKun = getSceneObject(480000292)
  
  createEvent(5 * 60 * 1000, "exarKun", "handleTimer", pExarKun, "")
  
	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 50) and not SceneObject(pMember):isAiAgent() then
				self:sendAuthorizationSui(pMember, pPlayer)
			end
		end
	end

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

function exarKun:handleTimer(pExarKun)
  local startTime = readData("exarKunStartTime:")
  local timeLeftSecs = 3600 - (os.time() - startTime)
  local timeLeft = math.floor(timeLeftSecs / 60)

  if (timeLeft > 10) then
    self:broadcastToPlayers( "@dungeon/corvette:timer_" .. timeLeft)
    createEvent(5 * 60 * 1000, "exarKun", "handleTimer", pExarKun, "")
  elseif (timeLeft >= 3) then
    self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_" .. timeLeft)
    createEvent(60 * 1000, "exarKun", "handleTimer", pExarKun, "")
  elseif (timeLeft >= 2) then
    self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "exarKun", "handleTimer", pExarKun, "")
  elseif (timeLeftSecs >= 90) then
    self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_90s")
    createEvent(30 * 1000, "exarKun", "handleTimer", pExarKun, "")
  elseif (timeLeftSecs >= 60) then
    self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_1")
    createEvent(30 * 1000, "exarKun", "handleTimer", pExarKun, "")
  elseif (timeLeftSecs >= 30) then
    self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_30s")
    createEvent(20 * 1000, "exarKun", "handleTimer", pExarKun, "")
  elseif (timeLeftSecs >= 10) then
    self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_10s")
    createEvent(10 * 1000, "exarKun", "handleTimer", pExarKun, "")
  else
    self:resetInstance()
  end
end

function exarKun:broadcastToPlayers(pExarKun, message)
  for i = 1, 66, 1 do
    local pCell = BuildingObject(pExarKun):getCell(i)

    if (pCell ~= nil) then
      for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
        local pObject = SceneObject(pCell):getContainerObject(j - 1)
        if SceneObject(pObject):isPlayerCreature() then
          CreatureObject(pObject):sendSystemMessage(message)
        end
      end
    end
  end
end

function exarKun:resetInstance()
  
  writeData("exarKun:occupiedState", 0)
end



