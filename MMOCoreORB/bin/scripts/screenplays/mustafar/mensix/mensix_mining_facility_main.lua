local ObjectManager = require("managers.object.object_manager")

mensix_mining_facility_main = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "mensix_mining_facility_main"
}

registerScreenPlay("mensix_mining_facility_main", true)

function mensix_mining_facility_main:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		
		writeData("mensix_mining_facility_main:travelerConvoInProgress", 0) 
		writeData("mensix_mining_facility_main:travelerConvoSpawnState", 0) 
	end
end



function mensix_mining_facility_main:spawnSceneObjects()

	-- Stardust Specific Droid:  Remove for other servers.
  spawnSceneObject("mustafar", "object/tangible/terminal/terminal_event_buffs.iff", -83.7, 10.3, 122, 12112227, math.rad(173) )
  
 
end

function mensix_mining_facility_main:spawnMobiles()

	self:touristConvo()

  
end


function mensix_mining_facility_main:touristConvo(pTraveler_m, pTraveler_f, pPlayer)

  if (readData("mensix_mining_facility_main:travelerConvoSpawnState") == 0) then
    local pTraveler_m = spawnMobile("mustafar", "traveler_m",0,-55.1,31.5,-120.3,-33,12112248)
  	  self:setMoodString(pTraveler_m, "npc_consoling")
  	
    local pTraveler_f = spawnMobile("mustafar", "traveler_f",0,-56.7,31.5,-118.9,-90,12112248)
      self:setMoodString(pTraveler_f, "angry")
      
      writeData("mensix_mining_facility_main:travelerConvoState", 0)
    	writeData("mensix_mining_facility_main:travelerConvoInProgress", 1) 
      createEvent(1, "mensix_mining_facility_main", "checkConvoActive", pTraveler_f, "")
  else     
      writeData("mensix_mining_facility_main:travelerConvoInProgress", 1)
      createEvent(1, "mensix_mining_facility_main", "checkConvoActive", pTraveler_f, "")   
  end
  
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 0) then
      spatialChat(pTraveler_f, "I cannot believe you took me to this flaming hunk of rock! What were you thinking? This world is a nightmare.")     
        writeData("mensix_mining_facility_main:travelerConvoState", 1)   
        createEvent(10000, "mensix_mining_facility_main", "checkConvoActive", pTraveler_m, "")           
  elseif (readData("mensix_mining_facility_main:travelerConvoState") == 1) then
      spatialChat(pTraveler_m, "Please, Clarrisa, don't start. I thought this would be a nice change of pace for us. You said you wanted to go some place full of adventure and mystery. With all of the discoveries here on Mustafar I thought you would love it.")     
        writeData("mensix_mining_facility_main:travelerConvoState", 2)   
        createEvent(10000, "mensix_mining_facility_main", "checkConvoActive", pTraveler_f, "")  
  elseif (readData("mensix_mining_facility_main:travelerConvoState") == 2) then
      spatialChat(pTraveler_f, "Adventure! When I said that, I meant we should go someplace nice like Naboo. You drag me half way across the galaxy to show me a burning rock! We are going to have a serious talk about your concept of adventure when we get home. Are you listening to me?")     
        writeData("mensix_mining_facility_main:travelerConvoState", 3)   
        createEvent(10000, "mensix_mining_facility_main", "checkConvoActive", pTraveler_m, "")  
  elseif (readData("mensix_mining_facility_main:travelerConvoState") == 3) then
      spatialChat(pTraveler_m, "Of course dear. I was just trying to be exciting and unexpected for you. We could have explored some of those ruins and maybe make a discovery of our own.")     
        writeData("mensix_mining_facility_main:travelerConvoState", 4)   
        createEvent(10000, "mensix_mining_facility_main", "checkConvoActive", pTraveler_f, "")  
  elseif (readData("mensix_mining_facility_main:travelerConvoState") == 4) then
      spatialChat(pTraveler_f, "Next time you want to be exciting...don't. I will not have any such foolishness like you digging around in the dirt like some grubby archeologist. What would people back home say? Now we are just going to wait until the next shuttle and never speak of this again. Is that understood?")     
        writeData("mensix_mining_facility_main:travelerConvoState", 5)   
        createEvent(12000, "mensix_mining_facility_main", "checkConvoActive", pTraveler_m, "")  
  elseif (readData("mensix_mining_facility_main:travelerConvoState") == 5) then
      spatialChat(pTraveler_m, "Yes, dear. Whatever you say.")     
        writeData("mensix_mining_facility_main:travelerConvoState", 0) 
        writeData("mensix_mining_facility_main:travelerConvoInProgress", 0)   
        createEvent(1, "mensix_mining_facility_main", "checkConvoActive", pTraveler_f, "")  
  end 
  
end

function mensix_mining_facility_main:checkConvoActive(pPlayer, pTraveler_f, pTraveler_m)
  if (readData("mensix_mining_facility_main:travelerConvoInProgress", 1) ) then
    createEvent(1, "mensix_mining_facility_main", "touristConvo", pPlayer, "")
  else   
    createEvent(600000, "mensix_mining_facility_main", "touristConvo", pTraveler_f, "")  
  end      
end

