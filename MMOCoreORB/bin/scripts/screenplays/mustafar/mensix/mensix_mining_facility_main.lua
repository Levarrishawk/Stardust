local ObjectManager = require("managers.object.object_manager")

mensix_mining_facility_main = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "mensix_mining_facility_main"
}

registerScreenPlay("mensix_mining_facility_main", true)

function mensix_mining_facility_main:start()
	if (isZoneEnabled("mustafar")) then
		writeData("mensix_mining_facility_main:travelerConvoInProgress", 0) 
		writeData("mensix_mining_facility_main:travelerConvoState", 0)   
		
		writeData("mensix_mining_facility_main:minerConvoInProgress", 0) 
    writeData("mensix_mining_facility_main:minerConvoState", 0)  
    
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnMinerConvoActiveArea()
		self:startTravelerConvo()
	end
end



function mensix_mining_facility_main:spawnSceneObjects()

	-- Stardust Specific Droid:  Remove for other servers.
  spawnSceneObject("mustafar", "object/tangible/terminal/terminal_event_buffs.iff", -83.7, 10.3, 122, 12112227, math.rad(173) )
  
 
end

function mensix_mining_facility_main:spawnMobiles()

    local pTraveler_m = spawnMobile("mustafar", "traveler_m",0,-2481,230.1,1633.7,-51,0)  -- -55.1,31.5,-120.3,-33,12112248  Original NGE Position (changed to outdoors due to spatialChat not working in cell)
      self:setMoodString(pTraveler_m, "npc_consoling")    
    local pTraveler_f = spawnMobile("mustafar", "traveler_f",0,-2483.1,230.1,1635.7,-90,0)  -- -56.7,31.5,-118.9,-90,12112248 Original NGE Position (changed to outdoors due to spatialChat not working in cell)
      self:setMoodString(pTraveler_f, "angry")    
      
     writeData("mensix_mining_facility_main:traveler_m_objectID", SceneObject(pTraveler_m):getObjectID() )
     writeData("mensix_mining_facility_main:traveler_f_objectID", SceneObject(pTraveler_f):getObjectID() )    
     
     local pMiner1 = spawnMobile("mustafar", "mustafar_miner_02",0,-2384.0,210.2,1809.9,-35,0)
     local pMiner2 = spawnMobile("mustafar", "mustafar_miner_01",0,-2384.3,210.2,1813.2,165,0)
     local pMiner3 = spawnMobile("mustafar", "mustafar_miner_01",0,-2387.6,210.2,1812.2,123,0)
     
     writeData("mensix_mining_facility_main:pMiner1_objectID", SceneObject(pMiner1):getObjectID() )
     writeData("mensix_mining_facility_main:pMiner2_objectID", SceneObject(pMiner2):getObjectID() )
     writeData("mensix_mining_facility_main:pMiner3_objectID", SceneObject(pMiner3):getObjectID() )
end


function mensix_mining_facility_main:startTravelerConvo(pActiveArea1, pMovingObject, pPlayer, pTraveler_m, pTraveler_f)
  
   local pTraveler_f = getSceneObject(readData("mensix_mining_facility_main:traveler_f_objectID"))
   local pTraveler_m = getSceneObject(readData("mensix_mining_facility_main:traveler_m_objectID"))

   if not(readData("mensix_mining_facility_main:travelerConvoInProgress") == 1) then       
          writeData("mensix_mining_facility_main:travelerConvoInProgress", 1)
          createEvent(90 * 1000, "mensix_mining_facility_main", "touristConvoF1", pTraveler_f, "")
          createEvent(100 * 1000, "mensix_mining_facility_main", "touristConvoM1", pTraveler_m, "")
   else
      return 0
   end              
end






function mensix_mining_facility_main:touristConvoF1(pTraveler_f, pPlayer)
  
  local pTraveler_f = getSceneObject(readData("mensix_mining_facility_main:traveler_f_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 0) then
      spatialChat(pTraveler_f, "I cannot believe you took me to this flaming hunk of rock! What were you thinking? This world is a nightmare.")     
        writeData("mensix_mining_facility_main:travelerConvoState", 1)   
        createEvent(20 * 1000, "mensix_mining_facility_main", "touristConvoF2", pTraveler_f, "")  
  end
end

function mensix_mining_facility_main:touristConvoM1(pTraveler_m, pPlayer)
  
  local pTraveler_m = getSceneObject(readData("mensix_mining_facility_main:traveler_m_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 1) then
      spatialChat(pTraveler_m, "Please, Clarrisa, don't start. I thought this would be a nice change of pace for us. You said you wanted to go some place full of adventure and mystery. With all of the discoveries here on Mustafar I thought you would love it.")     
        writeData("mensix_mining_facility_main:travelerConvoState", 2)   
        createEvent(20 * 1000, "mensix_mining_facility_main", "touristConvoM2", pTraveler_m, "")   
  end
end

function mensix_mining_facility_main:touristConvoF2(pTraveler_f, pPlayer)
  
  local pTraveler_f = getSceneObject(readData("mensix_mining_facility_main:traveler_f_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 2) then
      spatialChat(pTraveler_f, "Adventure! When I said that, I meant we should go someplace nice like Naboo. You drag me half way across the galaxy to show me a burning rock! We are going to have a serious talk about your concept of adventure when we get home. Are you listening to me?")     
        writeData("mensix_mining_facility_main:travelerConvoState", 3)    
        createEvent(20 * 1000, "mensix_mining_facility_main", "touristConvoF3", pTraveler_f, "")  
  end
end

function mensix_mining_facility_main:touristConvoM2(pTraveler_m, pPlayer)
  
  local pTraveler_m = getSceneObject(readData("mensix_mining_facility_main:traveler_m_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 3) then
      spatialChat(pTraveler_m, "Of course dear. I was just trying to be exciting and unexpected for you. We could have explored some of those ruins and maybe make a discovery of our own.")     
        writeData("mensix_mining_facility_main:travelerConvoState", 4)  
        createEvent(22 * 1000, "mensix_mining_facility_main", "touristConvoM3", pTraveler_m, "")   
  end
end

function mensix_mining_facility_main:touristConvoF3(pTraveler_f, pPlayer)
  
  local pTraveler_f = getSceneObject(readData("mensix_mining_facility_main:traveler_f_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 4) then
      spatialChat(pTraveler_f, "Next time you want to be exciting...don't. I will not have any such foolishness like you digging around in the dirt like some grubby archeologist. What would people back home say? Now we are just going to wait until the next shuttle and never speak of this again. Is that understood?")     
        writeData("mensix_mining_facility_main:travelerConvoState", 5)           
  end
end

function mensix_mining_facility_main:touristConvoM3(pTraveler_m, pPlayer)
  
  local pTraveler_m = getSceneObject(readData("mensix_mining_facility_main:traveler_m_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 5) then
      spatialChat(pTraveler_m, "Yes, dear. Whatever you say.") 
        writeData("mensix_mining_facility_main:travelerConvoState", 0)   
        createEvent(6 * 100 * 1000, "mensix_mining_facility_main", "resetTravelerConvo", pTraveler_m, "")   
  end
end

function mensix_mining_facility_main:resetTravelerConvo(pPlayer, pTraveler_f, pTraveler_m)
    writeData("mensix_mining_facility_main:travelerConvoInProgress", 0)    
    self:startTravelerConvo()
end


function mensix_mining_facility_main:spawnMinerConvoActiveArea()  -- Active areas use world coords.   Set to actual world coord in each instance manually.
  local pActiveArea1 = spawnSceneObject("mustafar", "object/active_area.iff", -2384, 210, 1811, 0, 0)
  if (pActiveArea1 ~= nil) then
    local activeArea = LuaActiveArea(pActiveArea1)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(20)
          createObserver(ENTEREDAREA, "mensix_mining_facility_main", "notifyMinerConvoActiveArea", pActiveArea1)
                  
      end
end

function mensix_mining_facility_main:notifyMinerConvoActiveArea(pActiveArea1, pMovingObject, pPlayer, pTraveler_m, pTraveler_f)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      self:startMinerConvo()
      
      end
    return 0    
  end)
end

function mensix_mining_facility_main:startMinerConvo(pActiveArea1, pMovingObject, pPlayer, pMiner1, pMiner2, pMiner3)
  
   local pMiner1 = getSceneObject(readData("mensix_mining_facility_main:pMiner1_objectID"))
   local pMiner2 = getSceneObject(readData("mensix_mining_facility_main:pMiner2_objectID"))
   local pMiner3 = getSceneObject(readData("mensix_mining_facility_main:pMiner3_objectID"))

   if not(readData("mensix_mining_facility_main:minerConvoInProgress") == 1) then       
          writeData("mensix_mining_facility_main:minerConvoInProgress", 1)
       --   createEvent(90 * 1000, "mensix_mining_facility_main", "touristConvoF1", pTraveler_f, "")
       --   createEvent(100 * 1000, "mensix_mining_facility_main", "touristConvoM1", pTraveler_m, "")
   else
      return 0
   end              
end

