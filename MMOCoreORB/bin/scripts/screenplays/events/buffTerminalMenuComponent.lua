local ObjectManager = require("managers.object.object_manager")

buffTerminalMenuComponent = {  }

function buffTerminalMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local response = LuaObjectMenuResponse(pMenuResponse)
	response:addRadialMenuItem(20, 3, "Get Buffs")
	
end

function buffTerminalMenuComponent:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if CreatureObject(pPlayer):isInCombat() or CreatureObject(pPlayer):isIncapacitated() or CreatureObject(pPlayer):isDead() then
		return 0
	end

	if not CreatureObject(pPlayer):isInRangeWithObject(pSceneObject, 6) then
		return 0
	end

	if selectedID == 20 then
	  
	  local sui = SuiMessageBox.new("buffTerminalMenuComponent", "handleBuffChoice")
    sui.setPrompt("It will cost 5000 Credits to receive a Medical Health Enhancement.  Do you wish to proceed?")
    sui.setTitle("Medical Enhancement Droid")
    sui.setCancelButtonText("Cancel") -- Cancel  
    sui.setOkButtonText("OK") -- OK   

    sui.sendTo(pPlayer)   	  	
	
	end

	return 0
end

function buffTerminalMenuComponent:handleBuffChoice(pPlayer, pSui, eventIndex, ...)
  if (pPlayer == nil) then
    return
  end

  local cancelPressed = (eventIndex == 1)
  local args = {...}
  
  if (cancelPressed) then   
    return 
  elseif (eventIndex == 0) then -- Chose Dark Side
    CreatureObject(pPlayer):enhanceCharacter()
    CreatureObject(pPlayer):playMusicMessage("sound/vo_meddroid_01.snd")
    CreatureObject(pPlayer):subtractCashCredits(5000)
    CreatureObject(pPlayer):sendSystemMessage("You successfully make a payment of 5000 credits.")
  end
end
