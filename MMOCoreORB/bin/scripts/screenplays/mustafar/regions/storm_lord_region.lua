local ObjectManager = require("managers.object.object_manager")


storm_lord_region = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "storm_lord_region"
}

registerScreenPlay("storm_lord_region", true)

function storm_lord_region:start()
  if (isZoneEnabled("mustafar")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function storm_lord_region:spawnSceneObjects()
--Entry
--  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
 

end

function storm_lord_region:spawnMobiles()

-- Canyon Approach Phantom Bandits near Escape Pod

  local pPhantom1 = spawnMobile("mustafar", "som_mustafarian_phantom_bandit",120,457,129.1,5771.8,127,0)
  self:setMoodString(pPhantom1, "idlewander")
  local pPhantom2 = spawnMobile("mustafar", "som_mustafarian_phantom_bandit",120,465,129.1,5796.8,127,0)
  self:setMoodString(pPhantom1, "idlewander")
  local pPhantom3 = spawnMobile("mustafar", "som_mustafarian_phantom_bandit",120,483,128.7,5771.9,127,0)
  self:setMoodString(pPhantom1, "idlewander")
  local pPhantom4 = spawnMobile("mustafar", "som_mustafarian_phantom_bandit",120,464,129.7,5719.0,127,0)
  self:setMoodString(pPhantom1, "idlewander")
  local pPhantom5 = spawnMobile("mustafar", "som_mustafarian_phantom_bandit",120,459,131.1,5692,127,0)
  self:setMoodString(pPhantom5, "idlewander")
end
