local ObjectManager = require("managers.object.object_manager")

hondo_send_teleporter = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "hondo_send_teleporter_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("hondo_send_teleporter", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function hondo_send_teleporter:start()
  if getFormattedTime():find("Jan") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "jan_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("Feb") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "feb_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("Mar") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "mar_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("Apr") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "apr_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("May") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "may_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("Jun") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "jun_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("Jul") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "jul_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("Aug") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "aug_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("Sep") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "sep_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("Oct") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "oct_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("Nov") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "nov_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end
  if getFormattedTime():find("Dec") ~= nil then
    writeStringSharedMemory("hondo_send_teleporter", "dec_spawn" .. tostring(os.date('%Y')))
    spawnMobile("naboo", "hondo_send_teleporter", 1, 0.2, -9.0, -19.7, 0, 1393884) 
  end  
end

--The actual conversation handler
hondo_send_teleporter_convo_handler = Object:new {
  
 }


function hondo_send_teleporter_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
  local convosession = CreatureObject(pConversingPlayer):getConversationSession()

  local lastConversationScreen = nil

  if (convosession ~= nil) then
    local session = LuaConversationSession(convosession)
    lastConversationScreen = session:getLastConversationScreen()
  end

  local conversation = LuaConversationTemplate(pConversationTemplate)

  local nextConversationScreen

  if (lastConversationScreen ~= nil) then
    local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)

    --Get the linked screen for the selected option.
    local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)

    nextConversationScreen = conversation:getScreen(optionLink)

    if nextConversationScreen ~= nil then
      local nextLuaConversationScreen = LuaConversationScreen(nextConversationScreen)
    else
      nextConversationScreen = conversation:getScreen("hondo_send_first_conv")
    end
  else
    nextConversationScreen = conversation:getScreen("hondo_send_first_conv")
  end
  return nextConversationScreen
end


function hondo_send_teleporter_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 

  
  local player = LuaSceneObject(pConversingPlayer)

  if ( screenID == "mayor2" ) then
   
     player:switchZone("09", 3246, 51, -758, 0) -- x, z, y, cell

  end
  
  
  --print("returning convosvreen")
  return pConversationScreen
end