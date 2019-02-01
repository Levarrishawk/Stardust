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
	end
end

function mensix_mining_facility_main:spawnSceneObjects()

	-- Stardust Specific Droid:  Remove for other servers.
  spawnSceneObject("mustafar", "object/tangible/terminal/terminal_event_buffs.iff", -83.7, 10.3, 122, 12112227, math.rad(173) )
  
 
end

function mensix_mining_facility_main:spawnMobiles()

	
	local pTraveler_m = spawnMobile("mustafar", "traveler_m",0,-55.1,31.5,-120.3,-33,12112248)
	self:setMoodString(pTraveler_m, "npc_consoling")
	
  local pTraveler_f = spawnMobile("mustafar", "traveler_f",0,-56.7,31.5,-118.9,-90,12112248)
  self:setMoodString(pTraveler_f, "angry")
	
  createEvent(1, "mensix_mining_facility_main", "touristConvoStart", pTraveler_f, "")
end

function mensix_mining_facility_main:touristConvoStart(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_f)
  
  spatialChat(pTraveler_f, "I cannot believe you took me to this flaming hunk of rock! What were you thinking? This world is a nightmare.") -- I cannot believe you took me to this flaming hunk of rock! What were you thinking? This world is a nightmare.
  createEvent(10000, "mensix_mining_facility_main", "touristConvo1", pTraveler_m, "")
end

function mensix_mining_facility_main:touristConvo1(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_f)
  
  spatialChat(pTraveler_m, "Please, Clarrisa, don't start. I thought this would be a nice change of pace for us. You said you wanted to go some place full of adventure and mystery. With all of the discoveries here on Mustafar I thought you would love it.") -- Please, Clarrisa, don't start. I thought this would be a nice change of pace for us. You said you wanted to go some place full of adventure and mystery. With all of the discoveries here on Mustafar I thought you would love it.
  createEvent(10000, "mensix_mining_facility_main", "touristConvo2", pTraveler_f, "")
end

function mensix_mining_facility_main:touristConvo2(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_f)
  
  spatialChat(pTraveler_f, "Adventure! When I said that, I meant we should go someplace nice like Naboo. You drag me half way across the galaxy to show me a burning rock! We are going to have a serious talk about your concept of adventure when we get home. Are you listening to me?") -- Adventure! When I said that, I meant we should go someplace nice like Naboo. You drag me half way across the galaxy to show me a burning rock! We are going to have a serious talk about your concept of adventure when we get home. Are you listening to me?
  createEvent(10000, "mensix_mining_facility_main", "touristConvo3", pTraveler_m, "")
end

function mensix_mining_facility_main:touristConvo3(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_f)
  
  spatialChat(pTraveler_m, "Of course dear. I was just trying to be exciting and unexpected for you. We could have explored some of those ruins and maybe make a discovery of our own.") -- Of course dear. I was just trying to be exciting and unexpected for you. We could have explored some of those ruins and maybe make a discovery of our own.
  createEvent(10000, "mensix_mining_facility_main", "touristConvo4", pTraveler_f, "")
end

function mensix_mining_facility_main:touristConvo4(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_f)
  
  spatialChat(pTraveler_m, "Next time you want to be exciting...don't. I will not have any such foolishness like you digging around in the dirt like some grubby archeologist. What would people back home say? Now we are just going to wait until the next shuttle and never speak of this again. Is that understood?") -- Next time you want to be exciting...don't. I will not have any such foolishness like you digging around in the dirt like some grubby archeologist. What would people back home say? Now we are just going to wait until the next shuttle and never speak of this again. Is that understood?
  createEvent(12000, "mensix_mining_facility_main", "touristConvo5", pTraveler_m, "")
end

function mensix_mining_facility_main:touristConvo5(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_m)
  
  spatialChat(pTraveler_m, "Yes, dear. Whatever you say.") -- Yes, dear. Whatever you say.
  createEvent(600000, "mensix_mining_facility_main", "touristConvoStart", pTraveler_f, "")
end
