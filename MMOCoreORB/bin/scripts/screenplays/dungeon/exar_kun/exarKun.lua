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
	
	
	createEvent(1000, "exarKun", "transportPlayer", pPlayer, "")

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





