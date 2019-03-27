local ObjectManager = require("managers.object.object_manager")


mensix_facility_region = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "mensix_facility_region"
}

registerScreenPlay("mensix_facility_region", true)

function mensix_facility_region:start()
  if (isZoneEnabled("mustafar")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function mensix_facility_region:spawnSceneObjects()
--Entry
--  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
 

end

function mensix_facility_region:spawnMobiles()

-- Mustafarian Lava Miners downhill from Mensix

  local pLavaMiner = spawnMobile("mustafar", "mustafarian_m_01",60,-2906.5,148.5,1371.8,127,0)
  self:setMoodString(pLavaMiner, "neutral")
  local pLavaMiner1 = spawnMobile("mustafar", "mustafarian_m_01",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pLavaMiner1, "idlewander")
  local pLavaMiner2 = spawnMobile("mustafar", "mustafarian_m_01",60,-2958.0,136.5,1348.7,-74,0)
  self:setMoodString(pLavaMiner2, "idlewander")
  local pLavaMiner3 = spawnMobile("mustafar", "mustafarian_m_01",60,-2954.9,136.9,1357.8,21,0)
  self:setMoodString(pLavaMiner3, "idlewander") 
  local pLavaMiner4 = spawnMobile("mustafar", "mustafarian_m_01",60,-3027.3,141.9,1305.4,-173,0)
  self:setMoodString(pLavaMiner4, "idlewander")
  local pLavaMiner5 = spawnMobile("mustafar", "mustafarian_m_01",60,-3041.6,144.5,1314.0,-59,0)
  self:setMoodString(pLavaMiner5, "idlewander")
  local pLavaMiner6 = spawnMobile("mustafar", "mustafarian_m_01",60,-3057.9,145.8,1329.5,-88,0)
  self:setMoodString(pLavaMiner6, "neutral")
  local pLavaMiner7 = spawnMobile("mustafar", "mustafarian_m_01",60,-3057.1,145.8,1330.1,-35,0)
  self:setMoodString(pLavaMiner7, "neutral")
  local pLavaMiner8 = spawnMobile("mustafar", "mustafarian_m_01",60,-3127.2,145.7,1339.1,5,0)
  self:setMoodString(pLavaMiner8, "idlewander")
  local pLavaMiner9 = spawnMobile("mustafar", "mustafarian_m_01",60,-3137.2,145.2,1326.4,-142,0)
  self:setMoodString(pLavaMiner9, "idlewander")
  local pLavaMiner10 = spawnMobile("mustafar", "mustafarian_m_01",60,-3128.6,145.8,1321.9,117,0)
  self:setMoodString(pLavaMiner10, "idlewander")
  
-- Center South Miner Camp
  local pLavaMiner11 = spawnMobile("mustafar", "mustafarian_m_01",60,-2868.7,103.6,-235.4,117,0)
  self:setMoodString(pLavaMiner11, "idlewander")
  local pLavaMiner12 = spawnMobile("mustafar", "mustafarian_m_01",60,-2873.2,103.6,-252.8,117,0)
  self:setMoodString(pLavaMiner12, "idlewander")
  local pLavaMiner13 = spawnMobile("mustafar", "mustafarian_m_01",60,-2889.6,103.6,-265.3,-117,0)
  self:setMoodString(pLavaMiner13, "idlewander")
  local pLavaMiner14 = spawnMobile("mustafar", "mustafarian_m_01",60,-2891.9,103.6,-240.7,-117,0)
  self:setMoodString(pLavaMiner14, "idlewander")  
  
end
