local ObjectManager = require("managers.object.object_manager")

exarKunEntryMenuComponent = {  }

function exarKunEntryMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local response = LuaObjectMenuResponse(pMenuResponse)
	response:addRadialMenuItem(20, 3, "Enter the Catacombs")	
	
end

function exarKunEntryMenuComponent:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if CreatureObject(pPlayer):isInCombat() or CreatureObject(pPlayer):isIncapacitated() or CreatureObject(pPlayer):isDead() then
		return 0
	end

	if not CreatureObject(pPlayer):isInRangeWithObject(pSceneObject, 6) then
		return 0
	end

	if selectedID == 20 then
	  
	  local sui = SuiMessageBox.new("exarKunEntryMenuComponent", "handleTeleport")
    sui.setPrompt("This will transport you into a timed instance dungeon.  Do you wish to proceed?")
    sui.setTitle("Exar Kun Catacombs")
    sui.setCancelButtonText("Cancel") -- Cancel  
    sui.setOkButtonText("OK") -- OK   

    sui.sendTo(pPlayer)   	  		 	
    
	end

	return 0
end



function exarKunEntryMenuComponent:handleTeleport(pPlayer, pSui, eventIndex, ...)
  if (pPlayer == nil) then
    return
  end

  local cancelPressed = (eventIndex == 1)
  local args = {...}
  
  local councilType = 1
  
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("The crystal stops humming as you pull your hand away.")   
    return 
  elseif (eventIndex == 0) then -- Teleport
      createEvent(1000, "exarKun", "activate", pPlayer, "")
     
  end
end


