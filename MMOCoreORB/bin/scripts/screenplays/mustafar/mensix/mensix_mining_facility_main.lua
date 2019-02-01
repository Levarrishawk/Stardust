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
  
  spatialChat(pTraveler_f, "@must_mining_traveler:cant_believe")
  createEvent(10000, "mensix_mining_facility_main", "touristConvo1", pTraveler_m, "")
end

function mensix_mining_facility_main:touristConvo1(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_f)
  
  spatialChat(pTraveler_m, "@must_mining_traveler:do_not_start")
  createEvent(10000, "mensix_mining_facility_main", "touristConvo2", pTraveler_f, "")
end

function mensix_mining_facility_main:touristConvo2(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_f)
  
  spatialChat(pTraveler_f, "@must_mining_traveler:want_to_leave")
  createEvent(10000, "mensix_mining_facility_main", "touristConvo3", pTraveler_m, "")
end

function mensix_mining_facility_main:touristConvo3(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_f)
  
  spatialChat(pTraveler_m, "@must_mining_traveler:of_course_dear")
  createEvent(10000, "mensix_mining_facility_main", "touristConvo4", pTraveler_f, "")
end

function mensix_mining_facility_main:touristConvo4(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_f)
  
  spatialChat(pTraveler_m, "@must_mining_traveler:we_better")
  createEvent(12000, "mensix_mining_facility_main", "touristConvo5", pTraveler_m, "")
end

function mensix_mining_facility_main:touristConvo5(pTraveler_m, pTraveler_f)
  local husband = LuaCreatureObject(pTraveler_m)
  local wife = LuaCreatureObject(pTraveler_m)
  
  spatialChat(pTraveler_m, "@must_mining_traveler:yes_dear")
  createEvent(600000, "mensix_mining_facility_main", "touristConvoStart", pTraveler_f, "")
end
